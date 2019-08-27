unit ULecCoran;

interface

uses
  Windows, MMSystem, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ComCtrls,
  Menus, AppEvnts, Vcl.Tabs, Vcl.Buttons, Vcl.Imaging.pngimage, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Db, DBTables, Data.Win.ADODB, Datasnap.DBClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  FireDAC.VCLUI.Login, FireDAC.VCLUI.Wait, FireDAC.Comp.DataMove,
  FireDAC.Comp.UI, Vcl.MPlayer, System.UITypes, System.DateUtils;

type THackDBGrid = class(TDBGrid);

type
  TFormLecture = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N8: TMenuItem;
    N16: TMenuItem;
    N19: TMenuItem;
    N21: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    PopupMenu1: TPopupMenu;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N3: TMenuItem;
    StatusBar1: TStatusBar;
    ApplicationEvents1: TApplicationEvents;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    N31: TMenuItem;
    N62: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    N12: TMenuItem;
    N14: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Splitter3: TSplitter;
    Panel5: TPanel;
    Splitter4: TSplitter;
    RichEditTexteSora: TRichEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Splitter1: TSplitter;
    Splitter5: TSplitter;
    RadioGroup1: TRadioGroup;
    DateTimePickerNow: TDateTimePicker;
    lbl_Time: TLabel;
    Image2: TImage;
    ImageCadre: TImage;
    LabelNameSora: TLabel;
    LabelSora: TLabel;
    ImageFatiha: TImage;
    TimerFatiha: TTimer;
    TimerHorloge: TTimer;
    ActionListHira: TActionList;
    AfficheTexteSora: TAction;
    ImageList1: TImageList;
    DBGridSoraname: TDBGrid;
    TimerMP3: TTimer;
    MediaPlayer1: TMediaPlayer;
    N15: TMenuItem;
    edDate: TEdit;
    PageControlMaktaba: TPageControl;
    TabSheet1: TTabSheet;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton38: TSpeedButton;
    SpeedButton39: TSpeedButton;
    SpeedButton40: TSpeedButton;
    SpeedButton16: TSpeedButton;
    TabSheet5: TTabSheet;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton28: TSpeedButton;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    SpeedButton31: TSpeedButton;
    TabSheet11: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton29: TSpeedButton;
    TabSheet2: TTabSheet;
    SpeedButton33: TSpeedButton;
    TabSheet3: TTabSheet;
    Image1: TImage;
    ImagePrecedent: TImage;
    ImageLecture: TImage;
    ImagePause: TImage;
    ImageArret: TImage;
    ImageSuivant: TImage;
    Image3: TImage;
    LabelTempsMp3: TLabel;
    LabelGetLength: TLabel;
    Label2: TLabel;
    ProgressBarMP3: TProgressBar;
    TrackBarMP3: TTrackBar;
    BtnTestFont: TButton;

    procedure N21Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure ApplicationEvents1Hint(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N8Click(Sender: TObject);
    procedure BitBtnFontClick(Sender: TObject);
    procedure BtnTestFontClick(Sender: TObject);
    procedure PageControlMaktabaChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Image2DblClick(Sender: TObject);
    procedure TimerFatihaTimer(Sender: TObject);
    procedure ImageFatihaClick(Sender: TObject);
    procedure TimerHorlogeTimer(Sender: TObject);
    procedure DBGridSoranameColEnter(Sender: TObject);
    procedure DBGridSoranameTitleClick(Column: TColumn);
    procedure ImageLectureClick(Sender: TObject);
    procedure ImagePrecedentClick(Sender: TObject);
    procedure ImagePauseClick(Sender: TObject);
    procedure ImageArretClick(Sender: TObject);
    procedure ImageSuivantClick(Sender: TObject);
    procedure LectureMP3();
    procedure TimerMP3Timer(Sender: TObject);
    procedure TrackBarMP3Change(Sender: TObject);
    procedure SetMPVolume(MP : TMediaPlayer; Volume : Integer);
    procedure DBGridSoranameCellClickFD;
    procedure DBGridSoranameCellClickCDS;
    procedure DBGridSoranameCellClick(Column: TColumn);
    procedure DBGridSoranameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridSoranameDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridSoranameMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N14Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FormLecture: TFormLecture;
  nCol : Integer;



implementation


uses USplash, URecherche, UDMZadM, UAbout, UFahresN, URechAIA, UEditCoran, UMotsCORANTZ;

{$R *.dfm}



// Appel moteur de recherche
//
procedure TFormLecture.N25Click(Sender: TObject);
begin
  FormRecherche.ShowModal;
end;




//
// Restorer lalangue par défaut et Quitter l'application
//
procedure TFormLecture.N21Click(Sender: TObject);
begin
  // Choix de la langue Française
  LoadKeyboardLayout('0000040c', KLF_ACTIVATE);
  Application.BiDiKeyboard := '0000040c';
  //
  Application.Terminate;
end;




//
// Affichage de la date en langue arabe
//
procedure TFormLecture.FormCreate(Sender: TObject);
var
  DateTime: TDateTime;

begin
  FormSplash.Visible := False;
  //on affiche une première fois l'heure ... quand l'application démarre
  lbl_Time.Caption := TimeToStr(Now);
  DateTimePickerNow.Date := Now;
  //
  KeyPreview := True;
  //
  { Get the current date and time. }
  DateTime := Date + Time;
  { Write the day of the week, date and time }
  if NthDayOfWeek(DateTime) = DayMonday then
    edDate.Text := 'الإثنين, ' + DateTimeToStr(DateTime);
  if NthDayOfWeek(DateTime) = DayTuesday then
    edDate.Text := 'الثلاثاء, ' + DateTimeToStr(DateTime);
  if NthDayOfWeek(DateTime) = DayWednesday then
    edDate.Text := 'الأربعاء, ' + DateTimeToStr(DateTime);
  if NthDayOfWeek(DateTime) = DayTuesday then
    edDate.Text := 'الخميس, ' + DateTimeToStr(DateTime);
  if NthDayOfWeek(DateTime) = DayFriday then
    edDate.Text := 'الجمعة, ' + DateTimeToStr(DateTime);
  if NthDayOfWeek(DateTime) = DaySaturday then
    edDate.Text := 'السبت, ' + DateTimeToStr(DateTime);
  if NthDayOfWeek(DateTime) = DaySunday then
    edDate.Text := 'الأحد, ' + DateTimeToStr(DateTime);
end;





procedure TFormLecture.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_ESCAPE)   then Close;
//
 { if (Key = VK_ESCAPE)  and Printer.Printing then
  begin
    Printer.Abort;
    MessageDlg('Printing aborted', mtInformation, [mbOK],0);
  end;}
