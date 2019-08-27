unit UMotsCORANTZ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Grids, DBGrids, DB, DBClient, DateUtils, ComObj, ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, KQSearch;

type
  TFormMotsCoranTZ = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid4: TDBGrid;
    StatusBar1: TStatusBar;
    Label3: TLabel;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    StatusBar2: TStatusBar;
    Label4: TLabel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    StatusBar3: TStatusBar;
    Label5: TLabel;
    Panel6: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button24: TButton;
    Panel7: TPanel;
    Button5: TButton;
    Button6: TButton;
    Button4: TButton;
    Button9: TButton;
    Panel8: TPanel;
    Button7: TButton;
    Button12: TButton;
    Button8: TButton;
    Panel9: TPanel;
    Button3: TButton;
    Button10: TButton;
    eNbreMOT: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    eNbreHARF: TEdit;
    eDicMOT: TEdit;
    Button13: TButton;
    Button14: TButton;
    Panel10: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Button15: TButton;
    eTexte: TEdit;
    eRech: TEdit;
    ePos: TEdit;
    eInsert: TEdit;
    ProgressBar1: TProgressBar;
    MemoTZ: TMemo;
    Button19: TButton;
    Button20: TButton;
    StringGrid1: TStringGrid;
    Button22: TButton;
    Button11: TButton;
    DBGrid3: TDBGrid;
    Button16: TButton;
    RadioGroup1: TRadioGroup;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid4ColEnter(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure DBGrid2ColEnter(Sender: TObject);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure Button24Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
  private
    { Déclarations privées }
    procedure SaveToCSVFile(const AFileName: TFileName);
    procedure SaveToExcelFile(const AFileName: TFileName);
  public
    { Déclarations publiques }
  end;

var
  FormMotsCoranTZ: TFormMotsCoranTZ;
  nCol : Integer;

implementation

uses UDMZadM;

{$R *.DFM}


function RefToCell(ARow, ACol: Integer): string;
begin
  Result := Chr(Ord('A') + ACol - 1) + IntToStr(ARow);
end;


{*************************************************************
 *    Copy the Data of a StringGrid to a Excel File
 *    Parameters:
 *
 *************************************************************}
function StringGrid_To_XLS(AGrid: TStringGrid; AXLSFile: string; SheetIndex : Integer): Boolean;
const  xlWBATWorksheet = -4167;
var
  XLApp, Sheet : OLEVariant;
  Data         : OLEVariant;
  RangeMatrix  : Variant;
  x, y, k, r   : Integer;
  NewFileFlag  : Boolean;
begin
  Result := False;

  // Create Excel-OLE Object
  XLApp := CreateOleObject('Excel.Application');

  try
    // Hide Excel
    XLApp.Visible := False;

  // Open the Workbook
  if  FileExists (AXLSFile) then
          begin
            XLApp.Workbooks.Open(AXLSFile);
          end
          else
           begin
             //  new Workbook with 4 Sheets
             XLApp.Application.SheetsInNewWorkbook := 4;
             XLApp.Workbooks.Add;
             NewFileFlag := true;
           end;

    // Sheet := XLApp.Workbooks[1].WorkSheets[?];
    Sheet := XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[SheetIndex];

    // In order to know the dimension of the WorkSheet, i.e the number of rows
    // and the number of columns, we activate the last non-empty cell of it

    x:=AGrid.RowCount;
    y:=AGrid.ColCount;



    //  Define the loop for filling sheet with data from the
    //  TStringGrid
    Data := VarArrayCreate([1, AGrid.RowCount+1, 1, AGrid.ColCount+1], varVariant);

    k := 0;
    repeat
      for r := 0 to y do
                Data[K+1, R+1]:=   AGrid.Cells[r,k];
        Inc(k, 1);

    until k = x;

  // Fill up the sheet
  Sheet.Range[RefToCell(1, 1), RefToCell(AGrid.RowCount+1, AGrid.ColCount+1)].Value := Data;

  finally
    // Quit Excel
    if not VarIsEmpty(XLApp) then
    begin
      // XLApp.DisplayAlerts := False;
      if  NewFileFlag = true then
           XLApp.ActiveWorkbook.SaveAs(AXLSFile)
           else
           XLApp.Quit;

      XLAPP := Unassigned;
      Sheet := Unassigned;
      Result := True;
    end;
  end;
end;




//
//  حساب عدد كلمات القرآن
//
procedure TFormMotsCoranTZ.Button1Click(Sender: TObject);
Var
  Texte_aya, Mot, Harf, PosHarf, cAbrege : String;
  i, j, nbreMot, NumMOT, iLine, iSORA, iAIA, iMOT, nHarf, NumHarf : Integer;
  PosHarfAya, PosHarfMot, PosHarfSora, PosHarfQuran : Integer;

Begin
  DMZadM.FDTabCoran.Open;       // Num - sorano - aiano - AIA
  DMZadM.FDTabCoran.First;
  //
  DMZadM.FDqmotTZ.Open;         // Num - sorano - aiano - MotNO - NbreHARF
  //
  nHarf   := 0;
  nbreMot := 0;
  j := 0;
  //
  with ProgressBar1 do
    begin
      Min := 0;
      Max := DMZadM.FDTabCoran.RecordCount - 1;
      DMZadM.FDTabCoran.First;
      for j := Min to Max do
      begin
        Position := j;
        Application.ProcessMessages;
        //
        Texte_aya := '';
        Texte_aya := TRIM(DMZadM.FDTabCoran.FieldByName('AIATANZIL').AsString);
        iSORA     := DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger;
        iAIA      := DMZadM.FDTabCoran.FieldByName('AIANO').AsInteger;
        iLine     := DMZadM.FDTabCoran.FieldByName('LINENO').AsInteger;
        nbreMot   := 1;
        nHarf     := 0;
        Mot       := '';
        //
        For i:=1 To Length(Texte_aya) Do                // traitement AYA
         Begin
          //
          If Texte_aya[i] <> ' '   Then                 // Traitement MOT
             Begin
               Mot := Mot + Texte_aya[i];
               nHarf := nHarf + 1;                       // Nbre de Harf par mot
             End
          Else
             Begin
               // Ajout nouveau MOT dans la base MOT
              DMZadM.FDqmotTZ.Insert;
              DMZadM.FDqmotTZ.FieldByName('MOT').AsString := Mot;
              DMZadM.FDqmotTZ.FieldByName('AIANO').AsInteger := iAIA;
              DMZadM.FDqmotTZ.FieldByName('SORANO').AsInteger := iSORA;
              DMZadM.FDqmotTZ.FieldByName('LINENO').AsInteger := iLine;
              DMZadM.FDqmotTZ.FieldByName('NBHARF').AsInteger := nHarf;
              DMZadM.FDqmotTZ.Post;
              //
              nbreMot := nbreMot + 1;           // Nbre de mots
              nHarf := 0;
              Mot := '';
              //
             End;
          End;       // Fin Boucle /// For i:=1 To Length(Texte_aya) Do
         //
         DMZadM.FDqmotTZ.Insert;
         DMZadM.FDqmotTZ.FieldByName('MOT').AsString := Mot;
         DMZadM.FDqmotTZ.FieldByName('AIANO').AsInteger := iAIA;
         DMZadM.FDqmotTZ.FieldByName('SORANO').AsInteger := iSORA;
         DMZadM.FDqmotTZ.FieldByName('NBHARF').AsInteger := nHarf;
         DMZadM.FDqmotTZ.FieldByName('LINENO').AsInteger := iLine;
         DMZadM.FDqmotTZ.Post;
         //
         DMZadM.FDTabcoran.Next;
      end;
    end;
   //
   ShowMessage('Opération terminée ...');
End;





//
// Concaténation des codes de caractères du Coran
// Le nombre obtenu sera sur le fichier texte 'cHarfTZ.txt'
//
procedure TFormMotsCoranTZ.Button20Click(Sender: TObject);
Var
  StrSql : String;
  Somme, i  : Integer;
     F2  : TextFile;
     Ch  : String;
Begin
  // Assignation du fichier TEXTE
  AssignFile(F2,'cHarfTZ.txt');
  Rewrite(F2);
  i := 1;
  //
  DMZadM.FDQTabHarfTZ.first;
  //
  While Not (DMZadM.FDQTabHarfTZ.EoF) DO
   Begin
     Ch := IntToStr(DMZadM.FDQTabHarfTZ.FieldByName('cHarf').AsInteger);      // Lecture d'un code de caractère à partir de la base
     Write(F2,Ch);                                                            // Ecriture du code de caractere sur le fichier texte
     eTexte.Text := IntToStr(i);
     i:= i + 1;
     Application.ProcessMessages;
     DMZadM.FDQTabHarfTZ.Next;
   End;
   //
   CloseFile(F2);                                                             // Fermeture du fichier texte
end;









//
// Remplissage du StrinGrid1 avec les caractères du Coran
// en ligne de 19 caractères
//
procedure TFormMotsCoranTZ.Button22Click(Sender: TObject);
Var
  i : integer;             // i : colonnes
  j : integer;             // j : lignes

begin
  j := 1;
  With DMZadM.FDQTabHarfTZ do
    begin
      First;
      Stringgrid1.RowCount := Round(Recordcount / 19)+2;
      Stringgrid1.ColCount := 19;
      //
      // Remplissage de la 1ère ligne : Noms des colonnes
    For i := 0 to 18 do
         Stringgrid1.Cells[i,0] := 'H'+IntToStr(i);

      While not EOF Do
          Begin
           // Remplissage du Tableau avec les caractères
            For i := 0 To 18 Do
              Begin
                Stringgrid1.Cells[i,j] := FieldByName('HARF').AsString;
                next;                           // passer à l'enregistrement suivant
              End;
              j:= j + 1;
          End;    // while
    End;   // with
End;









procedure TFormMotsCoranTZ.Button2Click(Sender: TObject);
begin
  //
  {DMZadM.TabMOT.Close;
  with DMZadM.TabMOT do
    begin
      Active := False;
      DatabaseName := 'ZemZem';
      TableName := 'QuranMOT';
      TableType := ttParadox;
      EmptyTable;
    end; }
  //
end;






Procedure TFormMotsCoranTZ.Button3Click(Sender: TObject);
Begin
 { DMZadM.TabCoran.Close;
  DMZadM.TabMOT.Close;
  DMZadM.FDTabHARFkaw.Close;
  DMZadM.TabDicMOT.Close;
  //
  DMZadM.FDQueryCoran.Close;
  DMZadM.FDQTabMOT.Close;
  DMZadM.QFDTabHARFkaw.Close;
  DMZadM.QDicMOT.Close;
  // }
  Close;
end;









procedure TFormMotsCoranTZ.Button5Click(Sender: TObject);
begin
  {DMZadM.FDTabHARFkaw.Close;
  with DMZadM.FDTabHARFkaw do
    begin
      Active := False;
      DatabaseName := 'ZemZem';
      TableName := 'QHarfkaw';
      TableType := ttParadox;
      EmptyTable;
    end;  }
  //
end;




//
// تعبئة حروف القرآن
//
procedure TFormMotsCoranTZ.Button6Click(Sender: TObject);
Var
  Texte_aya : String;
  i, j, NumMOT, iSORA, iAIA, iLine, nHarf, nHarfs : Integer;
  iPosHarfQ, iPosHarfS, iPosHarfA, iPosHarfM, iSpace : Integer;
  iH10, iH21, iH14 : Integer;
  Min, Max : Integer;

Begin
  DMZadM.FDTabCoran.Open;       // Ouverture de la table contenant le texte du Coran Karim
  DMZadM.FDTabCoran.First;
  //
  DMZadM.FDTabHarfTZ.Open;        // Ouverture de la table des hourouf du Coran Karim
  //
  nHarf   := 1;        // N° Harf sans espace entre les mots
  nHarfs  := 1;        // N° Harf avec espace entre les mots
  numMot  := 1;
  iSpace  := 1;
  j := 0;
  //
  //with ProgressBar1 do
    //begin
      Min := 1;
      Max := DMZadM.FDTabCoran.RecordCount;
      DMZadM.FDTabCoran.First;
      //
      For j := Min to Max do
       Begin
        //Position := j;
        //Application.ProcessMessages;
        //
        Texte_aya := '';
        Texte_aya := TRIM(DMZadM.FDTabCoran.FieldByName('AIATANZIL').AsString);      // الآية
        iAIA      := DMZadM.FDTabCoran.FieldByName('AIANO').AsInteger;;              // رقم الآية
        iSORA     := DMZadM.FDTabCoran.FieldByName('SORANO').AsInteger;              // رقم السورة
        iLine     := DMZadM.FDTabCoran.FieldByName('LINEAIA').AsInteger;             // ترتيب الأية في مجمل نص القرآن الكريم
        //
        For i:=1 To Length(Texte_aya) Do           // traitement AYA
         Begin
           If Texte_aya[i] = ' '   Then
             Begin
                NumMOT := NumMOT + 1;
             End
           Else
             begin
               DMZadM.FDTabHarfTZ.Insert;
               DMZadM.FDTabHarfTZ.FieldByName('NUM').AsInteger    := nHarf;
               //
               DMZadM.FDTabHarfTZ.FieldByName('HARF').AsString      := Texte_aya[i];        // الحرف
               DMZadM.FDTabHarfTZ.FieldByName('AIANO').AsInteger    := iAIA;                // رقم الآية
               DMZadM.FDTabHarfTZ.FieldByName('SORANO').AsInteger   := iSORA;               // رقم السورة
               DMZadM.FDTabHarfTZ.FieldByName('MOTNO').AsInteger    := NumMOT;              // رقم الكلمة
               DMZadM.FDTabHarfTZ.FieldByName('LINENO').AsInteger   := iLine;               // ترتيب الأية في مجمل نص القرآن الك
               //
               DMZadM.FDTabHarfTZ.FieldByName('NumHarf').AsInteger  := nHarf;  // iPOSHARFQ;         // ترتيب الحرف في القرآن
               DMZadM.FDTabHarfTZ.FieldByName('PHQ').AsInteger := nHarf;      // iPOSHARFQ;         // ترتيب الحرف في القرآن
               DMZadM.FDTabHarfTZ.FieldByName('PHS').AsInteger := nHarf;      // iPOSHARFS;          // ترتيب الحرف في السورة
               DMZadM.FDTabHarfTZ.FieldByName('PHA').AsInteger := nHarf;      // iPOSHARFA;          // ترتيب الحرف في الآية
               DMZadM.FDTabHarfTZ.FieldByName('PHM').AsInteger := nHarf;      // iPOSHARFM;         // ترتيب الحرف في الكلمة
               //
               If Pos(Texte_aya[i], 'بسنهيحرامل') <> 0 Then
                    iH10 := 1
               Else iH10 := 0;
               If Pos(Texte_aya[i], 'ذقصضطغتسكبدوحهعرنيمال') <> 0 Then
                    iH21 := 1
               Else iH21 := 0;
               If Pos(Texte_aya[i], 'المصركهيعطسحقن') <> 0 Then
                    iH14 := 1
               Else iH14 := 0;
               //
               DMZadM.FDTabHarfTZ.FieldByName('H10').AsInteger := iH10;                // الحرف ينتمي الى مجموعة حروف البسملة
               DMZadM.FDTabHarfTZ.FieldByName('H21').AsInteger := iH21;                // الحرف ينتمي الى مجموعة حروف الفاتحة
               DMZadM.FDTabHarfTZ.FieldByName('H14').AsInteger := iH14;                // الحرف ينتمي الى مجموعة حروف الفواتيح
               //
               DMZadM.FDTabHarfTZ.Post;
               nHarf := nHarf + 1;
             end;
           //
         End;
         //
         NumMOT := NumMOT + 1;
         DMZadM.FDTabcoran.Next;
         //
       End;
       //
     //End;       //ProgressBar
End;




//
// تعبئة مواقع الحروف
//
// Remplissage des champs de position des HARFs
//
procedure TFormMotsCoranTZ.Button14Click(Sender: TObject);
Var
  cHarf : String;
  i, j, iMot, iSora, iAia, nMot, nSora, nAia : Integer;
  iPHQ, iPHS, iPHA, iPHM : Integer;
  Min, Max : Integer;

Begin
  DMZadM.FDTabHarfTZ.Open;            // Ouverture de la table contenant le texte du Coran Karim
  DMZadM.FDTabHarfTZ.First;
  //
  iSora := 1;
  iMot  := 1;
  iAia  := 1;
  i := 0;
  j := 0;
  iPHS :=1;
  iPHA :=1;
  iPHM :=1;
  //
  With ProgressBar1 do
    begin
      Min := 1;
      Max := DMZadM.FDTabHarfTZ.RecordCount;
      DMZadM.FDTabHarfTZ.First;
      //
      nSora := DMZadM.FDTabHarfTZ.FieldByName('SORANO').AsInteger;              // رقم السورة
      nAia  := DMZadM.FDTabHarfTZ.FieldByName('AIANO').AsInteger;               // رقم الآية
      nMot  := DMZadM.FDTabHarfTZ.FieldByName('MOTNO').AsInteger;               // رقم الكلمة
      //
      For i := Min to Max do
       Begin
        Position := i;
        Application.ProcessMessages;
        //
        cHarf := '';
        cHarf := TRIM(DMZadM.FDTabHarfTZ.FieldByName('HARF').AsString);           // الآية
        iPHQ  := DMZadM.FDTabHarfTZ.FieldByName('NumHarf').AsInteger;
        //
        If nSora <> DMZadM.FDTabHarfTZ.FieldByName('SORANO').AsInteger  Then
           Begin
            nSora := DMZadM.FDTabHarfTZ.FieldByName('SORANO').AsInteger;
            iPHS :=1;
           End;
        If nAia <> DMZadM.FDTabHarfTZ.FieldByName('AIANO').AsInteger  Then
           Begin
            nAia := DMZadM.FDTabHarfTZ.FieldByName('AIANO').AsInteger;
            iPHA :=1;
           End;
        If nMot <> DMZadM.FDTabHarfTZ.FieldByName('MOTNO').AsInteger  Then
           Begin
            nMot := DMZadM.FDTabHarfTZ.FieldByName('MOTNO').AsInteger;
            iPHM :=1;
           End;
        //
        DMZadM.FDTabHarfTZ.Edit;
        DMZadM.FDTabHarfTZ.FieldByName('PHQ').AsInteger := iPHQ;             // iPOSHARFQ;          // ترتيب الحرف في القرآن
        DMZadM.FDTabHarfTZ.FieldByName('PHS').AsInteger := iPHS;             // iPOSHARFS;          // ترتيب الحرف في السورة
        DMZadM.FDTabHarfTZ.FieldByName('PHA').AsInteger := iPHA;             // iPOSHARFA;          // ترتيب الحرف في الآية
        DMZadM.FDTabHarfTZ.FieldByName('PHM').AsInteger := iPHM;             // iPOSHARFM;          // ترتيب الحرف في الكلمة
        DMZadM.FDTabHarfTZ.Post;
        DMZadM.FDTabHarfTZ.Next;
        //
        iPHS := iPHS + 1;
        iPHA := iPHA + 1;
        iPHM := iPHM + 1;
        //
       End;
       //
     End;       //ProgressBar
End;






// Export DBGRID vers Excel ou CSV
procedure TFormMotsCoranTZ.Button16Click(Sender: TObject);
var
  sPath : String;

begin
  sPath := ExtractFilePath(Application.ExeName);
  sPath := sPath + 'Data\Out\';
  //
  case RadioGroup1.ItemIndex of
    0:
    begin
      SaveDialog1.Filter := 'Excel File|*.xls';
      if SaveDialog1.Execute then
        SaveToExcelFile(SaveDialog1.FileName);
    end;
    1:
    begin
      SaveDialog1.Filter := 'Comma Delimited|*.csv';
      if SaveDialog1.Execute then
        SaveToCSVFile(SaveDialog1.FileName);
    end;
  end;
end;




//
// Somme des codes de caractères du Coran
// Le code du caractère c'est sa position dans l'alphabet arabe
//
procedure TFormMotsCoranTZ.Button19Click(Sender: TObject);
Var
  StrSql : String;
  Somme  : Integer;

Begin
  Somme := 0;
  //
  (*DMZadM.FDQTabHarfTZ.Close;
  DMZadM.FDQTabHarfTZ.Sql.Clear;
  //
  StrSql := 'Select SUM(cHarf) AS Somme_Tot From qharfTZ';                              // Somme de la colonne
  //StrSql := 'Select SORANO, SUM(cHarf) AS Somme_Tot From qharftz GROUP BY SORANO';    // Somme de la colonne regroupée par SORANO
  //
  DMZadM.FDQTabHarfTZ.Sql.Add(strSql);
  DMZadM.FDQTabHarfTZ.OpenOrExecute;
  //
  ShowMessage(IntToStr(Somme_Tot));  *)
  //
  // Boucle pour vérifier le résultat avec les commandes d'agrégations
  While Not (DMZadM.FDQTabHarfTZ.EoF) DO
   Begin
    //
    Somme := Somme + DMZadM.FDQTabHarfTZ.FieldByName('cHarf').AsInteger;
    DMZadM.FDQTabHarfTZ.Next;
    //
    eTexte.Text := IntToStr(Somme);
    Application.ProcessMessages;
   End;
    //
    eTexte.Text := IntToStr(Somme);
end;

//
// TRI par colonne de TITRE
//
procedure TFormMotsCoranTZ.DBGrid1TitleClick(Column: TColumn);
Var
  StrSql : String;
Begin
  //
  DMZadM.FDQTabMOT.Close;
  DMZadM.FDQTabMOT.Sql.Clear;
  //
  StrSql := 'Select * From QuranMOT';
  //
  //  DBGridAdr.Columns[nCol].Title.Caption = 'Sigle'
  //
  If nCol = -1  Then nCol := 1;
  If nCol =  0  Then StrSql := StrSql + ' Order By NUM'
  Else
    If nCol =  1  Then  StrSql := StrSql + ' Order By SORANO' + ' Desc'
       Else
         If nCol =  2  Then  StrSql := StrSql + ' Order By AIANO' + ' Desc'
            Else
              If nCol =  3  Then  StrSql := StrSql + ' Order By MOT' + ' Desc'
                 Else
                   If nCol =  4  Then  StrSql := StrSql + ' Order By NBHARF' + ' Desc';
  //
  DMZadM.FDQTabMOT.Sql.Add(strSql);
  DMZadM.FDQTabMOT.Close;
  DMZadM.FDQTabMOT.Open;

end;



procedure TFormMotsCoranTZ.DBGrid1ColEnter(Sender: TObject);
begin
  nCol := DBGrid1.SelectedIndex;             // N° de colonne sélectionnée
  //
end;





procedure TFormMotsCoranTZ.DBGrid4TitleClick(Column: TColumn);
Var
  StrSql : String;
Begin
  //
  DMZadM.FDQDicMOT.Close;
  DMZadM.FDQDicMOT.Sql.Clear;
  //
  StrSql := 'Select * From DicMOT';
  //
  If nCol = -1 Then nCol := 1;
  //
  If nCol = 1 Then
     StrSql := StrSql + ' Order By MOT' + ' Desc'
  Else
     StrSql := StrSql + ' Order By NBREMOT' + ' Desc';

  //
  DMZadM.FDQDicMOT.Sql.Add(strSql);
  DMZadM.FDQDicMOT.Close;
  DMZadM.FDQDicMOT.Open;
  //
end;


//
// حذف و عد الكلمات المكررة
//
procedure TFormMotsCoranTZ.Button7Click(Sender: TObject);
Var
  Mot, Mots, StrSql : String;
  nMot, iCompteur: Integer;

Begin
  DMZadM.FDqmotTZ.Close;
  DMZadM.FDQqmotTZ.Sql.Clear;
  //
  StrSql := 'Select * From QmotTZ  Order By MOT Desc';
  DMZadM.FDQqmotTZ.Sql.Add(strSql);
  DMZadM.FDQqmotTZ.Close;
  DMZadM.FDQqmotTZ.Open;
  //
  Mot := DMZadM.FDQqmotTZ.FieldByName('MOT').AsString;
  nMot := 0;
  iCompteur := 0;
  //
  While Not (DMZadM.FDQqmotTZ.EoF) DO
   Begin
    //
    Mots := DMZadM.FDQqmotTZ.FieldByName('MOT').AsString;
    //
    If Mot <> Mots Then
       Begin
         DMZadM.FDdicmotTZ.Insert;
         DMZadM.FDdicmotTZ.FieldByName('MOT').AsString := Mot;
         DMZadM.FDdicmotTZ.FieldByName('NBHARF').AsInteger := Length(Mot);
         DMZadM.FDdicmotTZ.FieldByName('NBOCC').AsInteger := nMot;
         DMZadM.FDdicmotTZ.Post;
         //
         nMot := 0;
         Mot := Mots;
       End;
   //
   DMZadM.FDQqmotTZ.Next;
   nMot := nMot + 1;
   iCompteur := iCompteur +1;
   //
   End;
   //
   DMZadM.FDdicmotTZ.Insert;
   DMZadM.FDdicmotTZ.FieldByName('MOT').AsString := Mot;
   DMZadM.FDdicmotTZ.FieldByName('NBHARF').AsInteger := Length(Mot);
   DMZadM.FDdicmotTZ.FieldByName('NBOCC').AsInteger := nMot;
   DMZadM.FDdicmotTZ.Post;
   //
   Showmessage('Nbre de mots traités : '+IntToStr(iCompteur) + ' / ' + 'Opération de Remplissage du Dictionnaire terminée!');
   //
End;




procedure TFormMotsCoranTZ.FormActivate(Sender: TObject);
begin
  //
  DMZadM.FDTabCoran.Open;
  DMZadM.FDqmotTZ.Open;
  DMZadM.FDTabHarfTZ.Open;
  DMZadM.FDdicmotTZ.Open;
  //
  DMZadM.FDQueryCoran.Open;
  DMZadM.FDQqmotTZ.Open;
  DMZadM.FDQTabHarfTZ.Open;
  DMZadM.FDQdicmotTZ.Open;
  //
  DBGrid1.Tag := 0;
  DBGrid2.Tag := 0;
  //
  StatusBar1.SimpleText := 'عدد كلمات القرآن الكريم بدون تكرار' + ' : ' + IntToStr(DMZadM.FDdicmotTZ.RecordCount);
  StatusBar2.SimpleText := ' عدد حروف القرآن الكريم' + ' : ' + IntToStr(DMZadM.FDQTabHarfTZ.RecordCount);
  StatusBar3.SimpleText := ' عدد كلمات القرآن الكريم '  + ' : '+ IntToStr(DMZadM.FDqmotTZ.RecordCount);
  //
  eNbreMOT.Text  := IntToStr(DMZadM.FDqmotTZ.RecordCount);
  eNbreHARF.Text := IntToStr(DMZadM.FDTabHarfTZ.RecordCount);
  eDicMOT.Text   := IntToStr(DMZadM.FDdicmotTZ.RecordCount);
end;



procedure TFormMotsCoranTZ.FormCreate(Sender: TObject);
begin
   KeyPreview := True;
end;

procedure TFormMotsCoranTZ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_ESCAPE then Exit;
end;

procedure TFormMotsCoranTZ.DBGrid4ColEnter(Sender: TObject);
begin
  nCol := DBGrid4.SelectedIndex;            // N° de colonne sélectionnée
end;



//
// Remplacement nbre occurrences = 0 par 1
//
procedure TFormMotsCoranTZ.Button8Click(Sender: TObject);
Var
 n : Integer;

begin
  DMZadM.FDTabDicMOT.Open;
  DMZadM.FDTabDicMOT.First;
  //
  While Not (DMZadM.FDTabDicMOT.EoF) DO
   Begin
    //
    n := DMZadM.FDTabDicMOT.FieldByName('NBREMOT').AsInteger;
    //
    If n = 0 Then
       Begin
         n := 1;
         DMZadM.FDTabDicMOT.Edit;
         DMZadM.FDTabDicMOT.FieldByName('NBREMOT').AsInteger := n;
         DMZadM.FDTabDicMOT.Post;
         //
       End;
    //
    DMZadM.FDTabDicMOT.Next;
    End;   
end;


procedure TFormMotsCoranTZ.DBGrid2ColEnter(Sender: TObject);
begin
  nCol := DBGrid2.SelectedIndex;             // N° de colonne sélectionnée
  //
end;




procedure TFormMotsCoranTZ.DBGrid2TitleClick(Column: TColumn);
Var
  StrSql : String;
Begin
  //
  DMZadM.FDQTabHarfTZ.Close;
  DMZadM.FDQTabHarfTZ.Sql.Clear;
  //
  StrSql := 'Select * From QHARFTZ';
  //
  If nCol = -1 Then nCol := 1;
  If nCol =  0 Then  StrSql := StrSql + ' Order By NumHarf ASC ';
  If nCol =  1 Then  StrSql := StrSql + ' Order By HARF ASC';
  If nCol =  2 Then  StrSql := StrSql + ' Order By SORANO ASC';
  If nCol =  3 Then  StrSql := StrSql + ' Order By AIANO ASC';
  If nCol =  4 Then  StrSql := StrSql + ' Order By MOTNO ASC';
  If nCol =  5 Then  StrSql := StrSql + ' Order By NBKALIMA ASC';
  //
  DMZadM.FDQTabHarfTZ.Sql.Add(strSql);
  DMZadM.FDQTabHarfTZ.Close;
  DMZadM.FDQTabHarfTZ.Open;
end;







procedure TFormMotsCoranTZ.Button24Click(Sender: TObject);
begin
   If DBGrid1.Tag <> 1 Then
     Begin
       DMZadM.FDQTabMOT.Open;
       DBGrid1.DataSource := DMZadM.FDDSQTabMOT;
     End
   Else
     Begin
       DMZadM.FDTabMOT.Open;
       DBGrid1.DataSource := DMZadM.FDDSTabMOT;
     End;
end;

procedure TFormMotsCoranTZ.Button9Click(Sender: TObject);
begin
   If DBGrid2.Tag <> 1 Then
     Begin
       DMZadM.FDQTabHarfTZ.Open;
       DBGrid2.DataSource := DMZadM.FDDSQTabHARFTZ;
     End
   Else
     Begin
       DMZadM.FDqmotTZ.Open;
       DBGrid2.DataSource := DMZadM.FDDSqmotTZ;
     End;
end;


procedure TFormMotsCoranTZ.Button11Click(Sender: TObject);
Var
  cAbrege, eIns, eText, eR, eP : String;
    i, iPos : Integer;
    
begin
  cAbrege := 'المصركهيعطسحقن';
  {ShowMessage(IntToStr(Length(cAbrege)));
  //
    For i:=1 To Length(cAbrege) Do
     Begin
       ShowMessage('cAbrege - Harf :  ' + cAbrege[i] + '      ' + cAbrege );
     End;}
  //
  eIns := eInsert.Text;
  eText  := eTexte.Text;
  eR   := eRech.Text;
  iPos    := StrToInt(ePos.Text);

  // Insert "eInsert" dans "eTexte" à la position "Pos(eRech, eTexte)+ ePos"
  Insert(eIns, eText, Pos(eR, eText));
  //
  eTexte.Text := eText;
  //
  ShowMessage('Test INSERT');
  // supprime une sous-chaîne de "eNbre" caractères dans la chaîne "eTexte" qui débute à la position "Pos(eRech, eTexte)+ ePos"
  Delete(eText, Pos(eR, eText), iPos);
  //
  eTexte.Text := eText;
  //
  ShowMessage('Test delete');
end;

procedure TFormMotsCoranTZ.Button12Click(Sender: TObject);
begin
  //
  {DMZadM.FDTabDicMOT.Close;
  with DMZadM.TabDicMOT do
    begin
      Active := False;
      DatabaseName := 'ZemZem';
      TableName := 'DicMOT';
      TableType := ttParadox;
      EmptyTable;
    end;    }
  //
end;






//
// Affectation à chaque alphabet arabe son rang dans l'alphabet comme code numérique
//
procedure TFormMotsCoranTZ.Button13Click(Sender: TObject);
Var
  cHarf : String;
  i : Integer;

Begin
  DMZadM.FDTabSoraHarf.Open;
  DMZadM.FDTabHARF.Open;
  //
   DMZadM.FDTabHarfTZ.Open;
   DMZadM.FDTabHarfTZ.First;
   //
   While Not (DMZadM.FDTabHarfTZ.EoF) DO
     Begin
      cHarf := '';
      cHarf := TRIM(DMZadM.FDTabHarfTZ.FieldByName('HARF').AsString);
      //
      DMZadM.FDTabHarfTZ.Edit;
      //
      If cHarf = 'ا'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='1';
      If cHarf = 'ب'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='2';
      If cHarf = 'ت'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='3';
      If cHarf = 'ث'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='4';
      If cHarf = 'ج'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='5';
      If cHarf = 'ح'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='6';
      If cHarf = 'خ'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='7';
      If cHarf = 'د'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='8';
      If cHarf = 'ذ'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='9';
      If cHarf = 'ر'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='10';
      If cHarf = 'ز'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='11';
      If cHarf = 'س'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='12';
      If cHarf = 'ش'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='13';
      If cHarf = 'ص'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='14';
      If cHarf = 'ض'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='15';
      If cHarf = 'ط'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='16';
      If cHarf = 'ظ'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='17';
      If cHarf = 'ع'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='18';

      If cHarf = 'غ'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='19';
      If cHarf = 'ف'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='20';
      If cHarf = 'ق'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='21';
      If cHarf = 'ك'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='22';
      If cHarf = 'ل'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='23';
      If cHarf = 'م'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='24';
      If cHarf = 'ن'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='25';
      If cHarf = 'ه'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='26';
      If cHarf = 'و'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='27';
      If cHarf = 'ي'  Then   DMZadM.FDTabHarfTZ.FieldByName('cHarf').AsString :='28';
      //
      DMZadM.FDTabHarfTZ.Next;
      //
     End;
 End;






procedure TFormMotsCoranTZ.DBGrid4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key >= ' ' then
    //KQuickSearch1.Activate(Key);
end;






//
//  procedure SaveToCSVFile
//
procedure TFormMotsCoranTZ.SaveToCSVFile(const AFileName: TFileName);
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
  DataCols := DMZadM.FDTabHarfTZ.FieldCount;

  Stream := TMemoryStream.Create;
  try
    //write the titles
    for I := 0 to DataCols - 1 do
      RowValue := AddToString(RowValue, DMZadM.FDTabHarfTZ.Fields[I].FieldName);
    RowValue := RowValue + #13#10;
    Stream.Write(Pointer(RowValue)^, Length(RowValue) * SizeOf(Char));

    //write data
    DMZadM.FDTabHarfTZ.DisableControls;
    DMZadM.FDTabHarfTZ.First;
    while not DMZadM.FDTabHarfTZ.Eof do
    begin
      RowValue := '';
      for I := 0 to DataCols - 1 do
        RowValue := AddToString(RowValue, DMZadM.FDTabHarfTZ.Fields[I].AsString);
      RowValue := RowValue + #13#10;
      Stream.Write(Pointer(RowValue)^, Length(RowValue) * SizeOf(Char));

      DMZadM.FDTabHarfTZ.Next;
    end;

    Stream.SaveToFile(AFileName);
  finally
    FreeAndNil(Stream);
  end;
end;




//
//  procedure SaveToExcelFile
//
procedure TFormMotsCoranTZ.SaveToExcelFile(const AFileName: TFileName);
const
  Worksheet = -4167;
var
  Row, Col: Integer;
  Excel, Sheet, Data: OLEVariant;
  I, J, DataCols, DataRows: Integer;
begin
  DataCols := DMZadM.FDTabHarfTZ.FieldCount;
  DataRows := DMZadM.FDTabHarfTZ.RecordCount + 1; //1 for the title

  //Create a variant array the size of your data
  Data := VarArrayCreate([1, DataRows, 1, DataCols], varVariant);

  //write the titles
  for I := 0 to DataCols - 1 do
    Data[1, I+1] := DMZadM.FDTabHarfTZ.Fields[I].FieldName;

  //write data
  J := 1;
  DMZadM.FDTabHarfTZ.First;
  while (not DMZadM.FDTabHarfTZ.Eof) and (J < DataRows) do
  begin
    for I := 0 to DataCols - 1 do
      Data[J + 1, I + 1] := DMZadM.FDTabHarfTZ.Fields[I].Value;
    Inc(J);
    DMZadM.FDTabHarfTZ.Next;
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
