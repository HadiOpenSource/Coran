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
    Image1: TImage;
    StatusBar1: TStatusBar;
    Label7: TLabel;
    DBMemoAYA: TDBMemo;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    FermerBtn: TButton;
    BtnEnregistrer: TButton;
    ButtonRecherche: TButton;
    Label4: TLabel;
    DBGridRechTexte: TDBGrid;
    Button1: TButton;
    Image2: TImage;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    EditTexte: TDBLookupComboBox;
    eTexteLibre: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Image3: TImage;
    //
    procedure ButtonRechercheClick(Sender: TObject);
    procedure BtnEnregistrerClick(Sender: TObject);
    procedure FermerBtnClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DBGridRechTexteCellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
    procedure WMNCHitTest(var M: TWMNCHitTest); message wm_NCHitTest;
  public
    { Déclarations publiques }
  end;

var
  FormRecherche: TFormRecherche;
  nCol,iLine, iSora, iAia : Integer;
  nOcc         : Integer;                 // Nombre Occurrences
  TextRech : String;
  
implementation

uses UDMZadM, ShellAPI, MyFuncUtils;

{$R *.dfm}
{$T-}
{En mode $T- le type résultant d'une utilisation de l'opérateur @ est toujours
        un pointeur non typé compatible avec tous les types de pointeurs.
En mode $T+, lorsque @ est appliqué à une référence de variable,
       le type du résultat est ^T, où T est uniquement compatible avec
       les pointeurs du type de la variable.  }


