unit utRichEdit;

      //////////////////////////////////////////////////////////
      //                      Démo RichEdit                   //
      //            Conçu sous Delphi 6 - Gilbert GEYER       //
      //                      Avril 2014                      //
      //////////////////////////////////////////////////////////

interface

uses Windows, Graphics, ComCtrls, StdCtrls, Forms, Dialogs, Messages, RichEdit, SysUtils, Types;

function MilliMtoTWips(MM: Single): Longint;
// Conversion MilliMètre -> Twips

function MilliMtoPixels(MM: Single): Longint;
// Conversion MilliMètre -> Pixels

function PixelsToMilliM(Pixels: Longint): Single;
// Conversion Pixels -> MilliMètre

function PixelsToTwips(Pixels: Longint): Longint;
// Conversion Pixels -> Twips

function GetMetrics(ACanvas: TCanvas; var tmHeight, HautMNA, HautMA, Ascent, Descent, ItalicAngle: integer): boolean;
// Récup de quelques métriques de Texte

procedure RE_ColorLine(RE: TRichEdit; ARow: Integer; AColor: TColor);
//< Colorier la ligne numéro ARow avec ARow = Index + 1

procedure RE_SetSelBackColor(RE: TRichEdit; BackColor: TColor);
//< Colorier la partie pré-sélectionnée de RE avec une BackColor :

type // Pour placer la partie pré-sélectionnée d'un RichEdit en Indice, Exposant, ou en position Normale
  TCarFormat = (CF_Exposant, CF_Indice, CF_Normal);
procedure RE_SetSelCharIndiceExposant(RE: TRichEdit; CharacterFormat: TCarFormat);

procedure RE_AddColoredLine(RE: TRichEdit; AText: string; FColor: TColor; FSize: byte; FStyle: TFontStyles; FName: ShortString; BackColor: TColor);
//< Ajouter une ligne de text colorée avec une Font spécifiée (FColor, FSize, FStyle, FName) et une BackColor

procedure RE_SetSelFont(RE: TRichEdit; Fonte: tFont);
//< Affecter à un texte sélectionné de la couleur ou une Fonte spécifiée avec ses attributs

procedure RE_ColoreCharacters(RE: TRichEdit; FromPos, Count: integer; AColor: TColor);
//< Colorier Count caractères à partir de From

procedure RE_ColorerMots(RE: TRichEdit; Mot: string; AColor: TColor; var Count: integer);
//< Colorier toutes les occurences de Mot avec AColor en ignorant les différences majuscules/minuscules.

type tPosMots = array of integer;
function RE_FindText(RE: TRichEdit; Mot: string; AColor: TColor; SelStart, SelLength: integer; Options: TSearchTypes): tPosMots; // LENT
// < Trouver toutes les positions des occurences de Mot en commençant à partir de SelStart + SelLength.
function RE_TrouverMots(RE: TRichEdit; Mot: string; AColor: TColor; SelStart, SelLength: integer; Options: TSearchTypes): tPosMots; // +RAPIDE
// < Trouver toutes les positions des occurences de Mot en commençant à partir de SelStart + SelLength.

procedure RE_ColorerLignesSi(RE: TRichEdit; Mot: ShortString; AColor: TColor; var Count: integer);
//< Colorier toutes les lignes qui contiennent Mot

function REorMemo_Row(cm: TCustomMemo): Longint;
//< Renvoie l'indice de la Ligne

function REorMemo_Col(cm: TCustomMemo): Longint;
//< Renvoie l'indice de la Colonne

procedure REorMemo_Col_Row(cm: TCustomMemo; var Col, Row: Longint);
//< Renvoie les indices de la Colonne et de la ligne

function RE_Mot_SousMouse(RE: TRichEdit; X, Y: Integer): string;
//< Renvoie le mot situé sous la souris

procedure RE_SetLineSpacing(RE: TRichEdit; lineSpacing: Longint);
// Modifier l'espacement entre lignes dans la partie sélectionnée

type tNumerotation = (nArabes, nRomains, nMinus, nMajus);
type tStyleNumerot = (snSeul, snPoint, sn1Par, sn2Par);

procedure RE_ShowBullets(RE: TRichEdit; wNumbering, wNumberingStyle: Longint);
//< Afficher les Bullets ou une numérotation dans la partie sélectionnée
//< Valeurs pour les paramètres wNumbering, wNumberingStyle : voir plus bas