end;






//
// دعاء ختم القرآن الكريم
//
procedure TFormLecture.Image2DblClick(Sender: TObject);
begin
   //
   If RichEditTexteSora.Text <> '' Then
      RichEditTexteSora.Clear;
   //
   LabelNameSora.Caption := 'دعاء ختم القرآن الكريم';
   LabelSora.Caption := '';
   //
   with RichEditTexteSora do
     begin
        Alignment := taRightJustify;
        SelAttributes.Size := 24;
        //Font.Name := 'KacstBook';
        SelAttributes.Style := [fsBold];
        SelAttributes.Color := clGreen;
        //
        Lines.LoadFromFile('doaa_01.rtf');
     end;
     //
end;





procedure TFormLecture.ImageFatihaClick(Sender: TObject);
begin
   TimerFatihaTimer(Sender);
   ImageCadre.BringToFront;
end;




//
// Form Lecture
//
procedure TFormLecture.N3Click(Sender: TObject);
begin
  FormAIAAIA.ShowModal;
end;





//
// Charger fichier  'tajwid.rtf'
//
procedure TFormLecture.PageControlMaktabaChange(Sender: TObject);
begin
  if PageControlMaktaba.TabIndex = 0 then
     RichEditTexteSora.Lines.LoadFromFile('tajwid.rtf');
     LabelNameSora.Caption := 'احكام التجويد';
     Label2.Caption := '';

  if PageControlMaktaba.TabIndex = 1 then
     RichEditTexteSora.Lines.LoadFromFile('JALLN.TXT');
     LabelNameSora.Caption := 'تفسير الجللين';
     Label2.Caption := '';

  if PageControlMaktaba.TabIndex = 2 then
     RichEditTexteSora.Lines.LoadFromFile('IBNKT.TXT');
     LabelNameSora.Caption := 'تفسير ابن كثير';
     Label2.Caption := '';

  if PageControlMaktaba.TabIndex = 3 then
     RichEditTexteSora.Lines.LoadFromFile('tajwid.rtf');
     LabelNameSora.Caption := 'احكام التجويد';
     Label2.Caption := '';

  if PageControlMaktaba.TabIndex = 4 then
     RichEditTexteSora.Lines.LoadFromFile('JALLN.TXT');
     LabelNameSora.Caption := 'تفسير الجللين';
     Label2.Caption := '';

  if PageControlMaktaba.TabIndex = 5 then
     RichEditTexteSora.Lines.LoadFromFile('IBNKT.TXT');
     LabelNameSora.Caption := 'تفسير ابن كثير';
     Label2.Caption := '';

  if PageControlMaktaba.TabIndex = 6 then
     RichEditTexteSora.Lines.LoadFromFile('tajwid.rtf');
     LabelNameSora.Caption := 'احكام التجويد';
     Label2.Caption := '';

  if PageControlMaktaba.TabIndex = 7 then
     RichEditTexteSora.Lines.LoadFromFile('JALLN.TXT');
     LabelNameSora.Caption := 'تفسير الجللين';
     Label2.Caption := '';

  if PageControlMaktaba.TabIndex = 8 then
     RichEditTexteSora.Lines.LoadFromFile('IBNKT.TXT');
     LabelNameSora.Caption := 'تفسير ابن كثير';
     Label2.Caption := '';

