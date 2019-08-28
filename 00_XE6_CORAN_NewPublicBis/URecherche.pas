unit URecherche;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DBCtrls, ComCtrls, ExtCtrls, jpeg,
  Menus, Vcl.Imaging.pngimage;

type
   PString = ^String;


type
 TRGBArray = array[0..32767] of TRGBTriple;
 PRGBArray = ^TRGBArray;

  TFormRecherche = class(TForm)
    Panel1: TPanel;
    ButtonRecherche: TButton;
    EditTexte: TDBLookupComboBox;
    eTexteLibre: TEdit;
    FermerBtn: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label8: TLabel;
    Label9: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    RichEditSearch: TRichEdit;
    StatusBar1: TStatusBar;
    //
    procedure ButtonRechercheClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FermerBtnClick(Sender: TObject);
    procedure FindText(FindStr: string);
    procedure Highlight(Str: string);
    procedure HighlightBest(RichEdit : TRichEdit; sText: string);
    procedure Panel1Click(Sender: TObject);
   //
  private
    { Déclarations privées }
    procedure WMNCHitTest(var M: TWMNCHitTest); message wm_NCHitTest;
  public
    { Déclarations publiques }
  end;

var
  FormRecherche: TFormRecherche;
  nCol,iLine, iSora, iAia : Integer;
  nOcc         : Integer;                           // Nombre Occurrences
  TextRech : String;
  SpecialChar:array [1..3]of char = ('-','.','_');  // you can add any additional symbols


implementation


uses ShellAPI, MyFuncUtils, ULecCoran;

{$R *.dfm}
{$T-}

{En mode $T- le type résultant d'une utilisation de l'opérateur @ est toujours
        un pointeur non typé compatible avec tous les types de pointeurs.
En mode $T+, lorsque @ est appliqué à une référence de variable,
       le type du résultat est ^T, où T est uniquement compatible avec
       les pointeurs du type de la variable.  }