function RE_GetFirstVisibleLine(RE: TRichEdit): Integer;
//< Renvoie l'indice de la première ligne visible

function RE_GetLastVisibleLine(RE: TRichEdit): Integer;
//< Renvoie l'indice de la dernière ligne visible

procedure REorMemo_ScrollTo(RE: tRichEdit; ToTop: boolean);
//< Rouler le texte vers :
//  - le début si ToTop = True,
//  - la fin si ToTop = False.

procedure LigneClickSurbrillance(RE: tRichEdit; Coul: tColor; Style: TFontStyles);
// Passer la ligne cliquée en surbrillance

implementation

function MilliMtoTWips(MM: Single): Longint;
// Conversion MilliMètre -> Twips : Un twip = 1/1440 pouce.
var ut: single;
begin
  ut := 25.4 / 1440; // mm/Twip = 0,0176
  Result := Round(MM / ut);
end;

function MilliMtoPixels(MM: Single): Longint;
// Conversion MilliMètre -> Pixels
var ppi: integer; up: single;
begin
  ppi := Screen.PixelsPerInch;
  up := 25.4 / ppi; // mm/pixel
  Result := Round(MM / up);
end;

function PixelsToMilliM(Pixels: Longint): Single;
// Conversion Pixels -> MilliMètre;
var ppi: integer;
begin
  ppi := Screen.PixelsPerInch; //96
  Result := Pixels * 25.4 / ppi; // mm
end;

function PixelsToTwips(Pixels: Longint): Longint;
// Conversion Pixels -> Twips
var
  ppi: integer; up, ut: single;
begin
  ppi := Screen.PixelsPerInch;
  up := 25.4 / ppi; // mm/pixel
  ut := 25.4 / 1440; // mm/Twip
  Result := round(Pixels * up / ut);
end;

function IsTrueTypeFont(FontName: string): boolean;
//       Détermine si une Police est TrueType ou non
var
  Metrics: TTextMetric;
  ACanvas: TCanvas;
begin ACanvas := TCanvas.Create;
  try
    ACanvas.Handle := CreateCompatibleDC(0);
    ACanvas.Font.Name := FontName;
    GetTextMetrics(ACanvas.Handle, Metrics);
    Result := (Metrics.tmPitchAndFamily and TMPF_TRUETYPE) <> 0;
  finally
    ACanvas.free;
  end;
end; // IsTrueTypeFont

function GetMetrics(ACanvas: TCanvas; var tmHeight, HautMNA, HautMA, Ascent, Descent, ItalicAngle: integer): boolean;
// Récup de quelques métriques de Texte
// http://msdn.microsoft.com/en-us/library/windows/desktop/dd162755%28v=vs.85%29.aspx : OUTLINETEXTMETRIC structure
// http://msdn.microsoft.com/en-us/library/windows/desktop/dd145132%28v=vs.85%29.aspx : TEXTMETRIC structure
var
  Metrics: TTextMetric;
  MetricsTT: TOutlineTextmetric;
begin Result := false;
  if IsTrueTypeFont(ACanvas.Font.Name) then begin
    if GetOutlineTextMetrics(ACanvas.Handle, SizeOf(MetricsTT), @MetricsTT) <> 0 then begin
      HautMNA := MetricsTT.otmAscent; //= Hauteur Majuscules Non Accentuées
      Descent := MetricsTT.otmDescent;
      ItalicAngle := MetricsTT.otmItalicAngle;
      HautMA := MetricsTT.otmTextMetrics.tmAscent; //= Hauteur Majuscules Accentuées (Accent inclus)
      tmHeight := MetricsTT.otmTextMetrics.tmHeight;
      Result := True;
    end;
  end else begin
    if GetTextMetrics(ACanvas.Handle, Metrics) then begin
      tmHeight := Metrics.tmHeight;
      Ascent := Metrics.tmAscent;
      Descent := Metrics.tmDescent;
      ItalicAngle := 0; // par défaut
      Result := True; showmessage('Pas TrueType')
    end
  end;
end; // GetMetrics

procedure RE_ColorLine(RE: TRichEdit; ARow: Integer; AColor: TColor);
// Colorier la ligne numéro ARow avec ARow = Index + 1
begin
  with RE do
  begin
    SelStart := SendMessage(Handle, EM_LINEINDEX, ARow - 1, 0);
    SelLength := Length(Lines[ARow - 1]);
    SelAttributes.Color := AColor;
    SelLength := 0;
  end;