// pour pouvoir déplacer la form dans la fenêtre
procedure TFormRecherche.WMNCHitTest(var M: TWMNCHitTest);
begin
  inherited;                    { call the inherited message handler }
  if  M.Result = htClient then  { is the click in the client area?   }
    M.Result := htCaption;      { if so, make Windows think it's     }
                                { on the caption bar.                }
end;




// Recherche dans le texte du Coran de la base "QURAN"
//
procedure TFormRecherche.ButtonRechercheClick(Sender: TObject);
var
  strReqString, strReqString1, TexteAia : String;
  TextRech     : WideString;
  PTextRech    : PString;            // Pointeur

   Begin
    //
    DMZadM.FDQueryRMTHist.Open;
    DMZadM.FDTabCoran.Open;
    DMZadM.FDQueryCoran.Open;
    DMZadM.FDTabCoran.First;
    nOcc := 0;
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
       if (EditTexte.Text <> '') Then
          //
          //***************************************************************************************************
          //
          TextRech := TRIM(EditTexte.Text)                     // Recherche par selection d'un Mot du dictionnaire
          //
          //***************************************************************************************************
       else
          //
          //***************************************************************************************************
          //
          TextRech := TRIM(eTexteLibre.Text);                 // Recherche par Texte libre
          PTextRech := @TextRech;                             // Pointeur : "PTextRech" est de type pointeur qui
                                                              //        pointe sur le contenu de "TextRech"
          //
          //********************************* DEBUT FONCTION STOCKEE ************************************************
          //
         { DMZadM.FDQueryCoran.Close;
          DMZadM.FDQueryCoran.Sql.Clear;
          //
          //strReqString1 := 'SELECT * From Quran ';
          strReqString := 'SELECT SUM(SearchTextCount(AIATANZIL, :TextSearch)) From quran';
          //----strReqString := 'SELECT * FROM Quran WHERE CONTAINS (AIATANZIL, :TextSearch) Order By SORANO';
          //
          DMZadM.FDQueryCoran.Params.Add.Name := 'TextSearch';                             // création du paramètre
          DMZadM.FDQueryCoran.Params.ParamByname('TextSearch').AsWideString := TextRech;   // initialisation du paramètre
          DMZadM.FDQueryCoran.Sql.Add(strReqString);
          DMZadM.FDQueryCoran.Open;
          //
          StatusBar1.Panels[0].Text := 'عدد تكرار كلمة < ' + TextRech + ' > :' + IntToStr(DMZadM.FDQueryCoran.RecordCount); }
          //
          //********************************* FIN FONCTION STOCKEE ***************************************************





          //***************************************** Recherche par FONCTION STOCKEE *********************************
          // Ne permet pas de donner le nombre d'occurrences
          // Donner seulement le nombre des AYATE ou le texte recherché existe
          //
         { DMZadM.FDQueryCoran.Close;
          DMZadM.FDQueryCoran.Sql.Clear;
          //
          strReqString := 'SELECT * FROM quran WHERE SearchTextCount (AIATANZIL, :TextSearch) Order By LINENO'; //OK-2
          //
          DMZadM.FDQueryCoran.Params.Add.Name := 'TextSearch';                             // création du paramètre
          DMZadM.FDQueryCoran.Params.ParamByname('TextSearch').AsWideString := TextRech;   // initialisation du paramètre
          DMZadM.FDQueryCoran.Sql.Add(strReqString);
          DMZadM.FDQueryCoran.Open;
          //
          DMZadM.FDQueryCoran.Last;
          //
          if  (DMZadM.FDQueryCoran.RecordCount  = 0) Then
             Begin
               Showmessage('العبارة موضع البحث غير موجودة !');
             End
          Else
            Begin
              StatusBar1.Panels[0].Text := 'عدد تكرار كلمة < ' + TextRech + ' > :' + IntToStr(DMZadM.FDQueryCoran.RecNo);
              StatusBar1.Panels[1].Text  :=  'عدد الآيات التي ذكرت فيها الكلمة : ' + IntToStr(DMZadM.FDQueryCoran.RecordCount);
            End;
           }
          //***************************************** FIN Recherche par FONCTION STOCKEE ******************************





          //******************************** TFDQuery en utilisant LIKE *****************************************
          //
          // La recherche par TFDQuery en utilisant LIKE ne donne pas le nombre d'occurrences
          // Mais signale la présence du mot dans la chaîne de caractères une seule fois
          // Dans le cas des ayate, il donne le nombre des ayate où le mot clé existe
          // mais pas le nombre de mots clés existants.
          //
          DMZadM.FDQueryCoran.Close;
          DMZadM.FDQueryCoran.Sql.Clear;
          strReqString := 'SELECT * FROM Quran where AIATANZIL like  ''%' + TextRech + '%''';
          //
          DMZadM.FDQueryCoran.Sql.Add(strReqString);
          DMZadM.FDQueryCoran.Open;
          //
          if  (DMZadM.FDQueryCoran.RecordCount  = 0) Then
             Begin
               Showmessage('العبارة موضع البحث غير موجودة !');
             End
          Else
            Begin
               //
               While  Not(DMZadM.FDQueryCoran.Eof) Do                   // Boucle pour cumuler le nombre d'occurrences
                Begin
                 TexteAia := DMZadM.FDQueryCoran.FieldByName('AIATANZIL').AsString;
                 If StrCount(TexteAia, TextRech) <> 0 Then
                    Begin
                      nOcc := nOcc + StrCount(TexteAia, TextRech);      // Fonction qui compte le nombre d'occurrences
                    End;

                 DMZadM.FDQueryCoran.Next;
                 //
                End;
               //
               StatusBar1.Panels[0].Text := 'عدد تكرار كلمة < ' + TextRech + ' > :' + IntToStr(nOcc);
               StatusBar1.Panels[1].Text  :=  'عدد الآيات التي ذكرت فيها الكلمة : ' + IntToStr(DMZadM.FDQueryCoran.RecordCount);
            End;
            //******************************** FIN TFDQuery en utilisant LIKE et une FONCTION *******************




            //***************************************************************************************************
            // Recherche en parcourant toutes la base "Quran" et en faisant la somme
            // des nombres de mots recherchés dans chaque "AIA"
            // Remarque : Cette méthode donne un résultat juste mais lourde et non performante
            //***************************************************************************************************
            //
            {While  Not(DMZadM.FDTabCoran.Eof) Do
               Begin
                 TexteAia := DMZadM.FDTabCoran.FieldByName('AIATANZIL').AsString;
                 If StrCount(TexteAia, TextRech) <> 0 Then
                    Begin
                      nOcc := nOcc + StrCount(TexteAia, TextRech);
                    End;

                 DMZadM.FDTabCoran.Next;
                 //
               End;
               //
               DMZadM.FDQueryCoran.Open;
               StatusBar1.Panels[0].Text := 'عدد تكرار الكلمة : ' + IntToStr(nOcc);   }
          //***************************************************************************************************

End;





//
// Enregistrer la Recherche pour l'historique
//
procedure TFormRecherche.BtnEnregistrerClick(Sender: TObject);
Var
  TextRech : String;

begin
  //
  DMZadM.FDTabTexteRMT.Open;
  DMZadM.FDTabTexteRMThist.Open;
  //
  DMZadM.FDTabTexteRMT.Insert;
       if (EditTexte.Text <> '') Then
          TextRech := TRIM(EditTexte.Text)
       else
          TextRech := TRIM(eTexteLibre.Text);
  DMZadM.FDTabTexteRMT.FieldByName('TexteRech').AsString := TextRech;
  DMZadM.FDTabTexteRMT.FieldByName('DateRech').AsString  := DateToStr(Date);
  DMZadM.FDTabTexteRMT.FieldByName('NbreTT').AsInteger   := nOcc;
  DMZadM.FDTabTexteRMT.Post;
  //
  DMZadM.FDQueryCoran.First;
  While not(DMZadM.FDQueryCoran.Eof) Do
     Begin
       DMZadM.FDTabTexteRMThist.Insert;
       //
       DMZadM.FDTabTexteRMThist.FieldByName('NUM').AsInteger    :=
                                DMZadM.FDTabTexteRMT.FieldByName('NUM').AsInteger;
       DMZadM.FDTabTexteRMThist.FieldByName('LINENO').AsInteger :=
                                DMZadM.FDQueryCoran.FieldByName('LINENO').AsInteger;
       DMZadM.FDTabTexteRMThist.FieldByName('SORANO').AsInteger :=
                                DMZadM.FDQueryCoran.FieldByName('SORANO').AsInteger;
       DMZadM.FDTabTexteRMThist.FieldByName('AIANO').AsInteger  :=
                                DMZadM.FDQueryCoran.FieldByName('AIANO').AsInteger;
       //
       DMZadM.FDTabTexteRMThist.Post;
       //
       DMZadM.FDQueryCoran.Next;
       //
     End;
     //
     ShowMessage('Enregistrement réussie!!');
     //
     DMZadM.FDQTexteRMT.Close;
     DMZadM.FDQTexteRMT.Open;
     //
     DMZadM.FDQueryRMTHist.Close;
     DMZadM.FDQueryRMTHist.Open;
end;



procedure TFormRecherche.FormActivate(Sender: TObject);
//Var
  //LangIdentifier    : String;
begin
  // Choix de la langue arabe
  LoadKeyboardLayout('00000401', KLF_ACTIVATE);
  Application.BiDiKeyboard := '00000401';
  //
  DMZadM.FDQTabMOT.Open;
  DMZadM.FDQTexteRMT.Open;
  DMZadM.FDQDicMOT.Open;
  DMZadM.FDTabCoran.Open;
  //
  DMZadM.FDTabTexteRMT.Open;
  DMZadM.FDTabMOT.Open;
  DMZadM.FDTabTexteRMThist.Open;
  //
  EditTexte.Focused;
  //
end;


procedure TFormRecherche.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Choix de la langue Française
  LoadKeyboardLayout('0000040c', KLF_ACTIVATE);
  Application.BiDiKeyboard := '0000040c';
end;



procedure TFormRecherche.FermerBtnClick(Sender: TObject);
begin
  DMZadM.FDQTexteRMT.Close;
  DMZadM.FDQDicMOT.Close;
  DMZadM.FDTabCoran.Close;
  DMZadM.FDTabTexteRMT.Close;
  DMZadM.FDTabTexteRMThist.Close;
  //
  close
end;


procedure TFormRecherche.Button1Click(Sender: TObject);
begin
  //
  MessageDlg(' !!!...حذاري العملية تهدف لمسح ارشيف البحوث السابقة ',mtWarning, mbOKCancel, 0);
  //
  //DMZadM.FDTabTexteRMT.Close;
  //DMZadM.FDTabTexteRMT.Active := False;
  DMZadM.FDTabTexteRMT.EmptyDataSet;
  //
  //DMZadM.FDQTexteRMT.Active := True;
  DMZadM.FDQTexteRMT.Close;
  DMZadM.FDQTexteRMT.Open;
  ///////////////////////////////////////////////////
  //DMZadM.FDTabTexteRMThist.Close;
  //DMZadM.FDTabTexteRMThist.Active := False;
  DMZadM.FDTabTexteRMThist.EmptyDataSet;
  //
  //DMZadM.FDQueryRMTHist.Active := True;
  //DMZadM.FDQueryRMTHist.Open;
  ///////////////////////////////////////////////////
end;




procedure TFormRecherche.DBGrid1ColEnter(Sender: TObject);
begin
  nCol := DBGrid1.SelectedIndex;             // N° de colonne sélectionnée
  //
  //Showmessage('N° de colonne sélectionnée :' + IntToStr(nCol));
end;

procedure TFormRecherche.DBGrid1TitleClick(Column: TColumn);
Var
  StrSql : String;
Begin
  DMZadM.FDQTexteRMT.Close;
  DMZadM.FDQTexteRMT.Sql.Clear;
  //
  StrSql := 'Select * From TexteRMT';
  //
  //  DBGridAdr.Columns[nCol].Title.Caption = 'Sigle'
  //
  If nCol = -1 Then nCol := 1;
  If nCol = 3  Then StrSql := StrSql + ' Order By NBRETT'
  Else StrSql := StrSql + ' Order By NUM';
  //
  DMZadM.FDQTexteRMT.Sql.Add(strSql);
  DMZadM.FDQTexteRMT.Close;
  DMZadM.FDQTexteRMT.Open;
end;



//
// Recherche dans la base historique des textes recherchés "TexteRMThist.db"
//
procedure TFormRecherche.DBGrid1DblClick(Sender: TObject);
var
  strReqString, sNUM : String;

   Begin
    //
    If DMZadM.FDQTexteRMT.RecordCount > 0 Then
       Begin
        sNUM := DMZadM.FDQTexteRMT.Fields[0].AsString;
        //
        // Query Historique
        //
        DMZadM.FDQueryCoran.Close;
        DMZadM.FDQueryCoran.SQL.Clear;
        //
        DBGridRechTexte.DataSource := DMZadM.FDDSQRMTHist;
        DBMemoAYA.DataSource := DMZadM.FDDSQRMTHist;
        //
        DMZadM.FDQueryRMTHist.Close;
        DMZadM.FDQueryRMTHist.SQL.Clear;
        //
        strReqString := 'SELECT * FROM TexteRMThist   where ';
        strReqString := strReqString + ' TexteRMThist.NUM like '+''''+ '%'+(sNUM) +'%'+'''';
        //
        DMZadM.FDQueryRMTHist.Sql.Add(strReqString);
        DMZadM.FDQueryRMTHist.Open;
        //
        if  (DMZadM.FDQueryRMTHist.RecordCount  = 0) Then
             Showmessage('Aucune occurrence trouvée !')
        Else
          StatusBar1.Panels[0].Text := 'Nombre d''occurrences trouvées : ' + IntToStr(DMZadM.FDQueryRMTHist.RecordCount);
        //
       End
       //
    Else
      Showmessage('Historique des recherches effectuées vide!');
      Exit;
      DBGrid1.SetFocus;
   End;



procedure TFormRecherche.N1Click(Sender: TObject);
begin
  Showmessage('حذف بحث غير معني!');
  //
end;

procedure TFormRecherche.DBGridRechTexteCellClick(Column: TColumn);
begin
   //
  {Recherche un enregistrement contenant les valeurs de champs d'index spécifié.
  Utilisez FindKey pour rechercher l'enregistrement dans un ensemble de données
  indexé en utilisant des valeurs de champs d'index spécifié.
  AKeyValues est un tableau ouvert contenant des valeurs de champs représentant
  une clé. Chaque valeur de la clé peut être un littéral, une variable ou nil.
  Si le nombre de valeurs passées dans AKeyValues est inférieur au nombre de
  colonnes de l'index utilisé pour la recherche, les valeurs manquantes sont
  supposées être nil.
  Si une recherche réussit, FindKey positionne le curseur sur l'enregistrement
  correspondant et renvoie True. Sinon, le curseur n'est pas déplacé et FindKey
  renvoie False.   }
  //
  {
    FDQuery1.IndexFieldNames := 'F1;F2';
     if not FDQuery1.FindKey([100, 'qwe']) then
          ShowMessage('100;qwe is not found');
  }
  //
  DMZadM.FDTabCoran.Open;
  DMZadM.FDSoraname.Open;
  //
  iLine := DBGridRechTexte.Fields[4].AsInteger;
  iSora := DBGridRechTexte.Fields[2].AsInteger;
  iAia  := DBGridRechTexte.Fields[3].AsInteger;
  //
     // ShowMessage('iLine :  ' + IntToStr(iLine) + '    iSora :  '+ IntTostr(iSora) + '    iAia :  '+ IntTostr(iAia));
  //
  DMZadM.FDTabCoran.IndexFieldNames := 'LINENO';
  DMZadM.FDSoraname.IndexFieldNames  := 'SORANO';
  //
  DMZadM.FDTabCoran.FindKey([iLine]);
  DMZadM.FDSoraname.FindKey([iSora]);
  //
end;





end.