// Pour pouvoir déplacer la form dans la fenêtre
procedure TFormRecherche.WMNCHitTest(var M: TWMNCHitTest);
begin
  inherited;                    { call the inherited message handler }
  if  M.Result = htClient then  { is the click in the client area?   }
    M.Result := htCaption;      { if so, make Windows think it's     }
                                { on the caption bar.                }
end;






//
// Recherche dans le texte du Coran de la base "QURAN"
//
procedure TFormRecherche.ButtonRechercheClick(Sender: TObject);
var
  strReqString, strReqString1, TexteAia, NomSora : String;
  TextRech     : WideString;
  nOcc, nAia, numSora, numAia : Integer;

   Begin
    nOcc := 0;
    nAia := 0;
    //
    FormLecture.QuranCDS.First;
    RichEditSearch.Clear;
    FormLecture.SoraCDS.IndexFieldNames := 'SORANO';
    //
    // Si Recherche
    //
    // si la zone de texte libre est non vide alors prendre
    // le texte libre comme texte de recherche
    //
    if (eTexteLibre.Text = '') AND (EditTexte.Text = '') Then
       Begin
         Showmessage(' أدخل كلمة للبحث أو اختر كلمة من القاموس !');
         eTexteLibre.SetFocus;
       End
    else
      Begin
        if (EditTexte.Text <> '') Then
           TextRech := TRIM(EditTexte.Text);                     // Recherche par selection d'un Mot du dictionnaire

        if (eTexteLibre.Text <> '') Then
           TextRech := TRIM(eTexteLibre.Text);
        end;
     //
     While  Not (FormLecture.QuranCDS.Eof) Do                   // Boucle pour cumuler le nombre d'occurrences
      Begin
       numSora  := FormLecture.QuranCDS.FieldByName('SORANO').AsInteger;
       numAia   := FormLecture.QuranCDS.FieldByName('AIANO').AsInteger;

       if FormLecture.Moshaf = 'Tanzil' Then
          TexteAia := FormLecture.QuranCDS.FieldByName('AIATANZIL').AsString
       else
          TexteAia := FormLecture.QuranCDS.FieldByName('AIAMADINA').AsString;

       If FormLecture.SoraCDS.FindKey([numSora])  Then
          NomSora  := FormLecture.SoraCDS.FieldByName('NAME').AsString;

       //
       If StrCount(TexteAia, TextRech) <> 0 Then
          Begin
            nAia := nAia + 1;
            nOcc := nOcc + StrCount(TexteAia, TextRech);      // Fonction qui compte le nombre d'occurrences
            RichEditSearch.Lines.Add(IntToStr(nAia) + ' : ' + 'سورة' + '-' + NomSora + '-' + IntToStr(numSora) +'  '+ 'الآية' + '-' + IntToStr(numAia) +'  '+ TexteAia);
          End;
       FormLecture.QuranCDS.Next;
       //
      End;
     //
     StatusBar1.Panels[0].Text := 'عدد تكرار كلمة < ' + TextRech + ' > :' + IntToStr(nOcc);
     StatusBar1.Panels[1].Text  :=  'عدد الآيات التي ذكرت فيها الكلمة : ' + IntToStr(nAia);
     //
     Application.ProcessMessages;
    //
    //***************************************************************************************************
    //
    //Highlight(TextRech);
    HighlightBest(RichEditSearch, TextRech);
End;







//*******************************  DEBUT HighlightBest ***************************************************
procedure TFormRecherche.HighlightBest(RichEdit : TRichEdit; sText: string);
var
  FoundAt, iCurrLineNo, StartPos, ToEnd : integer;

begin
  StartPos := 0;
  ToEnd := Length(RichEdit.Text);
  //
  FoundAt := RichEdit.FindText(sText, StartPos, ToEnd, []);
  //
  While FoundAt <>-1 Do
   begin
      RichEdit.SetFocus;
      RichEdit.SelStart := FoundAt;
      RichEdit.SelLength := Length(sText);
      iCurrLineNo := RichEdit.Perform(EM_LINEFROMCHAR, RichEdit.SelStart, 0);
      RichEdit.Perform(EM_LINESCROLL, 0, RichEdit.Lines.Count);
      RichEdit.Perform(EM_LINESCROLL, 0, iCurrLineNo);
      RichEdit.SelStart := FoundAt;
      RichEdit.SelLength := Length(sText);
      RichEdit.SelAttributes.Color := clRed;
      //
      FoundAt := RichEdit.FindText(sText, FoundAt + length(sText),ToEnd, []);
   end;
end;
procedure TFormRecherche.Panel1Click(Sender: TObject);
begin

end;

//*******************************  FIN HighlightBest ***************************************************





//*******************************  DEBUT Highlight *****************************************************
procedure TFormRecherche.FindText(FindStr: string);
var X, ToEnd : integer;
    oldCursor : TCursor;
begin
   oldCursor := Screen.Cursor;
   Screen.Cursor := crHourglass;
   with RichEditSearch do
   begin
     X := 0;
     ToEnd := length(Text) ;
     X := FindText(FindStr, X, ToEnd, []) ;
     while X <> -1 do
     begin
     SetFocus;
     SelStart := X;
     SelLength := length(FindStr) ;
     SelAttributes.Color := clRed;
     X := FindText(FindStr,X + length(FindStr),ToEnd, []);
     end;
   end;
   Screen.Cursor := oldCursor;
end;

function SpecialSymbol(Ch:Char):Boolean;
begin
  if  Ch in ['a'..'z','A'..'Z'] then
    Result := False
  else
    Result := True;
end;


procedure TFormRecherche.Highlight(Str: string);
var
   i, j:integer;

begin
   //
   FindText(Str);
   //
   for i:= 1 to length(Str) do
     begin
       if SpecialSymbol(Str[i]) then
         begin
           for j:= 1 to high(SpecialChar) do
             begin
               Str[i] := SpecialChar[j];
               FindText(Str);
             end;
         end;
     end;
end;
//*******************************  FIN Highlight *****************************************************







Procedure TFormRecherche.FermerBtnClick(Sender: TObject);
begin
  Close;
end;






procedure TFormRecherche.FormActivate(Sender: TObject);
Var
  P: TPoint;        // Point de positionnement sut l'écran, de coordonnées (X, Y)
begin
  // Choix de la langue arabe
  LoadKeyboardLayout('00000401', KLF_ACTIVATE);
  Application.BiDiKeyboard := '00000401';
  //
  EditTexte.ListSource := FormLecture.DataSource3;

  // Positionnement de la form en supperposition avec "ImageFatiha"
  P := FormLecture.ImageFatiha.ClientOrigin;
  Left := P.X ;
  Top  := P.Y ;
end;




procedure TFormRecherche.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Choix de la langue Française
  LoadKeyboardLayout('0000040c', KLF_ACTIVATE);
  Application.BiDiKeyboard := '0000040c';
end;


end.