end;

procedure RE_SetSelBackColor(RE: TRichEdit; BackColor: TColor);
// Colorier la partie pré-sélectionnée de RE avec une BackColor :
var
  Format: CHARFORMAT2; // RichEdit dans le uses
begin
  FillChar(Format, SizeOf(Format), 0);
  with Format do
  begin
    cbSize := SizeOf(Format);
    dwMask := CFM_BACKCOLOR;
    crBackColor := BackColor;
    RE.Perform(EM_SETCHARFORMAT, SCF_SELECTION, Longint(@Format));
  end;
  RE.SelLength := 0;
end;

procedure RE_SetSelCharIndiceExposant(RE: TRichEdit; CharacterFormat: TCarFormat);
var
  // La structure CHARFORMAT accueille les infos de formattage des caractères du RichEdit
  Format: TCharFormat;
  HF: integer;
begin
  HF := RE.SelAttributes.Height; // hauteur de la fonte exprimée en pixels
  FillChar(Format, SizeOf(Format), 0);
  with Format do
  begin
    cbSize := SizeOf(Format);
    dwMask := CFM_OFFSET;
    // Offest des caractères, en twips, depuis la baseline ( Un twip vaut 1/1440 pouce = 17,639 µm) :
    // - si > 0 alors caractères en Exposant
    // - si < 0 alors caractères en Indice
    // - si = 0 alors caractères en Normal :
    case CharacterFormat of
      CF_Exposant: yOffset := round(40 * HF / 13);
      CF_Indice: yOffset := -round(40 * HF / 13);
      CF_Normal: yOffset := 0;
    end;
  end;
  // Le message EM_SETCHARFORMAT avec SCF_SELECTION place le formattage des caractères pré-sélectionnés dans le RichEdit
  RE.Perform(EM_SETCHARFORMAT, SCF_SELECTION, Longint(@Format));
end;

procedure RE_AddColoredLine(RE: TRichEdit; AText: string; FColor: TColor; FSize: byte; FStyle: TFontStyles; FName: ShortString; BackColor: TColor);
// Ajouter une ligne de text colorée avec une Font spécifiée (FColor, FSize, FStyle, FName) et une BackColor
begin
  with RE do
  begin
    SelStart := Length(Text);
    SelAttributes.Color := FColor;
    SelAttributes.Size := FSize;
    SelAttributes.Name := FName;
    SelAttributes.Style := FStyle;
    Lines.Add(AText);
    upDate;
  end;
  // Pour BackColor :
  RE.SelStart := Length(RE.Text) - Length(AText) - 2;
  RE.SelLength := Length(AText);
  RE_SetSelBackColor(RE, BackColor);
end;

procedure RE_SetSelFont(RE: TRichEdit; Fonte: tFont);
// Affecter à un texte sélectionné de la couleur ou une Fonte spécifiée avec ses attributs
begin
  with RE do
  begin
    SelAttributes.Color := Fonte.Color;
    SelAttributes.Size := Fonte.Size;
    SelAttributes.Name := Fonte.Name;
    SelAttributes.Style := Fonte.Style;
  end;
end;

procedure RE_ColoreCharacters(RE: TRichEdit; FromPos, Count: integer; AColor: TColor);
// Colorier Count caractères à partir de From
begin
  with RE do
  begin
    SelStart := FromPos; SelLength := Count; SelAttributes.Color := AColor; SelLength := 0;
  end;
end;

procedure RE_ColorerMots(RE: TRichEdit; Mot: string; AColor: TColor; var Count: integer);
// < Colorier toutes les occurences de Mot avec AColor en ignorant les différences majuscules/minuscules.
// 4 secondes 87 ms pour 4784 mots dans Zola1Mo.txt de 1 Mo
label Recomm;
var
  pCherche, pTexte, pCour: PChar;
begin
  Count := 0;
  with RE do
  begin
    pCherche := PChar(UpperCase(Mot));
    pTexte := PChar(UpperCase(RE.text));
    SetFocus;

    Recomm:
    // On commence à la position du Caret :
    pCour := pTexte + SelStart + SelLength;
    // Recherche :
    pCour := StrPos(pCour, pCherche);
    if pCour <> nil then
    begin
      inc(Count);
      SelStart := pCour - pTexte;
      SelLength := Length(Mot);
      SelAttributes.Color := AColor;
      goto Recomm;
    end;
    SelLength := 0;
  end;