end;




//
// Tri de la liste des SORA
//
procedure TFormLecture.RadioGroup1Click(Sender: TObject);
Var
  StrSql : String;
begin
  //
  DMZadM.FDQuerySora.Close;
  DMZadM.FDQuerySora.Sql.Clear;
  //
  StrSql := 'Select * From Sora';
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
  DMZadM.FDQuerySora.Sql.Add(strSql);
  DMZadM.FDQuerySora.Close;
  DMZadM.FDQuerySora.Open;
end;





procedure TFormLecture.TimerFatihaTimer(Sender: TObject);
begin
  ImageCadre.BringToFront;
  TimerFatiha.Enabled := False;
  RichEditTexteSora.Visible := True;
end;

procedure TFormLecture.TimerHorlogeTimer(Sender: TObject);
begin
  //on l'affiche l'heure
  lbl_Time.Caption := TimeToStr(Now);
  //et on actualise l'affichage
  lbl_Time.Repaint;
end;





{Gestion du temps du mp3 avec un timer : en cours et lorsqu'il arrive en fin de lecture}
procedure TFormLecture.TimerMP3Timer(Sender: TObject);
var
  SecondeTotal : Integer;
  Minute,Seconde : byte;

begin
   Application.ProcessMessages;
   //
   ProgressBarMP3.Position := FormSplash.MediaPlayerMP3.Length; {position de la barre de progression}

   // Affichage de la progression de lecture des AYATE
   SecondeTotal := round(FormSplash.MediaPlayerMP3.Position / 1000);  // transformation de milliseconde en seconde
   Minute := (SecondeTotal div 60);                                   // en divise les seconde par 60 = minutes
   Seconde := (SecondeTotal mod 60);                                  // le reste de la division precedente = secondes restantes

   if Minute < 10 then                                                // Gestion de l'écriture du temps avec 2 chiffre ou 1 seul chiffre
     begin
       if Seconde < 10 then
          LabelTempsMp3.Caption := '0'+inttostr(Minute)+' : '+'0'+inttostr(Seconde)
       else
          LabelTempsMp3.Caption := '0'+inttostr(Minute)+' : '+inttostr(Seconde);
     end
   else
     begin
       if Seconde < 10 then
          LabelTempsMp3.Caption :=  '0'+inttostr(Minute)+' : '+'0'+inttostr(Seconde)
       else
          LabelTempsMp3.Caption :=  '0'+inttostr(Minute)+' : '+inttostr(Seconde);
     end;
end;



{Modifier le volume sonore}
procedure TFormLecture.SetMPVolume(MP : TMediaPlayer; Volume : Integer);
{ Volume: 0 - 1000 }
const
  MCI_SETAUDIO = $0873;
  MCI_DGV_SETAUDIO_VOLUME = $4002;
  MCI_DGV_SETAUDIO_ITEM = $00800000;
  MCI_DGV_SETAUDIO_VALUE = $01000000;

type
  MCI_DGV_SETAUDIO_PARMS = record
  dwCallback : DWORD;
  dwItem : DWORd;
  dwValue : DWORD;
  dwOver : DWORD;
  lpstrAlgorithm : PChar;
  lpstrQuality : PChar;
end;

var
p : MCI_DGV_SETAUDIO_PARMS;

begin
  p.dwCallback := 0;
  p.dwItem := MCI_DGV_SETAUDIO_VOLUME;
  p.dwValue := Volume;
  p.dwOver := 0;
  p.lpstrAlgorithm := nil;
  p.lpstrQuality := nil;
  mciSendCommand(MP.DeviceID, MCI_SETAUDIO,MCI_DGV_SETAUDIO_VALUE or MCI_DGV_SETAUDIO_ITEM, Cardinal(@p));
end;



{Lorsque l'utilisateur change le volume}
procedure TFormLecture.TrackBarMP3Change(Sender: TObject);
begin
   SetMPVolume(FormSplash.MediaPlayerMP3, 1000 - TrackBarMP3.Position);
end;









procedure TFormLecture.BitBtnFontClick(Sender: TObject);
begin
  RichEditTexteSora.Font.Name
end;





//
// Test Fonte
//
procedure TFormLecture.BtnTestFontClick(Sender: TObject);
begin
with RichEditTexteSora do
  begin
    //move caret to end
    SelStart := GetTextLen;
    //add one unformatted line
    SelText := 'This is the first line' + #13#10;
    //add some normal font text
    SelText := 'Formatted lines in RichEdit' + #13#10;
    //bigger text
    SelAttributes.Size := 13;
    //add bold + red
    SelAttributes.Style := [fsBold];
    SelAttributes.Color := clRed;
    SelText := 'About';
    //only bold
    SelAttributes.Color := clWindowText;
    SelText := ' Delphi ';
    //add italic + blue
    SelAttributes.Style := [fsItalic];
    SelAttributes.Color := clBlue;
    SelText := 'Programming';
    //new line
    SelText := #13#10;
    //add normal again
    SelAttributes.Size := 8;
    SelAttributes.Color := clGreen;
    SelText := 'think of AddFormattedLine custom procedure...';
  end;
end;










//
// Affichage du texte de la SORA sélectionnée  selon le DATASOURCE
//
procedure TFormLecture.DBGridSoranameCellClick(Column: TColumn);
begin
   If DBGridSoraname.DataSource = DMZadM.DSSoraCDS   Then
      DBGridSoranameCellClickCDS()
   Else
      DBGridSoranameCellClickFD();
end;




//
// Affichage du texte de la SORA sélectionnée  avec "FDQueryQuran"
//
procedure TFormLecture.DBGridSoranameCellClickFD;
Var
  i, j : Integer;
  sAya : WideString;

  begin
   //
   If RichEditTexteSora.Text <> '' Then
      RichEditTexteSora.Clear;
   //
   i := 1;
   DBGridSoraname.Tag    := DBGridSoraname.Fields[1].AsInteger;
   RichEditTexteSora.Tag := DBGridSoraname.Fields[1].AsInteger;
   //
   DMZadM.FDQueryCoran.Close;
   DMZadM.FDQueryCoran.Sql.Clear;
   DMZadM.FDQueryCoran.Sql.Add('Select * From Quran where SORANO = ''' + DBGridSoraname.Fields[1].AsWideString+'''');
   DMZadM.FDQueryCoran.Open;
   //
   LabelNameSora.Caption := DBGridSoraname.Fields[0].AsWideString;
   LabelSora.Caption := 'سورة';
   LabelSora.BringToFront;
   LabelNameSora.BringToFront;
   //
   j := DBGridSoraname.Fields[1].AsInteger;
   //
   If ((j <> 1) and (j <> 9))
      then
        Begin
           sAya := 'بسم الله الرحمن الرحيم';
           //
           with RichEditTexteSora do
             begin
                //Alignment := taCenter;
                SelAttributes.Size := 24;
                Font.Name := 'KacstBook';
                SelAttributes.Style := [fsBold];
                SelAttributes.Color := clGreen;
                //
                Lines.Add(sAya);
             end;
        End;
   //
   DMZadM.FDQueryCoran.First;
   While Not (DMZadM.FDQueryCoran.EoF) DO
     Begin
       //
       with RichEditTexteSora do
         begin
            SelAttributes.Size := 20;
            Font.Name := 'KacstBook';
            SelAttributes.Style := [fsBold];
            SelAttributes.Color := clMaroon;
            //
            Lines.Add(IntToStr(i)+ '.' + DMZadM.FDQueryCoran.FieldByName('AIATANZIL').AsWideString);
            DMZadM.FDQueryCoran.Next;
         end;
         //
         i:=i+1;
     End;
end;




//
// Affichage du texte de la SORA sélectionnée  avec "QuranCDS"
//
procedure TFormLecture.DBGridSoranameCellClickCDS;
Var
  i, j : Integer;
  sAya : WideString;

begin
   //
   If RichEditTexteSora.Text <> '' Then
      RichEditTexteSora.Clear;
   //
   i := 1;
   //
   DMZadM.Qurancds.Open;
   DMZadM.Soracds.Open;
   //
   LabelNameSora.Caption := DBGridSoraname.Fields[0].AsString;
   LabelSora.Caption := 'سورة';
   LabelSora.BringToFront;
   LabelNameSora.BringToFront;
   //
   j := DBGridSoraname.Fields[1].AsInteger;
   //
  if ((j <> 1) AND (j <> 9))
      then
        Begin
           sAya := 'بسم الله الرحمن الرحيم';
            with RichEditTexteSora do
               begin
                  SelAttributes.Size := 20;
                  Font.Name := 'KacstBook';
                  SelAttributes.Style := [fsBold];
                  SelAttributes.Color := clGreen;
                  //
                  Lines.Add(sAya);
               end;
        End;
   //
   DMZadM.Qurancds.First;
   DMZadM.QuranCDS.Locate('SoraNo', j, []);
   //
   While Not (DMZadM.Qurancds.EoF) DO
     Begin
       //
       if  DMZadM.Qurancds.FieldByName('SoraNo').AsInteger = j Then
          Begin
             with RichEditTexteSora do
               begin
                  SelAttributes.Size := 20;
                  Font.Name := 'KacstBook';
                  SelAttributes.Style := [fsBold];
                  SelAttributes.Color := clMaroon;
                  //
                  Lines.Add(IntToStr(i)+ '.' + DMZadM.Qurancds.FieldByName('AIATANZIL').AsWideString);
               end;
               i:=i+1;
          End
       else
          Begin
            Exit;
          End;
       DMZadM.Qurancds.Next;
     End;
end;






{
       Permet de lancer la lecture lorsque l'on appuie sur "entrer"
}
procedure TFormLecture.DBGridSoranameKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin
  if (key = VK_DOWN) and (DBGridSoraname.SelectedRows <> nil) then
        DBGridSoranameCellClickCDS;
end;





//
// Mouvement de la souris sur le DbGrid
//
procedure TFormLecture.DBGridSoranameMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  gc: TGridCoord;

begin
  gc:= DBGridSoraname.MouseCoord(x, y);

  if (gc.X > 0) AND (gc.Y > 0) then
  begin
    DBGridSoraname.DataSource.DataSet.MoveBy(gc.Y - THackDBGrid(DBGridSoraname).Row);
  end;
end;




//
// Récupération du N° de colonne
//
procedure TFormLecture.DBGridSoranameColEnter(Sender: TObject);
Var
  StrSql : String;

begin
  nCol := DBGridSoraname.SelectedIndex;             // N° de colonne sélectionnée
  //
  DMZadM.FDQuerySora.Close;
  DMZadM.FDQuerySora.Sql.Clear;
  //
  StrSql := 'Select * From Sora Order By SoraNO';
  //
  DMZadM.FDQuerySora.Sql.Add(strSql);
  DMZadM.FDQuerySora.Close;
  DMZadM.FDQuerySora.Open;
end;






//
// Affichage personnalisé des lignes du DBGrid
//
procedure TFormLecture.DBGridSoranameDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);

begin
  // Surbrillance de la ligne sous la souris
  if (THackDBGrid(DBGridSoraname).DataLink.ActiveRecord + 1 =
      THackDBGrid(DBGridSoraname).Row)
  or (gdFocused in State) or (gdSelected in State) then
  begin
    DBGridSoraname.Canvas.Brush.Color := clSkyBlue;
    DBGridSoraname.Canvas.Font.Style := DBGridSoraname.Canvas.Font.Style + [fsBold];
    DBGridSoraname.Canvas.Font.Color := clRed;
  end;
  //
  if Column.FieldName = 'LieuNouzoul' then
    with (sender as TDBGrid).Canvas do
    begin
      //Brush.color := clMedGray;        // Coloration de toute la colonne
      Font.Color  := clBlack;            // Couleur de la Fonte
      Font.Style  := [fsBold];           // Style GRAS
      Font.Size   := 10;                 // Taille : 10
    end;
   //
   if (DMZadM.FDSoraname.FieldByName('SORANO').AsInteger mod 2) = 0 Then                                       // Si N° enregistrement paire
     Begin
       if DBGridSoraname.Canvas.Brush.Color =  DBGridSoraname.Color then        // Si même couleur
           DBGridSoraname.Canvas.Brush.Color := clMedGray;
     End;

   // Cette ligne est obligatoire à la fin de tous les traitements
   DBGridSoraname.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;






//
// Affichage des SORATE DU CORAN PAR ORDRE DE N° SORA
//
procedure TFormLecture.DBGridSoranameTitleClick(Column: TColumn);
Var
  StrSql : String;
Begin
  //
  If DBGridSoraname.DataSource <> DMZadM.DSSoraCDS Then
    Begin
      DMZadM.FDQuerySora.Close;
      DMZadM.FDQuerySora.Sql.Clear;
      //
      StrSql := 'Select * From Sora';
      StrSql := StrSql + ' Order By SoraNO';
      //
      DMZadM.FDQuerySora.Sql.Add(strSql);
      DMZadM.FDQuerySora.Close;
      DMZadM.FDQuerySora.Open;
    End
  Else
    Begin
      DMZadM.SoraCDS.IndexFields[1];
    End;

  //
end;







procedure TFormLecture.ApplicationEvents1Hint(Sender: TObject);
begin
  StatusBar1.SimpleText := Application.Hint;
end;

procedure TFormLecture.N59Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormLecture.N61Click(Sender: TObject);
begin
  Close;
end;

procedure TFormLecture.N29Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;



procedure TFormLecture.N62Click(Sender: TObject);
begin
  Close;
end;

procedure TFormLecture.N19Click(Sender: TObject);
begin
  FormAbout.ShowModal;
end;

procedure TFormLecture.N6Click(Sender: TObject);
Begin
 // FormSplashRQ.ShowModal; 
end;

procedure TFormLecture.N4Click(Sender: TObject);
begin
  //FormAhkamTaj.ShowModal;
end;

procedure TFormLecture.N42Click(Sender: TObject);
begin
  //FormMakharaj.ShowModal;
end;

procedure TFormLecture.N30Click(Sender: TObject);
begin
  PrintDialog1.Execute;
end;



procedure TFormLecture.FormActivate(Sender: TObject);
//var
  //sPath : String;
begin
  // Choix de la langue arabe
  LoadKeyboardLayout('00000401', KLF_ACTIVATE);
  Application.BiDiKeyboard := '00000401';
  //
  FormSplash.visible := False;
  RichEditTexteSora.Visible := False;
  TimerFatiha.Enabled := True;
end;




procedure TFormLecture.N14Click(Sender: TObject);
begin
  FormEditCoran.ShowModal;
end;




procedure TFormLecture.N15Click(Sender: TObject);
begin
  FormMotsCoranTZ.ShowModal;
end;




procedure TFormLecture.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  if Dialogs.MessageDlg('مرحبا بك في برنامج القرآن الرقمي حراء. هل تريد الخروج الآن؟',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    //Dialogs.MessageDlg('الخروج من البرنامج', mtInformation,
    //  [mbOk], 0, mbOk);
    // Choix de la langue Française
    LoadKeyboardLayout('0000040c', KLF_ACTIVATE);
    Application.BiDiKeyboard := '0000040c';
    //
    Application.Terminate;;
  end;

end;



procedure TFormLecture.N8Click(Sender: TObject);
begin
  FormFahresN.ShowModal;
end;







//*************************************************************************
//                                                                        *
//                                                                        *
//                         تلاوة القرآن الكريم                             *
//                                                                        *
//                                                                        *
//*************************************************************************

{Lecture d'un MP3}
procedure TFormLecture.LectureMP3();
Var
  sPath, RepReader, RepSora, FileAya, nSora, nAya, Ext : String;
   j, iAya : Integer;

begin
  RepReader := '1';                                             // '1' : Reader Maher Muaquily
  RepSora   := IntToStr(DBGridSoraname.Tag);
  FileAya   := IntToStr(RichEditTexteSora.Tag);
  nSora     := IntToStr(DBGridSoraname.Tag);
  nAya      := '';
  Ext       := '.mp3';
  j         := 1;
  iAya      := RichEditTexteSora.Lines.Count;                   // Nombre de lignes sur  RichEditTexteSora
  //
  if  Length(nSora) < 2 then nSora := '00' + nSora              // Si N° Sora est sur un seul chiffre  - exemple : 001
  else
    if Length(nSora) = 2 then nSora := '0' + nSora;             // Si N° Sora est sur un deux chiffres  - exemple : 011
                                                                // Sinon implicitement le N° Sora est sur un trois chiffres  - exemple : 101

  if DBGridSoraname.Tag <> 1  then   iAya := iAya -1;           // La Besmallah ne compte pas dans les sorate autres que la FATIHA
  //
  // قرأة جميع آيات السورة المختارة
  //
  if (DBGridSoraname.Tag <> 0) Then
    Begin
      While  j < iAya + 1   Do                                    // Le +1 pour la FATIHA // Pour Eviter message d'erreur en fin de boucle de lecture
        Begin
          // Permettre l'écoute aux instructions de l'application
          // pour éxecution durant la lecture
          Application.ProcessMessages;
          //
          TimerMP3.Enabled := TRUE;                     // Activation du timerMP3  pour le gestion du ProgressBarMP3
          //
          If ImageArret.Tag = 1  Then                   // Si click sur Bouton STOP
             Begin
               ImageArret.Tag := 0;                     // Réinitialiser le TAG du bouton STOP
               Exit;
             End;
          //                                            // N° aya à lire (la liste des AYATE est affichée sur RichEditTexteSora)
          nAya := IntToStr(j);
          //
          if  Length(nAya) < 2 then nAya := '00' + nAya
          else
            if Length(nAya) = 2 then nAya := '0' + nAya;
          //
          FileAya := nSora + nAya + Ext;                  // Le nom de fichier de AYA à lire est : '001001'
          sPath := ExtractFilePath(Application.ExeName)+ 'Data\Audio\Coran\' + RepReader +'\' + RepSora + '\'  + FileAya;
          //
          If Not(SysUtils.FileExists(sPath)) Then
             Begin
               ShowMessage('Fichier Audio : ' + FileAya + ' inéxistant' );
               Exit;
             End

          Else
            Begin
              with FormSplash.MediaPlayerMP3 do
                begin
                  // Affectation du nom de fichier pour MediaPlayer
                  FileName := sPath;
                  // ouverture du fichier Audio
                  Open;
                  // Attendre la fin de lecture du fichier Audio
                  Wait := true;
                  // Lecture du fichier Audio
                  Play;
                  //
                end;
            End;
                  //
                  // Permettre l'écoute aux instructions de l'application
                  // pour éxecution durant la lecture
                  Application.ProcessMessages;
                  //ShowMessage(sPath);
                  LabelGetLength.Caption := IntToStr(FormSplash.MediaPlayerMP3.Length);
              //
              J := j + 1;
            End;                //  Boucle :  While  j < iAya + 1
            TimerMP3.Enabled := FALSE;  {DESActivation du timerMP3}
    End;
end;




{Lecture d'un MP3}
procedure TFormLecture.ImageLectureClick(Sender: TObject);
begin
  LectureMP3();
end;



{Le MP3 précédent}
procedure TFormLecture.ImagePrecedentClick(Sender: TObject);
begin
  FormSplash.MediaPlayerMP3.Position:=FormSplash.MediaPlayerMP3.Position-6553;
  FormSplash.MediaPlayerMP3.Play;
end;



{Lorsque l'utilisateur clique sur pause}
procedure TFormLecture.ImagePauseClick(Sender: TObject);
begin
  FormSplash.MediaPlayerMP3.Pause;
end;



{Lorsque l'utilisateur clique sur stop}
procedure TFormLecture.ImageArretClick(Sender: TObject);
begin
  ImageArret.Tag := 1;
  FormSplash.MediaPlayerMP3.Stop;
end;



{Lorsque l'utilisateur clique sur Suivant}
procedure TFormLecture.ImageSuivantClick(Sender: TObject);
begin
  FormSplash.MediaPlayerMP3.Position:=FormSplash.MediaPlayerMP3.Position+6553;
  FormSplash.MediaPlayerMP3.Play;
end;


End.
