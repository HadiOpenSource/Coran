﻿unit UEditCoran;

interface

uses
  { Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, DB, ComCtrls, ExtCtrls,
  ComObj, System.UITypes;  }

 Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Grids, DBGrids, DB, DBClient, DateUtils, ComObj, ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, System.UITypes;

type
  TFormEditCoran = class(TForm)
    DBGrid2: TDBGrid;
    OpenDialog: TOpenDialog;
    DBGrid3: TDBGrid;
    StatusBar1: TStatusBar;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    RichEdit1: TRichEdit;
    Panel2: TPanel;
    Button14: TButton;
    Button6: TButton;
    Button12: TButton;
    Button13: TButton;
    Button10: TButton;
    KalimateCoran: TButton;
    Button7: TButton;
    CopierBtn: TButton;
    Button8: TButton;
    Button9: TButton;
    Button5: TButton;
    Button4: TButton;
    Button17: TButton;
    Panel3: TPanel;
    Label7: TLabel;
    EditTexte: TEdit;
    BtnSuppression: TButton;
    BtnInsertion: TButton;
    Label8: TLabel;
    EditShow: TEdit;
    Button3: TButton;
    eFichiers: TEdit;
    Edit1: TEdit;
    EditPos: TEdit;
    EditNbre: TEdit;
    EditInsert: TEdit;
    Panel4: TPanel;
    Label1: TLabel;
    Bevel1: TBevel;
    Button15: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    mTexteCoran: TMemo;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    Panel5: TPanel;
    BtnSaveQuranMadina: TButton;
    BtnAfficheTexte: TButton;
    Panel6: TPanel;
    FermerBtn: TButton;
    Label4: TLabel;
    Button11: TButton;
    Button19: TButton;
    Label12: TLabel;
    Button21: TButton;
    Button22: TButton;
    Button16: TButton;
    Button20: TButton;
    Button18: TButton;
    Button23: TButton;
    Button25: TButton;
    Button26: TButton;
    RadioGroup1: TRadioGroup;
    BtnSaveQuranKAW: TButton;
    BtnDeleteBismi: TButton;
    ButtonSoraname: TButton;
    Button24: TButton;
    BtnSaveQuranKSW: TButton;
    BtnSaveQuranTanzil: TButton;
    DBMemo3: TDBMemo;
    Label6: TLabel;
    Label14: TLabel;
    ProgressBar1: TProgressBar;
    Button1: TButton;
    StringGrid1: TStringGrid;
    Button2: TButton;
    ButtonLoadFil: TButton;
    Button27: TButton;
    Label15: TLabel;
    Button28: TButton; 
    RadioGroup2: TRadioGroup;
    Button29: TButton;
    SaveDialog1: TSaveDialog;
    Button30: TButton;
    Button31: TButton;
    Memo2: TMemo;
    procedure FermerBtnClick(Sender: TObject);
    procedure CopierBtnClick(Sender: TObject);
    procedure BtnAfficheTexteClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure ButtonSoranameClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BtnSaveQuranMadinaClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure KalimateCoranClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure BtnSuppressionClick(Sender: TObject);
    procedure BtnInsertionClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Button21Click(Sender: TObject);
    procedure mTexteCoranEnter(Sender: TObject);
    procedure DBGrid3ColEnter(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid3Enter(Sender: TObject);
    procedure DBMemo1Change(Sender: TObject);
    procedure EditTexteExit(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure Button26Click(Sender: TObject);
    procedure DBGrid2ColEnter(Sender: TObject);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure ButtonLoadFilClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnDeleteBismiClick(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure BtnSaveQuranKAWClick(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnSaveQuranKSWClick(Sender: TObject);
    procedure BtnSaveQuranTanzilClick(Sender: TObject);
    procedure EditShowKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure ProgressBar1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
  private
    { Déclarations privées }
    procedure SaveToCSVFile(const AFileName: TFileName);
    procedure SaveToExcelFile(const AFileName: TFileName);
  public
    { Déclarations publiques }
  end;

var
  FormEditCoran: TFormEditCoran;
  nCol : Integer;

implementation

{$R *.dfm}

uses UDMZadM, Clipbrd, URecherche, UMemoShowAya, CommCtrl;


function RefToCell(ARow, ACol: Integer): string;
begin
  Result := Chr(Ord('A') + ACol - 1) + IntToStr(ARow);
end;

//****************************************************************************\\

{Ces 3 fonctions permettent de découper des chaines de caracteres en fonction
 d'une sous-chaine. Etant défini au debut de la zone d'implémentation, il est
 inutile de les déclarer.}

function droite(substr: string; s: string): string;
begin
  if pos(substr,s)=0 then result:='' else
    result:=copy(s, pos(substr, s)+length(substr), length(s)-pos(substr, s)+length(substr));
end;





function droiteDroite(substr: string; s: string): string;
{============================================================================}
{ fonction qui renvoie la sous chaine de caractère situè à droite de la sous }
{ chaine substr située la plus à droite                                      }
{ ex: si substr = '\' et S= 'truc\tr\essai.exe droiteDroite renvoie essai.exe}
{============================================================================}
begin
  Repeat
    S:=droite(substr,s);
  until pos(substr,s)=0;
  result:=S;
end;




function gauche(substr: string; s: string): string;
{============================================================================}
{ fonction qui renvoie la sous chaine de caractère situè à gauche de la sous }
{ chaine substr                                                              }
{ ex: si substr = '\' et S= 'truc\tr\essai.exe' gauche renvoie truc           }
{============================================================================}
begin
  result:=copy(s, 1, pos(substr, s)-1);
end;

//****************************************************************************\\




//
// Chargement du texte CORANIQUE dans MEMO   :   mTexteCoran
//
procedure TFormEditCoran.BtnAfficheTexteClick(Sender: TObject);
Var
 i : Integer;
 S : String;
begin
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  mTexteCoran.Clear;
  i := 0;
  //
  OpenDialog.Title := 'Chargement de fichier';
  //
  If OpenDialog.Execute Then
     Begin
       Try
          If MessageDlg('Charger le fichier ' + OpenDialog.FileName + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         begin
           mTexteCoran.Lines.LoadFromFile(OpenDialog.FileName);
         end;
       Except
        on EInOutError do
           MessageDlg('Erreur d''E-S fichier.', mtError, [mbOk], 0);
       end;

     End;
    //
    Edit1.Text := IntToStr(i+1);
  //
End;







//
// Chargement de la liste des SORATE du Coran Karim  dans la Base :
//
//                          QuranDB.SORA
//
procedure TFormEditCoran.ButtonSoranameClick(Sender: TObject);

Var
 i, k : Integer;
 S : String;
begin
  DMZadM.FDSoraname.Open;
  DMZadM.FDSoraname.First;
  k := 1;
  //
    While k <  mTexteCoran.Lines.Count  Do
      Begin
        DMZadM.FDSoraname.Insert;
        DMZadM.FDSoraname.FieldByName('NAME').AsString           := mTexteCoran.Lines[k];
        //
        DMZadM.FDSoraname.FieldByName('PageMushaf').AsInteger    := k;
        DMZadM.FDSoraname.FieldByName('LieuNouzoul').AsString    := mTexteCoran.Lines[k];
        DMZadM.FDSoraname.FieldByName('OrdreNouzoul').AsInteger  := k;
        DMZadM.FDSoraname.FieldByName('OrdreMushaf').AsInteger   := k;
        //
        DMZadM.FDSoraname.FieldByName('AiaCount').AsInteger      := k;
        DMZadM.FDSoraname.FieldByName('KalimaCount').AsInteger   := k;
        DMZadM.FDSoraname.FieldByName('HarfCount').AsInteger     := k;
        //
        DMZadM.FDSoraname.Post;
        DMZadM.FDSoraname.Next;
        //
        k := k + 1;
      End;
      //
      ShowMessage('Traitement terminé ....');
End;





//
//  Importation
//  PageMushaf - LieuNouzoul -  OrdreNouzoul - OrdreMushaf
//
procedure TFormEditCoran.Button27Click(Sender: TObject);
Var
 i, k : Integer;
 S : String;
begin
 { DMZadM.FDSoraname.Open;
  DMZadM.FDSoraname.First;
  DMZadM.TableSoraBDE.Open;
  DMZadM.TableSoraBDE.First;
  k := 1;
  //
    While Not(DMZadM.TableSoraBDE.Eof)  Do
      Begin
        DMZadM.FDSoraname.Edit;
        //
        //DMZadM.FDSoraname.FieldByName('PageMushaf').AsInteger    := DMZadM.TableSoraBDE.FieldByName('PageMushaf').AsInteger;
        //DMZadM.FDSoraname.FieldByName('LieuNouzoul').AsString    := DMZadM.TableSoraBDE.FieldByName('LieuNouzoul').AsString;
        //DMZadM.FDSoraname.FieldByName('OrdreNouzoul').AsInteger  := DMZadM.TableSoraBDE.FieldByName('OrdreNouzoul').AsInteger;
        //DMZadM.FDSoraname.FieldByName('OrdreMushaf').AsInteger   := DMZadM.TableSoraBDE.FieldByName('OrdreMushaf').AsInteger;
        //
        If DMZadM.TableSoraBDE.FieldByName('LieuNouzoul').AsString = 'H' Then
           DMZadM.FDSoraname.FieldByName('LieuNouzoul').AsString := 'ك'
        Else
           DMZadM.FDSoraname.FieldByName('LieuNouzoul').AsString := 'د';
        //
        DMZadM.FDSoraname.Post;
        DMZadM.FDSoraname.Next;
        //
        DMZadM.TableSoraBDE.Next;
      End;
      //
      ShowMessage('Traitement terminé ....');  }
End;






//
// بحث عن الآيات المتكررة
//
Procedure TFormEditCoran.Button28Click(Sender: TObject);
var
  strReqString : String;

Begin
    //
    DMZadM.FDQueryCoran.Open;
    DMZadM.FDQueryCoran.Close;
    DMZadM.FDQueryCoran.Sql.Clear;
    //
    // Jointure affichant les ayates identiques --- OK
    //
    strReqString := 'SELECT DISTINCT t1.LINENO, t1.SORANO, t1.AIANO, t1.NBKALIMATZ, t1.NBHARFTZ, t1.AIATANZIL ';
    strReqString := strReqString + ' FROM quran t1 ';
    strReqString := strReqString + ' INNER JOIN quran t2 ';
    strReqString := strReqString + ' ON t1.AIATANZIL=t2.AIATANZIL ';
    strReqString := strReqString + ' WHERE t1.LINENO != t2.LINENO ';
    strReqString := strReqString + ' ORDER BY t1.AIATANZIL ASC, t1.LINENO';
    //
    DMZadM.FDQueryCoran.Sql.Add(strReqString);
    DMZadM.FDQueryCoran.Open;
    //
    DMZadM.FDQueryCoran.Last;
    EditShow.Text := IntToStr(DMZadM.FDQueryCoran.Table.Rows.Count);
    DMZadM.FDQueryCoran.First;
end;





// Export DBGRID vers Excel ou CSV
procedure TFormEditCoran.Button29Click(Sender: TObject);
var
  sPath, DateSeparator, ShortDateFormat : String;

begin
  sPath := ExtractFilePath(Application.ExeName);
  sPath := sPath + 'Data\out\';
  //
  FormatSettings.Create;
  With FormatSettings Do
    Begin
      DateSeparator := '-';
      ShortDateFormat := 'dd/mm/yyyy';
    End;
  //
  case RadioGroup2.ItemIndex of
    0:
    begin
      SaveToExcelFile(sPath + DateToStr(Date) + '_' + 'Quran'  + '.xls');
    end;
    1:
    begin
      SaveToExcelFile(sPath + DateToStr(Date) + '_' + 'Quran'  + '.csv');
    end;
  end;
end;




//
// Chargement du texte CORANIQUE MADINA  dans la BASE :
//
//                QuranDB.QURAN
//
procedure TFormEditCoran.BtnSaveQuranMadinaClick(Sender: TObject);
Var
 i, k : Integer;
 S : String;
begin
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  k := 0;
  i := 1;
  //
  with ProgressBar1 do
    Begin
      Min := 0;
      Max := DMZadM.FDTabCoran.RecordCount-1;         // Car le fichier texte contient "3 fois le nombre de Ayate" comme lignes de texte
      ;
      //
      While (k < mTexteCoran.Lines.Count)  Do
        Begin
          Position := k;
          //EditShow.Text := 'K = ' + IntToStr(k);
          Application.ProcessMessages;
          //
          DMZadM.FDTabCoran.Edit;
          //DMZadM.FDTabCoran.FieldByName('LINEAIA').AsInteger    := i;
          //DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger     := StrToInt(mTexteCoran.Lines[k-1]);
          //DMZadM.FDTabCoran.FieldByName('AIANO').AsInteger      := StrToInt(mTexteCoran.Lines[k]);
          DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString   := mTexteCoran.Lines[k];
          //
          DMZadM.FDTabCoran.Post;
          DMZadM.FDTabCoran.Next;
          //
          k := k + 1;
          i := i + 1;
          //
        End;
        //
        ShowMessage('Traitement terminé ....');
      //
    End;

End;




//
// Chargement du texte CORANIQUE كحيل بدمج الواو  dans la BASE :
//
//                QuranDB.QURAN
//
procedure TFormEditCoran.BtnSaveQuranKAWClick(Sender: TObject);
Var
 i, k : Integer;
 S : String;
begin
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  k := 0;
  EditShow.Text := '';
  //
  with ProgressBar1 do
    begin
      Min := 0;
      Max := DMZadM.FDTabCoran.RecordCount;
      //
      While k < mTexteCoran.Lines.Count -1  Do
        Begin
          Position := k;
          EditShow.Text := 'K = ' + IntToStr(k);
          Application.ProcessMessages;
          //
          DMZadM.FDTabCoran.Edit;
          DMZadM.FDTabCoran.FieldByName('AIATANZIL').AsString := mTexteCoran.Lines[k];
          DMZadM.FDTabCoran.Post;
          DMZadM.FDTabCoran.Next;
          //
          k := k + 1;
        End;
        //
        ShowMessage('Traitement terminé ....');
    end;
End;



//
// Chargement du texte CORANIQUE كحيل بفصل الواو dans la BASE :
//
//                QuranDB.QURAN
//
procedure TFormEditCoran.BtnSaveQuranKSWClick(Sender: TObject);
Var
 i, k : Integer;
 S : String;
begin
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  k := 0;
  EditShow.Text := '';
  //
  with ProgressBar1 do
    begin
      Min := 0;
      Max := DMZadM.FDTabCoran.RecordCount;
      //
      While k < mTexteCoran.Lines.Count - 1   Do
        Begin
          Position := k;
          EditShow.Text := 'K = ' + IntToStr(k);
          Application.ProcessMessages;
          //
          DMZadM.FDTabCoran.Edit;
          DMZadM.FDTabCoran.FieldByName('AIATANZIL').AsString := mTexteCoran.Lines[k];
          DMZadM.FDTabCoran.Post;
          DMZadM.FDTabCoran.Next;
          //
          k := k + 1;
        End;
        //
        ShowMessage('Traitement terminé ....');
    end;
End;




//
// Chargement du texte simple clean CORANIQUE تنزيل dans la BASE :
//
//                QuranDB.QURAN
//
procedure TFormEditCoran.BtnSaveQuranTanzilClick(Sender: TObject);
Var
 i, k : Integer;
 S : String;
begin
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  k := 0;
  EditShow.Text := '';
  //
  with ProgressBar1 do
    begin
      Min := 0;
      Max := DMZadM.FDTabCoran.RecordCount;
      //
      While k < mTexteCoran.Lines.Count -1  Do
        Begin
          Position := k;
          //EditShow.Text := 'K = ' + IntToStr(k);
          Application.ProcessMessages;
          //
          DMZadM.FDTabCoran.Edit;
          DMZadM.FDTabCoran.FieldByName('AIATANZIL').AsString := mTexteCoran.Lines[k];
          DMZadM.FDTabCoran.Post;
          DMZadM.FDTabCoran.Next;
          //
          k := k + 1;
        End;
        //
        ShowMessage('Traitement terminé ....');
    end;
End;




//
//  خرج من البرنامج
//
procedure TFormEditCoran.FermerBtnClick(Sender: TObject);
begin
  Close;
end;





procedure TFormEditCoran.CopierBtnClick(Sender: TObject);

begin
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  //
    While  Not (DMZadM.FDTabCoran.Eof) Do
      Begin
        DMZadM.FDTabCoran.Edit;
        DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString := mTexteCoran.Text;
        DMZadM.FDTabCoran.Post;
      End;
  //
  Edit1.Text :=  DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString;

end;






procedure TFormEditCoran.DBGrid1CellClick(Column: TColumn);
begin
   mTexteCoran.Text := DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString;
   Edit1.Text := DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString;
end;



procedure TFormEditCoran.Button30Click(Sender: TObject);
Var
  nSora, nAia, iPosHarfQ, iPosHarfS, iPosHarfA : Integer;
  cHarf : String;

begin
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  DMZadM.FDTabHarf.Open;
  //
    While  Not (DMZadM.FDTabCoran.Eof) Do
      Begin
        DMZadM.FDTabHarf.Insert;
        DMZadM.FDTabHarf.FieldByName('SORANO').AsInteger := DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger;
        DMZadM.FDTabHarf.FieldByName('AIANO').AsInteger := DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger;

        DMZadM.FDTabHarf.Post;
        //
        DMZadM.FDTabHarf.Next;
        //
      End;
  //
  Edit1.Text :=  DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString;

end;





procedure TFormEditCoran.Button31Click(Sender: TObject);
var
   str1, str2: string;
   FS: TFormatSettings;
   strResult, strFormat: TStringBuilder;
begin
   strResult := TStringBuilder.Create;
   strFormat := TStringBuilder.Create;

   FS := TFormatSettings.Create('en-US');
   strFormat.AppendFormat('%s %s', [FS.LongDateFormat, FS.LongTimeFormat]);
   str1 := FormatDateTime(strFormat.ToString, Now());
   strResult.AppendLine(str1);

   //A second instance with a different locale (used for comparison)
   FS := TFormatSettings.Create('ro-RO');
   strFormat.Clear;
   strFormat.AppendFormat('%s %s', [FS.LongDateFormat, FS.LongTimeFormat]);
   str2 := FormatDateTime(strFormat.ToString, Now());
   strResult.AppendLine(str2);

   EditShow.Text := strResult.ToString;
end;


//
// Enregistrement des noms de fichiers dans une base de données
//
procedure TFormEditCoran.Button3Click(Sender: TObject);
var
I : integer;
F : TextFile;
NameF, nCheminF : string;

begin
 { DMZadM.TabAudioA.Active := True;
  DMZadM.TabAudioA.Open;
  //
  OpenDialog.Title :='Ajout des Noms de Fichiers';
  //
  OpenDialog.Options :=[ofAllowMultiSelect,ofFileMustExist];
  OpenDialog.Filter :='Text files (*.txt)|*.txt|All files (*.*)|*.*';
  OpenDialog.FilterIndex :=2; {démarre la boîte de dialogue montrant tous les fichiers }
  //
 { If OpenDialog.Execute Then
    with OpenDialog.Files do
      for I := 0 to Count - 1 do
        begin
          //
          NameF := ExtractFileName(Strings[i]);    // OpenDialog.Files.Strings[i] : Donne les noms de fichiers un par un
                                                   // OpenDialog.Files.Text       : Donne le nom de tous les fichiers selectionnés
                                                   //                               d'un seul bloc, ne nécessite pas la boucle FOR
          nCheminF := ExtractFilePath(Strings[i]);
          //
          ShowMessage('Nom Fichier : ' + nCheminF + '  ' + NameF);
          Memo1.Lines.Append(nCheminF);            {Ajoute le nom de fichier au mémo }
         { Memo1.Lines.Append(NameF);
          //

          //
          DMZadM.TabAudioA.Insert;
          DMZadM.TabAudioA.FieldByName('NOMFICH').AsString := NameF;
          DMZadM.TabAudioA.FieldByName('CheminF').AsString := nCheminF;
          DMZadM.TabAudioA.FieldByName('AUDIO').AsString   := NameF;
          DMZadM.TabAudioA.FieldByName('NOMVOIX').AsString := 'A';    // ADJAMI
          DMZadM.TabAudioA.Post;

          DMZadM.TabAudioA.FieldByName('AUDIO').Value
          //
        end;
        //
        StatusBar1.Panels[2].Text := 'Nombre de fichiers Audio selectionnés : ' + IntToStr(OpenDialog.Files.Count);
        }
end;






//
// Data Ayate
//

procedure TFormEditCoran.Button4Click(Sender: TObject);
Var
  LineText, c, nSajda, nSora, nDjoza, mSora, nAya, nPage  : String;
begin
  //
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  //
 If MessageDlg('Etes-vous sûr de vouloir continuer ?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      While Not (DMZadM.FDTabCoran.EOF) Do
        Begin
           LineText := DMZadM.FDTabCoran.FieldByName('Aiate').AsString;
           //
           {If Pos('*1*', LineText) > 0
             Then nDjoza := copy(LineText, 4, 30);

           If Pos('*2*', LineText) > 0  Then
                    mSora := copy(LineText, 4, 30);}

           If Pos(')', LineText) > 0 Then
               nPage := copy(LineText, Pos(')', LineText)+1, 10);

           If (Pos('Ó }', LineText) > 0) OR  (Pos('Ó  }', LineText) > 0) OR (Pos('Ó}', LineText) > 0) Then
               nSajda := 'Ó';


           If Pos('}', LineText) > 0 Then
             If copy(LineText, Pos('}', LineText)+1, 1) <> 'Ó' then
                  nAya := copy(LineText, Pos('}', LineText)-3, 3);

           //
           DMZadM.FDTabCoran.Edit;
           //
           // DMZadM.FDTabCoranP.FieldByName('Djoza').AsString   := nDjoza;
           // DMZadM.FDTabCoranP.FieldByName('NomSora').AsString := mSora;
           // DMZadM.FDTabCoranP.FieldByName('NumSora').AsString := nSora;
           //
           //DMZadM.FDTabCoranP.FieldByName('PageNo').AsString  := nPage;
           DMZadM.FDTabCoran.FieldByName('NumAya').AsString  := nAya;
           DMZadM.FDTabCoran.FieldByName('Sajda').AsString   := nSajda;
           //
           nAya   := '';
           nSajda := '';
           //
           DMZadM.FDTabCoran.Post;
           DMZadM.FDTabCoran.Next;
           //
         End;
    End;
  //
end;

procedure TFormEditCoran.Button5Click(Sender: TObject);
Var
  LineText, c, nSajda, nSora, nDjoza, mSora, nAya, nPage  : String;
  NL : Integer;
begin
  //
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  NL := DMZadM.FDTabCoran.RecordCount;
  //
 If MessageDlg('Etes-vous sûr de vouloir continuer ?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      While Not (DMZadM.FDTabCoran.EOF) Do
        Begin
           //
           mSora := DMZadM.FDTabCoran.FieldByName('NomSora').AsString;
           nSora := DMZadM.FDTabCoran.FieldByName('NumSora').AsString;
           //
           //If Pos('.', nSora) > 0 Then   Delete(nSora, Pos('.', nSora), 1);

           If Pos('4', mSora) > 0 Then   Delete(mSora, Pos('4', mSora), 1);
           //If Pos('5', mSora) > 0 Then   Delete(mSora, Pos('5', mSora), 1);
           //If Pos('6', mSora) > 0 Then   Delete(mSora, Pos('6', mSora), 1);
           //If Pos('7', mSora) > 0 Then   Delete(mSora, Pos('7', mSora), 1);
           //If Pos('8', mSora) > 0 Then   Delete(mSora, Pos('8', mSora), 1);
           //If Pos('9', mSora) > 0 Then   Delete(mSora, Pos('9', mSora), 1);
           
           //If Pos('ÓæÑÉ', mSora) = 0 Then   mSora := mSora + ' .ÓæÑÉ. ' ;
           //
           DMZadM.FDTabCoran.Edit;
           DMZadM.FDTabCoran.FieldByName('NomSora').AsString := mSora;
           //DMZadM.FDTabCoranP.FieldByName('NumSora').AsString := nSora;
           DMZadM.FDTabCoran.Post;
           DMZadM.FDTabCoran.Next;
           //
         End;
    End;
  //
end;

procedure TFormEditCoran.Button6Click(Sender: TObject);
Var
  LineText, TextCrypt   : String;
  nLine : Integer;
begin
  //
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  DMZadM.FDTabCoran.First;
  //
 If MessageDlg('Etes-vous sûr de vouloir continuer ?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      While Not (DMZadM.FDTabCoran.EOF) Do
        Begin
           //
           LineText := DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString;
           //
           //DMZadM.Encrypt.Entree := LineText;
           //DMZadM.Encrypt.Execute;
           //TextCrypt := DMZadM.Encrypt.Resultat;
           //
           DMZadM.FDTabCoran.Edit;
           DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString  := LineText;
           DMZadM.FDTabCoran.Post;
           //
           DMZadM.FDTabCoran.Next;
           DMZadM.FDTabCoran.Next;
           //
         End;
    End;
  //
end;

procedure TFormEditCoran.Button7Click(Sender: TObject);
begin
  If DBMemo1.DataSource <> DMZadM.FDDSCoran  Then
       DBMemo1.DataSource := DMZadM.FDDSCoran
  Else DBMemo1.DataSource := DMZadM.FDDSCoran;
end;

procedure TFormEditCoran.Button8Click(Sender: TObject);
Var
  nAIA : Integer;
begin
  if MessageDlg('Copie AIA, '+ 'Voulez-vous continuer?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        DMZadM.FDTabCoran.Open;
        nAIA := 36;
        DMZadM.FDTabCoran.FindKey([nAIA]);
        //
        //
        // Copie du texte AIA
        //
        DMZadM.FDTabCoran.Edit;
        DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString := mTexteCoran.Text;
        DMZadM.FDTabCoran.Post;
        //
      End;
end;

procedure TFormEditCoran.Button9Click(Sender: TObject);
Var
  i : Integer;
  t : String;
begin
  if MessageDlg('Copie AIA, '+ 'Voulez-vous continuer?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Begin
        DMZadM.FDTabCoran.Open;
        DMZadM.FDTabCoran.First;
        i := 0;
        //
        While Not DMZadM.FDTabCoran.EOF   Do
           Begin
              //
              t := DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString;
              //
              If t = '' Then i := i +1; 
              DMZadM.FDTabCoran.Next;
            End;
            //
            Edit1.Text := IntToStr(i);
        //
      End;
end;

procedure TFormEditCoran.KalimateCoranClick(Sender: TObject);
Var
  AiaText, TextK   : String;
  i, k, LineNo, AiaNo, SoraNo : Integer;
begin
  //
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  //
 If MessageDlg('Etes-vous sûr de vouloir continuer ?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      While Not (DMZadM.FDTabCoran.EOF) Do
        Begin
           //
           LineNo  := DMZadM.FDTabCoran.FieldByName('LINENO').AsInteger;
           AiaNo   := DMZadM.FDTabCoran.FieldByName('AIANO').AsInteger;
           AiaText := DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString;
           SoraNo  := DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger;
           //
           For i := 1 to Length(AiaText)    Do
               Begin
                 If (AiaText[i] <> ' ') And (AiaText[i] <> Chr(9)) Then
                       TextK := TextK + AiaText[i]
                 Else
                    Begin
                       DMZadM.FDTabCoran.Insert;
                       //
                       DMZadM.FDTabCoran.FieldByName('KALIMA').AsString  := TextK;
                       //
                       DMZadM.FDTabCoran.FieldByName('LINENO').AsInteger := LineNo;
                       DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger := SoraNo;
                       DMZadM.FDTabCoran.FieldByName('AIANO').AsInteger  := AiaNo;
                       DMZadM.FDTabCoran.Post;
                       //
                       TextK := '';
                    End;
                 //
               End;
           //
           DMZadM.FDTabCoran.Next;
           //
         End;
         //
         DMZadM.FDTabCoran.Insert;
         //
         DMZadM.FDTabCoran.FieldByName('KALIMA').AsString  := TextK;
         //
         DMZadM.FDTabCoran.FieldByName('LINENO').AsInteger := LineNo;
         DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger := SoraNo;
         DMZadM.FDTabCoran.FieldByName('AIANO').AsInteger  := AiaNo;
         DMZadM.FDTabCoran.Post;
    End;
  //
end;

procedure TFormEditCoran.Button10Click(Sender: TObject);
Var
  Kalima, TextK   : String;
  i, k, LineNo, AiaNo, SoraNo : Integer;
begin
  //
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  //
 If MessageDlg('Etes-vous sûr de vouloir continuer ?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      While Not (DMZadM.FDTabCoran.EOF) Do
        Begin
           //
           Kalima := DMZadM.FDTabCoran.FieldByName('Kalima').AsString;
           //
           LineNo := DMZadM.FDTabCoran.FieldByName('LINENO').AsInteger;
           AiaNo  := DMZadM.FDTabCoran.FieldByName('AIANO').AsInteger;
           SoraNo := DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger;
           //
           For i := 1 to Length(Kalima)  Do
               Begin
                 If (Kalima[i] <> Chr(9))  Then
                       TextK := TextK + Kalima[i]
                 Else
                    Begin
                       //
                       DMZadM.FDTabCoran.Insert;
                       //DMZadM.FDTabCoranK.FieldByName('KALIMANO').AsInteger  := DMZadM.FDTabCoranK.RecordCount + 1;
                       DMZadM.FDTabCoran.FieldByName('KALIMA').AsString  := TextK;
                       DMZadM.FDTabCoran.FieldByName('LINENO').AsInteger := LineNo;
                       DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger := SoraNo;
                       DMZadM.FDTabCoran.FieldByName('AIANO').AsInteger  := AiaNo;
                       DMZadM.FDTabCoran.Post;
                       //
                       TextK := '';
                    End;
                 //
               End;
           //
           DMZadM.FDTabCoran.Next;
           //
         End;
         //
         DMZadM.FDTabCoran.Insert;
         //
         DMZadM.FDTabCoran.FieldByName('KALIMA').AsString  := TextK;
         //
         DMZadM.FDTabCoran.FieldByName('LINENO').AsInteger := LineNo;
         DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger := SoraNo;
         DMZadM.FDTabCoran.FieldByName('AIANO').AsInteger  := AiaNo;
         DMZadM.FDTabCoran.Post;
    End;
  //
end;



procedure TFormEditCoran.Button12Click(Sender: TObject);
Var
  LineText, TextCrypt   : String;
  nLine : Integer;
begin
  //
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  DMZadM.FDTabCoran.First;
  //
 If MessageDlg('Etes-vous sûr de vouloir continuer ?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      While Not (DMZadM.FDTabCoran.EOF) Do
        Begin
           //
           LineText := DMZadM.FDTabCoran.FieldByName('KALIMA').AsString;
           //
           DMZadM.FDTabCoran.Edit;
           DMZadM.FDTabCoran.FieldByName('KALIMA').AsString  := LineText;
           DMZadM.FDTabCoran.Post;
           //
           DMZadM.FDTabCoran.Next;
           DMZadM.FDTabCoran.Next;
           //
         End;
    End;
  //
end;


//
//  Crypter AiaC
//

procedure TFormEditCoran.Button13Click(Sender: TObject);
Var
  cSora, cAia   : String;
  iSora, iAia   : Integer;
begin
  //
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  //
 If MessageDlg('Etes-vous sûr de vouloir continuer ?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      While Not(DMZadM.FDTabCoran.EOF) Do
        Begin
           //
           iSora := DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger;
           iAia  := DMZadM.FDTabCoran.FieldByName('AIANO').AsInteger;
           //
           iSora := (iSora * 2) + 23;
           iAia  := (iAia * 3)  + 117;
           //
           DMZadM.FDTabCoran.Edit;
           DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger := iSora;
           DMZadM.FDTabCoran.FieldByName('AIANO').AsInteger  := iAia;
           DMZadM.FDTabCoran.Post;
           //
           DMZadM.FDTabCoran.Next;
           //
         End;
    End;
  //
end;


//
//  Ordre Aléatoire AiaC
//

procedure TFormEditCoran.Button14Click(Sender: TObject);
Var
  iSora, iAia, i, j   : Integer;
  
begin
  //
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  j := 1;
  //
 If MessageDlg('Etes-vous sûr de vouloir continuer ?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      While Not (DMZadM.FDTabCoran.EOF) Do
        Begin
           //
           //i := random(200);
           //
           //DMZadM.TabAiaC.FindKey([]);
           //
           iSora := DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger;
           iAia  := DMZadM.FDTabCoran.FieldByName('AIANO').AsInteger;
           //
           iSora := (iSora * 2) + 23;
           iAia  := (iAia * 3)  + 117;
           //
           DMZadM.FDTabCoran.Edit;
           DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger := iSora;
           DMZadM.FDTabCoran.FieldByName('AIANO').AsInteger  := iAia;
           DMZadM.FDTabCoran.Post;
           //
           DMZadM.FDTabCoran.Next;
           //
         End;
    End;
  //
end;






procedure TFormEditCoran.Button17Click(Sender: TObject);
begin
   //
  { DMZadM.TabAudioA.Open;
   DMZadM.TabAudioA.Insert;
   //DMZadM.TabAudioA['Audio'] := LoadFromFile(OpenDialog.FileName);
   DMZadM.TabAudioA.Post
   //
   //
   //if not (DMZadM.TabAudioA.State  in  [dsInsert, dsEdit])
  //                               then  DMZadM.TabAudioA.Insert;
   //
   // Insertion du fichier audio dans la Base
   //DMZadM.QueryAdjamiAudio.LoadFromFile(OpenDialog.FileName);
   //DMZadM.QueryAdjami.Post;
   //
   //
  {(DMZadM.TabAudioA.FieldByName('Audio')).LoadFromFile(OpenDialog.FileName);
   .Assign(Image1.Picture.Bitmap);
   DMAnoc.Annonce.FieldByName('NomFichier').AsString := OPD.Filename;
   DMZadM.TabAudioA.FieldByName.load
   .FieldByName('Audio').AsBlob.LoadFromFile(OpenDialog.FileName); }
   //

end;


//
// Traitement de suppression d'un caractère ou d'un ensemble de caractères
//
procedure TFormEditCoran.BtnSuppressionClick(Sender: TObject);
var
  StringAia, eRech : String;
  nRep, nEnreg, ePos, eNbre : Integer;
begin
  //
  eRech := EditTexte.Text;
  nRep := 0;
  nEnreg := 0;
  ePos := 0;
  eNbre := 0;
  //
  {If MessageDlg(' !!!ÅäÊÈå¡ Åäß Úáì æÔß ÇáÞíÇã ÈÊÛííÑ Ýí äÕ ÇáÞÑÂä ÇáßÑíã åá ÊæÇÝÞ Úáì ãæÇÕáÉ ÇáÚãáíÉ'
     ,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       Begin
         EditReplace.Enabled  := True;
         LabelReplace.Enabled := True;
       End
  Else
       Begin
         EditReplace.Enabled  := False;
         LabelReplace.Enabled := False;
       End;}
  //
       if (eRech <> '') Then
          Begin
            eRech := EditTexte.Text;
            //
            DMZadM.FDTabCoran.Open;
            DMZadM.FDTabCoran.First;
            //
            While not(DMZadM.FDTabCoran.Eof) Do
              Begin
                 //
                 //
                  StringAia := DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString;
                  //
                  // voir s'il existe au moins une occurrence à supprimer
                  //
                  If Pos(eRech, StringAia) > 0 Then
                     Begin
                       //
                       EditShow.Text := StringAia;
                       //
                       ePos  := StrToInt(EditPos.Text);    // Position debut effacement
                       eNbre := StrToInt(EditNbre.Text);   // Nombe de caratères à éffacer
                       //
                       If Pos(eRech, StringAia) > 0 Then
                           Delete(StringAia, Pos(eRech, StringAia)+ ePos, eNbre);
                       //
                       EditShow.Text := StringAia;
                       //
                       DMZadM.FDTabCoran.Edit;
                       DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString := StringAia;
                       DMZadM.FDTabCoran.Post;
                       //
                       //Showmessage(DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString);
                       //
                       nRep := nRep + 1;       // Nombre de remplacements
                     End;
                  //
                  DMZadM.FDTabCoran.Next;
                  nEnreg := nEnreg + 1;
                  //
              End;
              //
              StatusBar1.Panels[0].Text := 'Nombre de remplacements : ' + IntToStr(nRep);
              StatusBar1.Panels[1].Text := 'Nombre Enreg. Lus : ' + IntToStr(nEnreg);
              //
              Showmessage('Opération de màj terminée!');
              //
              DMZadM.FDQueryCoran.Close;
              DMZadM.FDQueryCoran.Open;
              //
          End
       Else
         Begin
           Showmessage('Entrer le texte à rechercher!');
           EditTexte.SetFocus;
         End;
     //

end;


//
// Traitement d'insertion d'un caractère ou d'un ensemble de caractères
//
procedure TFormEditCoran.BtnDeleteBismiClick(Sender: TObject);
var
  StringAia, eRech, eInsert : String;
  nEnreg, nRep, ePos, eNbre : Integer;

begin
      DMZadM.FDTabCoran.Open;
      DMZadM.FDTabCoran.First;
      //
      While not(DMZadM.FDTabCoran.Eof) Do
        Begin
           //
           //
            StringAia := DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString;
            //
            // voir s'il existe au moins une occurrence à inserer
            //
            If Pos(eRech, StringAia) > 0 Then
               Begin
                 //
                 ePos  := StrToInt(EditPos.Text);    // Position debut effacement
                 eNbre := StrToInt(EditNbre.Text);   // Nombe de caratères à éffacer
                 //
                 Insert(eInsert, StringAia, Pos(eRech, StringAia)+ ePos);
                 //
                 DMZadM.FDTabCoran.Edit;
                 DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString := StringAia;
                 DMZadM.FDTabCoran.Post;
                 //
                 //Showmessage(DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString);
                 //
                 nRep := nRep + 1;       // Nombre d'insertion
               End;
            //
            DMZadM.FDTabCoran.Next;
            nEnreg := nEnreg + 1;
            //
        End;
end;

procedure TFormEditCoran.BtnInsertionClick(Sender: TObject);
var
  StringAia, eRech, eInsert : String;
  nRep, nEnreg, ePos, eNbre : Integer;
begin
 //
 eRech   := EditTexte.Text;
 eInsert := EditInsert.Text;
 nRep    := 0;
 nEnreg  := 0;
 ePos    := 0;
 eNbre   := 0;
 //
 if (eRech <> '') Then
    Begin
      //
      DMZadM.FDTabCoran.Open;
      DMZadM.FDTabCoran.First;
      //
      While not(DMZadM.FDTabCoran.Eof) Do
        Begin
           //
           //
            StringAia := DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString;
            //
            // voir s'il existe au moins une occurrence à inserer
            //
            If Pos(eRech, StringAia) > 0 Then
               Begin
                 //
                 //EditShow.Text := StringAia;
                 //
                 ePos  := StrToInt(EditPos.Text);    // Position debut effacement
                 eNbre := StrToInt(EditNbre.Text);   // Nombe de caratères à éffacer
                 //
                 Insert(eInsert, StringAia, Pos(eRech, StringAia)+ ePos);
                 //
                 //EditShow.Text := StringAia;
                 //
                 DMZadM.FDTabCoran.Edit;
                 DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString := StringAia;
                 DMZadM.FDTabCoran.Post;
                 //
                 //Showmessage(DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString);
                 //
                 nRep := nRep + 1;       // Nombre d'insertion
               End;
            //
            DMZadM.FDTabCoran.Next;
            nEnreg := nEnreg + 1;
            //
        End;
        //
        StatusBar1.Panels[0].Text := 'Nombre de remplacements : ' + IntToStr(nRep);
        StatusBar1.Panels[1].Text := 'Nombre Enreg. Lus : ' + IntToStr(nEnreg);
        //
        Showmessage('Opération de màj terminée!');
        //
        DMZadM.FDQueryCoran.Close;
        DMZadM.FDQueryCoran.Open;
        //
    End
 Else
   Begin
     Showmessage('Entrer le texte à rechercher!');
     EditTexte.SetFocus;
   End;
end;



//
// Affichage du module de traitement des corrections et mises à jour du texte cora,ique
//
procedure TFormEditCoran.FormActivate(Sender: TObject);
begin
  {DMZadM.FDTabCoran.Open;
  DMZadM.FDQueryCoran.Open;
  DMZadM.FDSoraName.Open;
  DMZadM.FDQuerySora.Open;
  DMZadM.FDQSoraHarf.Open;
  DMZadM.FDTabSoraHarf.Open; }
  DBGrid3.Tag := 0;
  //
  // Choix de la langue arabe
  //
  LoadKeyboardLayout('0000040c', KLF_ACTIVATE);
  Application.BiDiKeyboard := '0000040c';
  //  
end;



procedure TFormEditCoran.FormCreate(Sender: TObject);
begin
  // Si la propriété KeyPreview a la valeur true, les événements du clavier
  // ont lieu dans la fiche avant d'avoir lieu dans le contrôle actif.
  //
  KeyPreview := True;
end;



//
// Traitement de remplacement d'un caractère ou d'un ensemble de caractères
//
procedure TFormEditCoran.Button15Click(Sender: TObject);
var
  StringAia, eRech, eInsert : String;
  nRep, nEnreg, ePos, eNbre : Integer;
begin
 //
 eRech   := EditTexte.Text;
 eInsert := EditInsert.Text;
 nRep    := 0;
 nEnreg  := 0;
 ePos    := 0;
 eNbre   := 0;
 //
 if (eRech <> '') Then
    Begin
      eRech := EditTexte.Text;
      //
      DMZadM.FDTabCoran.Open;
      DMZadM.FDTabCoran.First;
      //
      While not(DMZadM.FDTabCoran.Eof) Do
        Begin
           //
           //
            StringAia := DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString;
            //
            // voir s'il existe au moins une occurrence à inserer
            //
            If Pos(eRech, StringAia) > 0 Then
               Begin
                 //
                 EditShow.Text := StringAia;
                 Showmessage(EditShow.Text);
                 //
                 ePos  := StrToInt(EditPos.Text);    // Position debut effacement
                 eNbre := StrToInt(EditNbre.Text);   // Nombe de caratères à éffacer
                 //
                 Insert(eInsert, StringAia, Pos(eRech, StringAia)+ ePos);
                 //
                 EditShow.Text := StringAia;
                 Showmessage(EditShow.Text);
                 //
                 Delete(StringAia, Pos(eRech, StringAia)+ ePos, eNbre);
                 //
                 If MessageDlg('Etes-vous sûr de vouloir confirmer la CORRECTION?',
                       mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                    Begin
                      DMZadM.FDTabCoran.Edit;
                      DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString := StringAia;
                      DMZadM.FDTabCoran.Post;
                    End
                 Else EXIT;     
                 //
                 nRep := nRep + 1;       // Nombre de remplacements
               End;
            //
            DMZadM.FDTabCoran.Next;
            nEnreg := nEnreg + 1;
            //
        End;
        //
        StatusBar1.Panels[0].Text := 'Nombre de remplacements : ' + IntToStr(nRep);
        StatusBar1.Panels[1].Text := 'Nombre Enreg. Lus : ' + IntToStr(nEnreg);
        Showmessage('Opération de màj terminée!');
    End
 Else
   Begin
     Showmessage('Entrer le texte à rechercher!');
     EditTexte.SetFocus;
   End;

end;

procedure TFormEditCoran.Button16Click(Sender: TObject);
Var
  Texte_aya : String;
  i : Integer;
Begin
  DMZadM.FDTabCoran.Open;                     // Num - sorano - aiano - AIA
  //
  While Not (DMZadM.FDTabCoran.EoF) DO
   Begin
    Texte_aya := '';
    Texte_aya := TRIM(DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString);
    //
    //ShowMessage('Texte_aya : '+Texte_aya);
    //
    For i:=1 To Length(Texte_aya) Do            // traitement AYA
     Begin
       //           ßáæÇ æÇÔÑÈæÇ
       //
       If (Texte_aya[i] = 'æ') AND  (Texte_aya[i+2] <> ' ')          // Traitement æ
               Then   Insert(' ', Texte_aya, i+1);
     End;
     //
     DMZadM.FDTabCoran.Edit;
     DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString  := Texte_aya;
     DMZadM.FDTabCoran.Post;
     //
     DMZadM.FDTabCoran.Next;
     //
   End;
   //

end;


//
//   حساب عدد الكلمات و الحروف للآيات
//
procedure TFormEditCoran.Button18Click(Sender: TObject);
Var
  Texte_aya, nText : String;
   i, j, k, nbreMot, nHarf : Integer;

Begin
  DMZadM.FDTabCoran.Open;
  //
  nHarf     := 0;
  nbreMot   := 0;
  J := 1;
  k := 1;
  //
  with ProgressBar1 do
    begin
      Min := 0;
      Max := DMZadM.FDTabCoran.RecordCount;
      //
      While Not (DMZadM.FDTabCoran.EoF) DO
       Begin
        Position := k;
        //EditShow.Text := 'K = ' + IntToStr(k);
        Application.ProcessMessages;
        //
        Texte_aya := '';
        //Texte_aya := TRIM(DMZadM.FDTabCoran.FieldByName('AIATANZIL').AsString);
        //Texte_aya := TRIM(DMZadM.FDTabCoran.FieldByName('AIATANZIL').AsString);
        Texte_aya := TRIM(DMZadM.FDTabCoran.FieldByName('AIATANZIL').AsString);
        //Texte_aya := TRIM(DMZadM.FDTabCoran.FieldByName('AIATANZIL').AsString);
        //
        For i:=0 To Length(Texte_aya)-1 Do                              // Traitement AIA
          Begin
            If (Texte_aya[i] <> ' ')
               Then   nHarf  := nHarf + 1                               // Traitement HARF / Aia
               Else  nbreMot := nbreMot  + 1;                           // Traitement MOT  / Aia
          End;
          //
          DMZadM.FDTabCoran.Edit;
          //
          //DMZadM.FDTabCoran.FieldByName('NBKALIMKHA').AsInteger := nbreMot+1;
          //DMZadM.FDTabCoran.FieldByName('NBHARFKHA').AsInteger   := nHarf;
          //DMZadM.FDTabCoran.FieldByName('NBKALIMKHS').AsInteger  := nbreMot+1;
          //DMZadM.FDTabCoran.FieldByName('NBHARFKHS').AsInteger   := nHarf;
          //DMZadM.FDTabCoran.FieldByName('NbKalima').AsInteger := nbreMot+1;
          //DMZadM.FDTabCoran.FieldByName('NbHARF').AsInteger   := nHarf;
          DMZadM.FDTabCoran.FieldByName('NBKALIMATZ').AsInteger := nbreMot+1;
          DMZadM.FDTabCoran.FieldByName('NBHARFTZ').AsInteger   := nHarf;
          //
          DMZadM.FDTabCoran.Post;
          DMZadM.FDTabCoran.Next;
          k := k +1;
          nHarf   := 0;
          nbreMot := 0;
          //
       End;
       //
       ShowMessage('Traitement terminé ....');
       //
     End;
end;


//
// حساب عدد الكلمات و الحروف للسورة
//

procedure TFormEditCoran.Button20Click(Sender: TObject);
Var
  iAia, iSORA, nHarfSora, nMotSora : Integer;

Begin
  //
  DMZadM.FDSoraName.Open;
  DMZadM.FDTabCoran.Open;
  //DMZadM.FDTabCoran.IndexFieldNames := 'SORANO';
  DMZadM.FDTabCoran.First;
  DMZadM.FDSoraName.First;
  //
  //DMZadM.FDSoraName.IndexName := iSORA;
  //
  nMotSora  := 0;
  nHarfSora := 0;
  iAia      := 0;
  iSora     := 1;
  //
  While Not (DMZadM.FDTabCoran.EoF) DO               // Debut Lecture FDTabCoran
    Begin

      //ShowMessage('Test 1: iSora :  '+intToStr(iSora));

      If iSora <> DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger Then
        Begin
          If iSora = DMZadM.FDSoraName.FieldByName('SORANO').AsInteger Then
             Begin

               //ShowMessage('Test 2: iSora :  ' + intToStr(iSora)  + 'nHarfSora :  '+intToStr(nHarfSora));

               DMZadM.FDSoraName.Edit;
               DMZadM.FDSoraName.FieldByName('AIAcount').AsInteger    := iAia;
               DMZadM.FDSoraName.FieldByName('KalimaCount').AsInteger := nMotSora;
               DMZadM.FDSoraName.FieldByName('HarfCount').AsInteger   := nHarfSora;
               DMZadM.FDSoraName.Post;
               DMZadM.FDSoraName.Next;
               //
               nMotSora  := 0;
               nHarfSora := 0;
               iSORA     := DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger;
               //
               nMotSora  := nMotSora  + DMZadM.FDTabCoran.FieldByName('NBKALIMATZ').AsInteger;
               nHarfSora := nHarfSora + DMZadM.FDTabCoran.FieldByName('NBHARFTZ').AsInteger;
             End;
        End
      Else
        Begin
          nMotSora  := nMotSora  + DMZadM.FDTabCoran.FieldByName('NBKALIMATZ').AsInteger;
          nHarfSora := nHarfSora + DMZadM.FDTabCoran.FieldByName('NBHARFTZ').AsInteger;

          //ShowMessage('Test 3: iSora :  ' + intToStr(iSora)  + 'nHarfSora :  '+intToStr(nHarfSora));

        End;                                                          // Fin IF  ...  Else
        //
        iAia := DMZadM.FDTabCoran.FieldByName('AIANO').AsInteger;
        //

       //ShowMessage('Test 4: iSora :  ' + intToStr(iSora)  + 'nHarfSora :  '+intToStr(nHarfSora));

        DMZadM.FDTabCoran.Next;
    End;
    //
    If DMZadM.FDSoraName.FindKey([iSora]) Then
       Begin

         //ShowMessage('Test 2: iSora :  ' + intToStr(iSora)  + 'nHarfSora :  '+intToStr(nHarfSora));

         DMZadM.FDSoraName.Edit;
         DMZadM.FDSoraName.FieldByName('AIAcount').AsInteger    := iAia;
         DMZadM.FDSoraName.FieldByName('KalimaCount').AsInteger := nMotSora;
         DMZadM.FDSoraName.FieldByName('HarfCount').AsInteger   := nHarfSora;
         DMZadM.FDSoraName.Post;
         //
       End                                                                // Fin Lecture FDTabCoran
End;


//
//  حساب عدد تكرار كل حرف في السورة
//
procedure TFormEditCoran.Button11Click(Sender: TObject);
Var
  Hourouf : array[1..28] of String;
  Harf    : array[1..28] of String;
  Nombre  : array[1..28] of Integer;
  nHarf   : array[1..28] of Integer;
  cHarf   : String;
  
  i, nSora, nSoraHarf, iNum : Integer;
  

Begin
  DMZadM.FDTabSoraHarf.Open;
  DMZadM.FDTabHARF.Open;
  //
  iNum := 0;
  //
   For i:=1 To 28 Do
     Begin
       Hourouf[i]:='';
       Nombre[i] :=0;
       nHarf[i]  :=0;
     End;
  //  ا ب ت ث ج ح خ د ذ ر ز س ش ص ض ط ظ ع غ ف ق ك ل م ن ه و ي
  Harf[1] := 'ا';
  Harf[2] := 'ب';
  Harf[3] := 'ت';
  Harf[4] := 'ث';
  Harf[5] := 'ج';
  Harf[6] := 'ح';
  Harf[7] := 'خ';
  Harf[8] := 'د';
  Harf[9] := 'ذ';
  Harf[10] := 'ر';
  Harf[11] := 'ز';
  Harf[12] := 'س';
  Harf[13] := 'ش';
  Harf[14] := 'ص';
  Harf[15] := 'ض';
  Harf[16] := 'ط';
  Harf[17] := 'ظ';
  Harf[18] := 'ع';
  Harf[19] := 'غ';
  Harf[20] := 'ف';
  Harf[21] := 'ق';
  Harf[22] := 'ك';
  Harf[23] := 'ل';
  Harf[24] := 'م';
  Harf[25] := 'ن';
  Harf[26] := 'ه';
  Harf[27] := 'و';
  Harf[28] := 'ي';
  //
       DMZadM.FDTabHarfTZ.Open;
       DMZadM.FDTabHarfTZ.First;
       //
       nSora := DMZadM.FDTabHarfTZ.FieldByName('SORANO').AsInteger;
       //
       While Not (DMZadM.FDTabHarfTZ.EoF) DO
         Begin
          cHarf := '';
          cHarf := TRIM(DMZadM.FDTabHarfTZ.FieldByName('HARF').AsString);
          nSoraHarf := DMZadM.FDTabHarfTZ.FieldByName('SORANO').AsInteger;
          //
          If nSoraHarf <> nSora Then
             Begin
              For i:=1 To 28 Do
               Begin
                 DMZadM.FDTabSoraHarf.Insert;
                 DMZadM.FDTabSoraHarf.FieldByName('HARF').AsString  := Harf[i];
                 DMZadM.FDTabSoraHarf.FieldByName('NBREOCC').AsInteger := Nombre[i];
                 DMZadM.FDTabSoraHarf.FieldByName('SORANO').AsInteger := nSora;
                 DMZadM.FDTabSoraHarf.Post;
                 DMZadM.FDTabSoraHarf.Next;
                 //
               End;
               nSora := nSoraHarf;
               //
               For i:=1 To 28 Do
                 Begin
                   Nombre[i] :=0;
                 End;
              End;
                //
                //  ا ب ت ث ج ح خ د ذ ر ز س ش ص ض ط ظ ع غ ف ق ك ل م ن ه و ي
                //
                If cHarf = 'ا'  Then   Nombre[1]   := Nombre[1]  + 1;
                If cHarf = 'ب'  Then   Nombre[2]   := Nombre[2]  + 1;
                If cHarf = 'ت'  Then   Nombre[3]   := Nombre[3]  + 1;
                If cHarf = 'ث'  Then   Nombre[4]   := Nombre[4]  + 1;
                If cHarf = 'ج'  Then   Nombre[5]   := Nombre[5]  + 1;
                If cHarf = 'ح'  Then   Nombre[6]   := Nombre[6]  + 1;
                If cHarf = 'خ'  Then   Nombre[7]   := Nombre[7]  + 1;
                If cHarf = 'د'  Then   Nombre[8]   := Nombre[8]  + 1;
                If cHarf = 'ذ'  Then   Nombre[9]   := Nombre[9]  + 1;
                If cHarf = 'ر'  Then   Nombre[10]  := Nombre[10] + 1;
                If cHarf = 'ز'  Then   Nombre[11]  := Nombre[11] + 1;
                If cHarf = 'س'  Then   Nombre[12]  := Nombre[12] + 1;
                If cHarf = 'ش'  Then   Nombre[13]  := Nombre[13] + 1;
                If cHarf = 'ص'  Then   Nombre[14]  := Nombre[14] + 1;
                If cHarf = 'ض'  Then   Nombre[15]  := Nombre[15] + 1;
                If cHarf = 'ط'  Then   Nombre[16]  := Nombre[16] + 1;
                If cHarf = 'ظ'  Then   Nombre[17]  := Nombre[17] + 1;
                If cHarf = 'ع'  Then   Nombre[18]  := Nombre[18] + 1;
                If cHarf = 'غ'  Then   Nombre[19]  := Nombre[19] + 1;
                If cHarf = 'ف'  Then   Nombre[20]  := Nombre[20] + 1;
                If cHarf = 'ق'  Then   Nombre[21]  := Nombre[21] + 1;
                If cHarf = 'ك'  Then   Nombre[22]  := Nombre[22] + 1;
                If cHarf = 'ل'  Then   Nombre[23]  := Nombre[23] + 1;
                If cHarf = 'م'  Then   Nombre[24]  := Nombre[24] + 1;
                If cHarf = 'ن'  Then   Nombre[25]  := Nombre[25] + 1;
                If cHarf = 'ه'  Then   Nombre[26]  := Nombre[26] + 1;
                If cHarf = 'و'  Then   Nombre[27]  := Nombre[27] + 1;
                If cHarf = 'ي'  Then   Nombre[28]  := Nombre[28] + 1;
                //
           DMZadM.FDTabHarfTZ.Next;
           //
         End;
         //
        For i:=1 To 28 Do
         Begin
           DMZadM.FDTabSoraHarf.Insert;
           DMZadM.FDTabSoraHarf.FieldByName('HARF').AsString  := Harf[i];
           DMZadM.FDTabSoraHarf.FieldByName('NBREOCC').AsInteger := Nombre[i];
           DMZadM.FDTabSoraHarf.FieldByName('SORANO').AsInteger := nSora;
           DMZadM.FDTabSoraHarf.Post;
           DMZadM.FDTabSoraHarf.Next;
           //
         End;
 End;

 

procedure TFormEditCoran.Button19Click(Sender: TObject);
begin
  //
  {with DMZadM.FDTabSoraHarf do
    begin
      Active := False;
      DatabaseName := 'ZemZem';
      TableName := 'SoraHARF';
      //TableType := ttParadox;
      EmptyTable;
    end; }
  //
end;

procedure TFormEditCoran.Button1Click(Sender: TObject);
var
  sPath, DateSeparator, ShortDateFormat : String;

begin
  sPath := ExtractFilePath(Application.ExeName);
  sPath := sPath + 'Data\Dat\';
  //
  FormatSettings.Create;
  With FormatSettings Do
    Begin
      DateSeparator := '-';
      ShortDateFormat := 'dd/mm/yyyy';
    End;
  //
  //  Ces deux fichiers sont communs aux deux versions
  //
 { DMZadM.QuranCDS.SaveToFile(sPath + DateToStr(Date) + '_' + 'Quran'  + '.cds');
  DMZadM.QuranQCDS.SaveToFile(sPath + DateToStr(Date)  + '_' + 'QuranQ' + '.cds');
  DMZadM.SoraCDS.SaveToFile(sPath + DateToStr(Date) +  '_' + 'Sora' + '.cds');
  DMZadM.SoraHarfCDS.SaveToFile(sPath + DateToStr(Date) +  '_' + 'SoraHarf' + '.cds');
  //
  //  حساب عدد كلمات و حروف القرآن حسب الرسم الإملائي الحديث بدون تنقيط
  //  ----------------------(AIAMADIN) --------------------------------
  //
  DMZadM.QuranHarfCDS.SaveToFile(sPath + DateToStr(Date) + '_' + 'Harf' + '.cds');
  DMZadM.TabMotCDS.SaveToFile(sPath + DateToStr(Date) + '_' + 'Mots' + '.cds');
  DMZadM.DicMotCDS.SaveToFile(sPath + DateToStr(Date) + '_' + 'DicMots' + '.cds');
  //
  // حساب عدد كلمات و حروف القرآن حسب الرسم الأول بدون تنقيط
  //  -----------------(AIATANZIL) -------------------------
  //
  DMZadM.QuranHtzCDS.SaveToFile(sPath + DateToStr(Date) + '_' + 'HarfTZ' + '.cds');
  DMZadM.qmotTZCDS.SaveToFile(sPath + DateToStr(Date) + '_' + 'MotsTZ' + '.cds');
  DMZadM.dicmotTZCDS.SaveToFile(sPath + DateToStr(Date) + '_' + 'DicMotsTZ' + '.cds');
  //    }
  ShowMessage('Sauvegarde CDS terminée...');
end;




// N° de colonne sélectionnée
procedure TFormEditCoran.DBGrid1ColEnter(Sender: TObject);
begin
  nCol := DBGrid1.SelectedIndex;
end;



// Tri en cliquant sur le titre d'une colonne
procedure TFormEditCoran.DBGrid1TitleClick(Column: TColumn);
Var
  StrSql : String;
Begin
  //
  DMZadM.FDQSoraHarf.Close;
  DMZadM.FDQSoraHarf.Sql.Clear;
  //
  StrSql := 'Select * From SoraHarf';
  //
  If nCol = -1 Then nCol := 1;
  If nCol =  0 Then  StrSql := StrSql + ' Order By LINEAIA ASC ';
  If nCol =  1 Then  StrSql := StrSql + ' Order By NameSora ASC';
  If nCol =  2 Then  StrSql := StrSql + ' Order By SORANO ASC';
  If nCol =  3 Then  StrSql := StrSql + ' Order By AIANO ASC';
  If nCol =  4 Then  StrSql := StrSql + ' Order By NBHARF ASC';
  If nCol =  5 Then  StrSql := StrSql + ' Order By NBKALIMA ASC';
  //
  DMZadM.FDQSoraHarf.Sql.Add(strSql);
  DMZadM.FDQSoraHarf.Close;
  DMZadM.FDQSoraHarf.Open;
End;




//  Appel de la procédure de recherche
procedure TFormEditCoran.Button21Click(Sender: TObject);
begin
  FormRecherche.ShowModal;  
end;





// Affichage d'un AIA sur Memo texte
procedure TFormEditCoran.mTexteCoranEnter(Sender: TObject);
begin
  mTexteCoran.Text := DMZadM.FDQueryCoran.FieldValues['AIATANZIL'];
end;



//
// Changer la couleur du ProgressBar
//
procedure TFormEditCoran.ProgressBar1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Progressbar1.Brush.Color := clTeal;
  SendMessage(ProgressBar1.Handle, PBM_SETBARCOLOR, 0, clYellow);
end;




procedure TFormEditCoran.DBGrid3ColEnter(Sender: TObject);
begin
  mTexteCoran.Text := DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString;
  //
  nCol := DBGrid3.SelectedIndex;             // N° de colonne sélectionnée

  //ShowMessage('nCol :' + IntToStr(nCol));

end;




procedure TFormEditCoran.DBGrid3CellClick(Column: TColumn);
begin
  //mTexteCoran.Text := DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString;
end;

procedure TFormEditCoran.DBGrid3Enter(Sender: TObject);
begin
  //mTexteCoran.Text := DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString;
end;

procedure TFormEditCoran.DBMemo1Change(Sender: TObject);
begin
  //mTexteCoran.Text := DMZadM.FDQueryCoran.FieldByName('AIAMADINA').AsString;
end;



//
// Création à la volée d'une FORM pour afficher le contenu d'un memo en appuyant sur la touche ENTREE
// que DBGRID ne peut pas afficher
//
procedure TFormEditCoran.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if DBGrid3.SelectedIndex = 14 then           // N° colonne 'AIAMADINA'
    with TFormMemoShowAya.Create(nil) do
    try
      MemoShowAya.Text := DMZadM.FDQueryCoran.FieldByName('AIAMADINA').AsString;
      ShowModal;
    finally
      Free;
    end;
  end;
end;




//
// Choix de la langue arabe
//
procedure TFormEditCoran.EditShowKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = vkEscape then   Exit;
end;

procedure TFormEditCoran.EditTexteExit(Sender: TObject);
 begin
if (sender is TEdit) then
   case (sender as tedit).Tag of

   2,3,4:
    begin
     LoadKeyboardLayout('0000040c', KLF_ACTIVATE);
     Application.BiDiKeyboard := '0000040c';
    end;
   1,5,6:
    begin
     LoadKeyboardLayout('00000401', KLF_ACTIVATE);
     Application.BiDiKeyboard := '00000401';
    end;
   end;
 end;






//
//  ÚãáíÉ ÍÐÝ ÝÑÇÛÇÊ  ÇáÒÇÆÏÉ
//
procedure TFormEditCoran.Button23Click(Sender: TObject);
Var
  Texte_aya : String;
  i : Integer;
Begin
  DMZadM.FDTabCoran.Open;                     // Num - sorano - aiano - AIA
  DMZadM.FDTabCoran.First;
  //
  If MessageDlg('Etes-vous sûr de vouloir continuer ?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes   then
    Begin
      //
      While Not (DMZadM.FDTabCoran.EoF) DO
       Begin
        Texte_aya := '';
        Texte_aya := TRIM(DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString);
        //
        // Delete(StringAia, Pos(eRech, StringAia)+ ePos, eNbre);
        //
        while Pos('  ', Texte_aya) > 0 do
              //Texte_aya[Pos('  ', Texte_aya)] := ' ';
              Delete(Texte_aya, Pos('  ', Texte_aya),1);
         //
         //ShowMessage('Texte_aya : ' + Texte_aya);
         //
         DMZadM.FDTabCoran.Edit;
         DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString  := Texte_aya;
         DMZadM.FDTabCoran.Post;
         //
         DMZadM.FDTabCoran.Next;
         //
         //ShowMessage('OK, suivant ... ');
         //
       End;
       //
       ShowMessage('ÚãáíÉ ÍÐÝ ÝÑÇÛÇÊ  ÇáÒÇÆÏÉ ÅäÊåÊ ÈäÌÇÍ');
       //
    End
  Else
     ShowMessage('Opération annulée!');
end;






// Changer DATASOURCE
procedure TFormEditCoran.Button24Click(Sender: TObject);
begin
   If DBGrid3.Tag <> 1 Then
     Begin
       DBGrid3.DataSource := DMZadM.FDDSQCoran;
       DBMemo1.DataSource := DMZadM.FDDSQCoran;
       //DBMemo2.DataSource := DMZadM.FDDSQCoran;
     End
   Else
     Begin
       DBGrid3.DataSource := DMZadM.FDDSCoran;
       DBMemo1.DataSource := DMZadM.FDDSCoran;
      // DBMemo2.DataSource := DMZadM.FDDSCoran;
     End;
end;







// ÍÓÇÈ ÇáÞíãÉ ÇáÚÏÏíÉ ááÂíÉ
procedure TFormEditCoran.Button25Click(Sender: TObject);
Var
  Texte_aya, cAbrege : String;
  i, Val, iPos: Integer;
  Apparition : array[1..14] of Integer;

Begin
  DMZadM.FDTabCoran.Open;       // Num - sorano - aiano - AIA
  DMZadM.FDTabCoran.First;
  //
  cAbrege := 'المصركهيعطسحقن';
  //
  Apparition[14]:= 1;
  Apparition[13]:= 2;
  Apparition[12]:= 7;
  Apparition[11]:= 5;
  Apparition[10]:= 4;
  Apparition[9] := 2;
  Apparition[8] := 2;
  Apparition[7] := 2;
  Apparition[6] := 1;
  Apparition[5] := 6;
  Apparition[4] := 3;
  Apparition[3] := 17;
  Apparition[2] := 13;
  Apparition[1] := 13;
  //
  While Not (DMZadM.FDTabCoran.EoF) DO
   Begin
    Texte_aya := '';
    Texte_aya := TRIM(DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString);
    Val := 0;
    //
    For i:=1 To Length(Texte_aya)+1 Do            // traitement AYA
     Begin
      //
      If Texte_aya[i] <> ' '   Then            // Traitement MOT
       Begin
         //
         iPos := Pos(Texte_aya[i], cAbrege);
         If (iPos > 0) And  (iPos < 15) Then
             Val := Val + Apparition[iPos]
         Else Val := Val + 0;
         //
       End;
       //
       DMZadM.FDTabCoran.Edit;
       DMZadM.FDTabCoran.FieldByName('VALEUR').AsInteger := Val;
       DMZadM.FDTabCoran.Post;
       //
     End;
     DMZadM.FDTabCoran.Next;
   End;
   //
   DMZadM.FDTabCoran.Edit;
   DMZadM.FDTabCoran.FieldByName('VALEUR').AsInteger := Val;
   DMZadM.FDTabCoran.Post;
   //
   ShowMessage('Opération de calcul des valeurs terminée ...');
End;






procedure TFormEditCoran.DBGrid3TitleClick(Column: TColumn);
Var
  StrSql : String;
Begin
  //
  DMZadM.FDQueryCoran.Close;
  DMZadM.FDQueryCoran.Sql.Clear;
  //
  StrSql := 'Select * From Quran';
  //
  If nCol = -1 Then nCol := 0;
  If nCol =  0 Then  StrSql := StrSql + ' Order By LINENO ASC ';
  If nCol =  1 Then  StrSql := StrSql + ' Order By NameSora ASC';
  If nCol =  2 Then  StrSql := StrSql + ' Order By SORANO ASC';
  If nCol =  3 Then  StrSql := StrSql + ' Order By AIANO ASC';
  If nCol =  4 Then  StrSql := StrSql + ' Order By NBHARF ASC';
  If nCol =  5 Then  StrSql := StrSql + ' Order By NBKALIMA ASC';
  //
  DMZadM.FDQueryCoran.Sql.Add(strSql);
  DMZadM.FDQueryCoran.Close;
  DMZadM.FDQueryCoran.Open;
End;






procedure TFormEditCoran.Button26Click(Sender: TObject);
Var
  i, Val, iSORA: Integer;

Begin
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  DMZadM.FDSoraName.Open;
  //
  iSORA := DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger;
  Val   := 0;
  //
  While Not (DMZadM.FDTabCoran.EoF) DO               // Debut Lecture FDTabCoran
    Begin
      //
      If iSora <> DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger Then
        Begin
          If DMZadM.FDSoraName.FindKey([iSora]) Then
             Begin
               DMZadM.FDSoraName.Edit;
               DMZadM.FDSoraName.FieldByName('VALEUR').AsInteger := Val;
               DMZadM.FDSoraName.Post;
               //
               Val   := 0;
               iSORA := DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger;
               //
               Val := Val + DMZadM.FDTabCoran.FieldByName('VALEUR').AsInteger;
             End;
        End
      Else
        Val := Val + DMZadM.FDTabCoran.FieldByName('VALEUR').AsInteger;
      //
      DMZadM.FDTabCoran.Next;
    End;
    //
    If DMZadM.FDSoraName.FindKey([iSora]) Then
      Begin
        DMZadM.FDSoraName.Edit;
        DMZadM.FDSoraName.FieldByName('VALEUR').AsInteger := Val;
        DMZadM.FDSoraName.Post;
      End;  
   //
   ShowMessage('Opération de calcul des valeurs terminée ...');
   //
End;









procedure TFormEditCoran.DBGrid2ColEnter(Sender: TObject);
begin
  //
  nCol := DBGrid2.SelectedIndex;             // N° de colonne sélectionnée
end;






procedure TFormEditCoran.DBGrid2TitleClick(Column: TColumn);
Var
  StrSql : String;
Begin
  //
  DMZadM.FDQuerySora.Close;
  DMZadM.FDQuerySora.Sql.Clear;
  //
  StrSql := 'Select * From Sora';
  //
  If nCol = -1 Then nCol := 1;
  //
  If nCol = 0 Then StrSql := StrSql + ' Order By SORANO'
     Else
       If nCol = 1 Then StrSql := StrSql + ' Order By NAME'
       Else
         If nCol = 2 Then StrSql := StrSql + ' Order By AiaCount'
         Else
           If nCol = 3 Then  StrSql := StrSql + ' Order By KalimaCount'
           Else
            If nCol = 4 Then StrSql := StrSql + ' Order By HarfCount'
            Else
              If nCol = 5 Then StrSql := StrSql + ' Order By LIEUNouzoul'
              Else
                If nCol = 6 Then  StrSql := StrSql + ' Order By OrdreMushaf'
                Else
                 If nCol = 7 Then StrSql := StrSql + ' Order By OrdreNouzoul'   // If nCol = 9 Then
                    Else
                       StrSql := StrSql + ' Order By VALEUR';

  //
  DMZadM.FDQuerySora.Sql.Add(strSql);
  DMZadM.FDQuerySora.Close;
  DMZadM.FDQuerySora.Open;
End;







procedure TFormEditCoran.RadioGroup1Click(Sender: TObject);
Var
  StrSql : String;
  iSora  : Integer;
begin
  //
  DMZadM.FDQuerySora.Open;
  DMZadM.FDQSoraHarf.Open;
  //
  StrSql := 'Select * From Sora';
  iSora  := DMZadM.FDQSoraHarf.FieldByName('SORANO').AsInteger;
  //
  if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'المصحف' then
       StrSql := StrSql + ' Order By SoraNo';
  if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'النزول' then
       StrSql := StrSql + ' Order By OrdreNouzoul';
  if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'مكان النزول' then
       StrSql := StrSql + ' Order By LieuNouzoul';
  if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'عدد الآيات' then
       StrSql := StrSql + ' Order By AiaCount';
  //     
  if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'عدد الكلمات' then
       StrSql := StrSql + ' Order By KalimaCount';
  if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'عدد الحروف' then
       StrSql := StrSql + ' Order By HarfCount';
  if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'القيمة العددية' then
       StrSql := StrSql + ' Order By Valeur';
  //
  DMZadM.FDQuerySora.Close;
  DMZadM.FDQuerySora.Sql.Clear;
  DMZadM.FDQuerySora.Sql.Add(strSql);
  //
  DMZadM.FDQuerySora.Close;
  DMZadM.FDQuerySora.Open;
  //
  // Afficher le nombre des HARFs d'une SORA
  //
  if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'عدد كل حرف في السورة' then
     Begin
       StrSql := 'SELECT * FROM SoraHarf  WHERE  SoraHarf.SORANO = :Number';
       //
       DMZadM.FDQSoraHarf.Close;
       DMZadM.FDQSoraHarf.Sql.Clear;
       DMZadM.FDQSoraHarf.Sql.Add(strSql);
       DMZadM.FDQSoraHarf.Params[0].AsInteger := StrToInt(Edit1.Text);
       //
       DMZadM.FDQSoraHarf.Close;
       DMZadM.FDQSoraHarf.Open;
     End;

end;






procedure TFormEditCoran.DBGrid2CellClick(Column: TColumn);
Var
  iSora : Integer;
  StrSql : String;
begin
  Edit1.Text := DMZadM.FDQuerySora.fieldbyname('SoraNo').AsString;
  //iSora := StrToInt(Edit1.Text);
  //
  // Afficher le nombre des HARFs d'une SORA
  //
  if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'عدد كل حرف في السورة' then
     Begin
       StrSql := 'SELECT * FROM SoraHarf  WHERE  SoraHarf.SORANO = :Number';
       //
       DMZadM.FDQSoraHarf.Close;
       DMZadM.FDQSoraHarf.Sql.Clear;
       DMZadM.FDQSoraHarf.Sql.Add(strSql);
       DMZadM.FDQSoraHarf.Params[0].AsInteger := StrToInt(Edit1.Text);
       //
       DMZadM.FDQSoraHarf.Close;
       DMZadM.FDQSoraHarf.Open;
     End;
end;









procedure TFormEditCoran.ButtonLoadFilClick(Sender: TObject);
Var
 i,k : Integer;
 s1,s2 : String;
begin
  DMZadM.FDTabCoran.Open;
  DMZadM.FDTabCoran.First;
  i := 0;
  //
  if MessageDlg('Charger le fichier ' + OpenDialog.FileName + '?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    For k := 1 to mTexteCoran.Lines.Count Do
      Begin
        s1 := mTexteCoran.Lines[k];
        s2 := copy(s1,0,1);
        //
        If pos(s2, '123456789') > 0 then
          begin
            DMZadM.FDTabCoran.Edit;
            DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString := '';
            DMZadM.FDTabCoran.FieldByName('AIAMADINA').AsString := mTexteCoran.Lines[k+1];
            //
            DMZadM.FDTabCoran.FieldByName('AIACHAKLE').AsString := '';
            DMZadM.FDTabCoran.FieldByName('AIACHAKLE').AsString := mTexteCoran.Lines[k+1];
            //
            DMZadM.FDTabCoran.Post;
            DMZadM.FDTabCoran.Next;
            //
          end;
          //
          Edit1.Text := IntToStr(k);
      end;
      //
  end;
end;




//
// Charger Table des SORATE dans "StringGrid"
//
procedure TFormEditCoran.Button2Click(Sender: TObject);
var
  i, j : integer;
begin
  j := 0;
  With DMZadM.FDSoraName do
    begin
      //Last; //<--- pour être sûr que ça récupère le nombre total d'eneregistrement avec recordcount
      First;
      Stringgrid1.RowCount := Recordcount + 1;
      Stringgrid1.ColCount := Fieldcount;

      // récupération des noms des champs de la table
      for i := 0 to Fieldcount - 1 do
        Stringgrid1.Cells[i,0] := Fields.Fields[i].DisplayName;

      While not EOF do
          begin
           // récupération des champs
            For i := 0 to FieldCount - 1 do
              Stringgrid1.Cells[i,j] := Fields.Fields[i].AsString;
            next; // passer à l'enregistrement suivant;
            j:= j + 1;
          end; // while
    end; // with
end;








//
//  procedure SaveToCSVFile
//
procedure TFormEditCoran.SaveToCSVFile(const AFileName: TFileName);
var
  RowValue: string;
  DataCols, I: Integer;
  Stream: TMemoryStream;
  function DblQuotedStr(const Value: string): string;
  begin
    Result := '"' + Value + '"';
  end;
  function AddToString(const ABaseValue, AFieldValue: string): string;
  begin
    if ABaseValue = '' then
       Result := DblQuotedStr(AFieldValue)
    else
      Result := ABaseValue + ',' + DblQuotedStr(AFieldValue);
  end;
begin
  DataCols := DMZadM.FDQueryCoran.FieldCount;

  Stream := TMemoryStream.Create;
  try
    //write the titles
    for I := 0 to DataCols - 1 do
      RowValue := AddToString(RowValue, DMZadM.FDQueryCoran.Fields[I].FieldName);
    RowValue := RowValue + #13#10;
    Stream.Write(Pointer(RowValue)^, Length(RowValue) * SizeOf(Char));

    //write data
    DMZadM.FDQueryCoran.DisableControls;
    DMZadM.FDQueryCoran.First;
    while not DMZadM.FDQueryCoran.Eof do
    begin
      RowValue := '';
      for I := 0 to DataCols - 1 do
        RowValue := AddToString(RowValue, DMZadM.FDQueryCoran.Fields[I].AsString);
      RowValue := RowValue + #13#10;
      Stream.Write(Pointer(RowValue)^, Length(RowValue) * SizeOf(Char));

      DMZadM.FDQueryCoran.Next;
    end;

    Stream.SaveToFile(AFileName);
  finally
    FreeAndNil(Stream);
  end;
end;




{ var
   i: Integer;
 ....
 // delete all rows, where ID = 100, without navigating through dataset
 for i := FDQuery1.Table.Rows.Count - 1 downto 0 do
   if FDQuery1.Table.Rows[i].GetData('id') = 100 then
     FDQuery1.Table.Rows[i].Delete;
 FDQuery1.Resync([]);}


//
//  procedure SaveToExcelFile
//
procedure TFormEditCoran.SaveToExcelFile(const AFileName: TFileName);
const
  Worksheet = -4167;
var
  Row, Col: Integer;
  Excel, Sheet, Data: OLEVariant;
  I, J, DataCols, DataRows: Integer;
begin
  DataCols := DMZadM.FDQueryCoran.FieldCount;
  //DMZadM.FDQueryCoran.Last;
  DataRows := DMZadM.FDQueryCoran.Table.Rows.Count;  //.RecNo + 1; //1 for the title
  DMZadM.FDQueryCoran.First;

  //Create a variant array the size of your data
  Data := VarArrayCreate([1, DataRows, 1, DataCols], varVariant);

  //write the titles
  for I := 0 to DataCols - 1 do
    Data[1, I+1] := DMZadM.FDQueryCoran.Fields[I].FieldName;

  //write data
  J := 1;
  DMZadM.FDQueryCoran.First;
  while (not DMZadM.FDQueryCoran.Eof) and (J < DataRows) do
  begin
    for I := 0 to DataCols - 1 do
      Data[J + 1, I + 1] := DMZadM.FDQueryCoran.Fields[I].Value;
    Inc(J);
    DMZadM.FDQueryCoran.Next;
  end;

  //Create Excel-OLE Object
  Excel := CreateOleObject('Excel.Application');
  try
    //Don't show excel
    Excel.Visible := False;

    Excel.Workbooks.Add(Worksheet);
    Sheet := Excel.Workbooks[1].WorkSheets[1];
    Sheet.Name := 'Sheet1';
    //Fill up the sheet
    Sheet.Range[RefToCell(1, 1), RefToCell(DataRows, DataCols)].Value := Data;
    //Save Excel Worksheet
    try
      Excel.Workbooks[1].SaveAs(AFileName);
    except
      on E: Exception do
        raise Exception.Create('Data transfer error: ' + E.Message);
    end;
  finally
    if not VarIsEmpty(Excel) then
    begin
      Excel.DisplayAlerts := False;
      Excel.Quit;
      Excel := Unassigned;
      Sheet := Unassigned;
    end;
  end;
end;

end.

Select all

Open in new window
object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 365
  ClientWidth = 637
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 24
    Top = 16
    Width = 593
    Height = 265
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 144
    Top = 294
    Width = 113
    Height = 49
    Caption = 'Export'
    TabOrder = 1
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 24
    Top = 288
    Width = 97
    Height = 55
    Caption = 'Format'
    ItemIndex = 0
    Items.Strings = (
      'Excel'
      'CSV')
    TabOrder = 2
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 168
    Top = 24
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel Files|*.xls|*.xlsx'
    Left = 232
    Top = 24
  end
end



End.