end;

function RE_FindText(RE: TRichEdit; Mot: string; AColor: TColor; SelStart, SelLength: integer; Options: TSearchTypes): tPosMots; //Abandonnée car 5,2 fois plus lente que la version suivante en service
label Recomm;
var
  FoundAt, nbTrouve, LM, LT, DL, LR: LongInt;
  StartPos, ToEnd: Integer;
begin
  nbTrouve := 0;
  SetLength(Result, nbTrouve);
  LM := Length(Mot);
  if LM = 0 then EXIT;
  LT := length(RE.text);
  DL := 250; LR := 1 + RE.Lines.count shr 1;
  SetLength(Result, LR);

  with RE do
  begin
    // Commence la recherche après la sélection en cours s'il y en a une sinon, commence au début du texte
    if SelLength <> 0
      then StartPos := SelStart + SelLength
    else StartPos := 0;

    Lines.BeginUpDate;
    Recomm:
    ToEnd := Length(Text) - StartPos; // ToEnd indique la longueur entre StartPos et la fin du texte du RichEdit

    FoundAt := FindText(Mot, StartPos, ToEnd, [stMatchCase]);
    if FoundAt <> -1 then
    begin
      inc(nbTrouve);
      SetFocus;
      SelStart := FoundAt;
      SelLength := Length(Mot);
      SelAttributes.Color := AColor;
      StartPos := FoundAt + Length(Mot);
      if nbTrouve > LR then begin LR := LR + DL; SetLength(Result, LR); end;
      SetLength(Result, nbTrouve);
      Result[nbTrouve - 1] := SelStart;
      if SelStart + LM < LT - 2 then goto Recomm;
    end;
    SelLength := 0;
    Lines.EndUpDate;
  end;
  SetLength(Result, nbTrouve);
end;

function RE_TrouverMots(RE: TRichEdit; Mot: string; AColor: TColor; SelStart, SelLength: integer; Options: TSearchTypes): tPosMots;
// < Trouver toutes les positions des occurences de Mot en commençant à partir de SelStart + SelLength.
label Recomm;
const ceOk: set of Char = [#0..#47, #58..#64, #91..#96, #123..#126];
var
  pMot, pTexte, pCour, pe1, pe2: PChar; nbTrouve, LM, LT, LR, DL: integer;

  function BMHStrPos(const pTex, pMot: PChar): PChar;
  // StrPos à la façon Boyer-Moore-Horspool
  var
    it, im: Integer; // Indexes sur Texte et Mot
    LC: Integer; // Longueur de pTex
    iav: Integer; // Indexe d'avancement
    pit, pim: PChar; // Indexes PChar
    ok: boolean;
  begin
    Result := nil; LC := Length(pTex);
    iav := LM;
    while iav <= LC do begin
      it := iav; im := LM; ok := true;
      while ok do begin
        pit := pTex + it - 1;
        pim := pMot + im - 1;
        if pit^ = pim^ then begin
          dec(im); dec(it);
        end else ok := false;
        if im = 0 then begin RESULT := pit; EXIT; end;
      end; // while ok ...
      inc(iav, LM - im + 1);
    end; // while iav <= LC
  end;

begin
  nbTrouve := 0;
  SetLength(Result, nbTrouve);
  LM := Length(Mot);
  if LM = 0 then EXIT;
  LT := length(RE.text);
  DL := 250; LR := 1 + RE.Lines.count shr 1;
  SetLength(Result, LR);

  if stMatchCase in Options then begin // Tenir compte des minuscules/majuscules,
    pMot := PChar(Mot);
    pTexte := PChar(RE.text);
  end else begin // Ignorer les différences
    pMot := PChar(UpperCase(Mot));
    pTexte := PChar(UpperCase(RE.text));
  end;

  with RE do
  begin
    SetFocus;
    Lines.BeginUpdate;

    Recomm:
    // On commence à la position du Caret :
    pCour := pTexte + SelStart + SelLength;

    // Recherche :
    pCour := BMHStrPos(pCour, pMot);

    if pCour <> nil then
    begin
      if stWholeWord in Options then begin // Vérifier si mot entier
        pe1 := pCour; dec(pe1); pe2 := pCour; inc(pe2, LM);
        if (not (pe1^ in ceOk)) or (not (pe2^ in ceOk)) then begin
          SelStart := pCour - pTexte;
          SelLength := LM; goto Recomm;
        end;
      end;

      inc(nbTrouve);
      SelStart := pCour - pTexte;
      SelLength := LM;
      SelAttributes.Color := AColor; // < Trouvé 5162 sans colorier en 2 sec 621 ms : 1,47 fois plus rapide
      if nbTrouve > LR then begin LR := LR + DL; SetLength(Result, LR); end;
      SetLength(Result, nbTrouve);
      Result[nbTrouve - 1] := SelStart;
      if SelStart + LM < LT - 2 then goto Recomm;
    end;
    Lines.EndUpDate;
  end;
  SetLength(Result, nbTrouve);
end;

procedure RE_ColorerLignesSi(RE: TRichEdit; Mot: ShortString; AColor: TColor; var Count: integer);
var i: Integer;
begin
  Count := 0;
  for i := 0 to RE.Lines.Count - 1 do begin
    if pos(Mot, RE.Lines[i]) > 0 then begin RE_ColorLine(RE, i + 1, AColor); inc(count); end;
  end;
end;

function REorMemo_Row(cm: TCustomMemo): Longint;
begin
  Result := SendMessage(cm.Handle, EM_LINEFROMCHAR, cm.SelStart, 0);
end;

function REorMemo_Col(cm: TCustomMemo): Longint;
begin
  Result := cm.SelStart - SendMessage(cm.Handle, EM_LINEINDEX, SendMessage(cm.Handle,
    EM_LINEFROMCHAR, cm.SelStart, 0), 0);
end;

procedure REorMemo_Col_Row(cm: TCustomMemo; var Col, Row: Longint);
begin
  with cm.CaretPos do begin Col := X; Row := Y; end;
end;

function RE_Mot_SousMouse(RE: TRichEdit; X, Y: Integer): string;
// Renvoie le mot situé sous la souris
var
  iCharIndex, iLineIndex, iCharOffset, i, j: Integer;
  Pt: TPoint;
  s: string;
begin
  with RE do
  begin
    Pt := Point(X, Y);
    // Indexe du caractère sous le curseur :
    iCharIndex := Perform(Messages.EM_CHARFROMPOS, 0, Integer(@Pt));
    if iCharIndex < 0 then EXIT;
    // Indexe de la ligne :
    iLineIndex := Perform(EM_EXLINEFROMCHAR, 0, iCharIndex);
    iCharOffset := iCharIndex - Perform(EM_LINEINDEX, iLineIndex, 0);
    if Lines.Count - 1 < iLineIndex then Exit;
    // Ligne courante dans S :
    s := Lines[iLineIndex];
    if s = '' then EXIT;
    // Recherche du début du mot :
    i := iCharOffset + 1;
    while (i > 0) and (s[i] <> ' ') do Dec(i);
    // Recherche de la fin du mot :
    j := iCharOffset + 1;
    while (j <= Length(s)) and (s[j] <> ' ') do Inc(j);
    // Récup du mot :
    Result := Copy(s, i, j - i);
  end;
end;

procedure RE_SetLineSpacing(RE: TRichEdit; LineSpacing: Longint);
// Modifier l'espacement entre lignes dans la partie sélectionnée
// LineSpacing en Twips : Un twip vaut 1/1440 pouce = 1/566,93 cm = 17,639 µm
var
  pf2: ParaFormat2; //PARAFORMAT2 structure voir http://msdn.microsoft.com/en-us/library/bb787942.aspx
begin
  FillChar(pf2, SizeOf(pf2), 0);
  pf2.cbSize := SizeOf(PARAFORMAT2);
  pf2.dwMask := PFM_LINESPACING;
  pf2.bLineSpacingRule := 5; //4 permettrait de serrer les lignes en déçà de la normale
  pf2.dyLineSpacing := LineSpacing;
  SendMessage(RE.Handle, EM_SETPARAFORMAT, 0, Longint(@pf2));
end;

procedure RE_ShowBullets(RE: TRichEdit; wNumbering, wNumberingStyle: Longint);
// Afficher les Bullets ou une numérotation dans la partie sélectionnée
var
  pf2: TParaformat2;
  HO: integer;
begin
  FillChar(pf2, SizeOf(pf2), 0);
  pf2.cbSize := SizeOf(pf2);
  pf2.dwMask := PFM_NUMBERING or PFM_NUMBERINGSTART or PFM_NUMBERINGSTYLE or
    PFM_NUMBERINGTAB;
  pf2.wNumbering := wNumbering; //2;
  // Valeurs pour wNumbering =
  // 0 : ni numérotation ni bullets
  // 1 : PFN_BULLET : avec bullet caractères
  // 2 : PFN_ARABIC : Nombres Arabes : 1, 2, 3, ...
  // 3 : PFN_LCLETTER : Lettres minuscules : a, b, c, ...
  // 4 : PFN_UCLETTER : Lettres majuscules :A, B, C, ...
  // 5 : PFN_LCROMAN : Nombres Romains minuscules : i, ii, iii, ...
  // 6 : PFN_UCROMAN : Nombres Romains majuscules : I, II, III, ...
  // 7 : Séquence de caractères commençant avec le caractère Unicode spécifié par wNumberingStart
  pf2.wNumberingStart := 1;
  //  Valeur de départ pour la numérotation
  pf2.wNumberingStyle := wNumberingStyle; //$200;
  // Styles pour la numérotation :
  // 0    : Parenthèse à droite du nombre :  1)
  // $100 : Nombre entre parenthèses  :  (1)
  // $200 : Point à droite du nombre  :  1.
  // $300 : Nombre seul                :  1
  HO := RE.SelAttributes.Height; // hauteur de la fonte exprimée en pixels
  pf2.wNumberingTab := PixelsToTwips(HO);
  // wNumberingTab : Espace minima entre le Nombre et le début du texte du paragraph text, en twips, pris ici égal à la hauteur de la fonte
  RE.Perform(EM_SETPARAFORMAT, 0, lParam(@pf2));
  RE.Paragraph.LeftIndent := HO; // pris ici égal à la hauteur de la fonte
end;

function RE_GetFirstVisibleLine(RE: TRichEdit): Integer;
//< Renvoie l'indice de la première ligne visible
begin
  Result := RE.Perform(EM_GETFIRSTVISIBLELINE, 0, 0);
end;

function RE_GetLastVisibleLine(RE: TRichEdit): Integer;
//< Renvoie l'indice de la dernière ligne visible
const
  EM_EXLINEFROMCHAR = WM_USER + 54;
var
  r: TRect;
  i: Integer;
begin
  // Le message EM_GETRECT renvoie le rectangle d'un contrôle d'édition
  RE.Perform(EM_GETRECT, 0, Longint(@r));
  r.Left := r.Left + 1;
  r.Top := r.Bottom - 2;
  // Le message EM_CHARFROMPOS renvoie l'indice du caractère situé dans le coin du rectangle
  i := RE.Perform(EM_CHARFROMPOS, 0, Integer(@r.topleft));
  // Le message EM_EXLINEFROMCHAR renvoie la ligne
  Result := RE.Perform(EM_EXLINEFROMCHAR, 0, i);
end;

procedure REorMemo_ScrollTo(RE: tRichEdit; ToTop: boolean);
// Rouler le texte vers :
// - le début si ToTop = True,
// - la fin si ToTop = False.
begin
  with RE do
  begin
    SetFocus;
    case ToTop of
      True: Perform(WM_VSCROLL, SB_TOP, 0);
      False: Perform(WM_VSCROLL, SB_BOTTOM, 0);
    end;
  end;
end;

var
  FAncienSelStart: Integer;
  FAncienSelLength: Integer;

procedure LigneClickSurbrillance(RE: tRichEdit; Coul: tColor; Style: TFontStyles);
var
  LigneCliquee, SauvegardeSelStart: integer;
begin
  with RE do begin
    SauvegardeSelStart := SelStart;

    // Remise à zéro des attributs de la ligne précédente
    SelStart := FAncienSelStart;
    SelLength := FAncienSelLength;
    SelAttributes.Color := clBlack;
    SelAttributes.Style := [];

    LigneCliquee := Perform(EM_LINEFROMCHAR, SauvegardeSelStart, 0);

    // Sélection de la ligne cliquée
    SelStart := Perform(EM_LINEINDEX, LigneCliquee, 0);
    SelLength := Length(Lines.Strings[LigneCliquee]);

    // Sauvegarde des valeurs de la ligne sélectionnée
    FAncienSelStart := SelStart;
    FAncienSelLength := SelLength;

    // Attributs de la ligne à mettre en surbrillance
    SelAttributes.Color := Coul;
    SelAttributes.Style := Style;
    SelLength := 0;
  end;
end;

end. // ////////////////////////////////////////////////////////////////////////

