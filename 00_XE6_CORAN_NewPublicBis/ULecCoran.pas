unit ULecCoran;

interface


uses
  Windows, MMSystem, Messages, SysUtils, Classes, Graphics, Vcl.Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ComCtrls,
  Menus, AppEvnts, Vcl.Tabs, Vcl.Buttons, Vcl.Imaging.pngimage, System.Actions,
  Vcl.ActnList, Vcl.ImgList,
  Db, Data.Win.ADODB, Datasnap.DBClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  FireDAC.VCLUI.Login, FireDAC.VCLUI.Wait, FireDAC.Comp.DataMove,
  FireDAC.Comp.UI, Vcl.MPlayer, System.UITypes, System.DateUtils,
  Vcl.ExtDlgs, HTMLHelpViewer, IniFiles, ShellAPI;


type
  THackDBGrid = class(TDBGrid);

type
  TFormLecture = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N16: TMenuItem;
    N19: TMenuItem;
    N21: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
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
    StatusBar1: TStatusBar;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    N31: TMenuItem;
    N62: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem17: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Splitter3: TSplitter;
    Panel5: TPanel;
    Splitter4: TSplitter;
    RichEditTexteSora: TRichEdit;
    SpeedButton11: TSpeedButton;
    Splitter1: TSplitter;
    Splitter5: TSplitter;
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
    TimerMP3: TTimer;
    MediaPlayer1: TMediaPlayer;
    edDateAr: TEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    RadioGroup1: TRadioGroup;
    eDateHedjri: TEdit;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Panel6: TPanel;
    ProgressBarMP3: TProgressBar;
    Button1: TButton;
    Label1: TLabel;
    LabelGetLength: TLabel;
    LabelTempsMp3: TLabel;
    Label2: TLabel;
    Image1: TImage;
    ImagePrecedent: TImage;
    Label6: TLabel;
    ImageLecture: TImage;
    Label3: TLabel;
    ImagePause: TImage;
    Label4: TLabel;
    ImageArret: TImage;
    Label5: TLabel;
    ImageSuivant: TImage;
    Label7: TLabel;
    Image3: TImage;
    TrackBarMP3: TTrackBar;
    Panel7: TPanel;
    Label10: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    FontDialog1: TFontDialog;
    N5: TMenuItem;
    N6: TMenuItem;
    FindDialog1: TFindDialog;
    plChoixRecherches: TPanel;
    ckbMotEntier: TCheckBox;
    ckbRespectCasse: TCheckBox;
    N7: TMenuItem;
    N8: TMenuItem;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    N9: TMenuItem;
    imgBrush: TImage;
    plHaut: TPanel;
    ColorDialog1: TColorDialog;
    N10: TMenuItem;
    N11: TMenuItem;
    Image7: TImage;
    DBGridSoraname: TDBGrid;
    sbEditor: TSpeedButton;
    SpeedButton2: TSpeedButton;
    sbRecherche: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    sbHelp: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    sbMoshaf: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Memo1: TMemo;
    SpeedButton14: TSpeedButton;
    N12: TMenuItem;
    N13: TMenuItem;
    procedure N21Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerFatihaTimer(Sender: TObject);
    procedure ImageFatihaClick(Sender: TObject);
    procedure TimerHorlogeTimer(Sender: TObject);
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
    procedure DBGridSoranameCellClickCDS;
    procedure DBGridSoranameCellClick(Column: TColumn);
    procedure DBGridSoranameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridSoranameDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridSoranameMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
    procedure ApplicationEvents1Hint(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure sbEditorClick(Sender: TObject);
    procedure sbRechercheClick(Sender: TObject);
    procedure sbHelpClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N13Click(Sender: TObject);
  private
    { Déclarations privées }
    procedure WMHELP(var Msg: TWMHelp); message WM_HELP;
  public
    { Public declarations }
    QuranCDS: TClientDataSet;
    SoraCDS: TClientDataSet;
    DicMotsCDS: TClientDataSet;
    //
    Moshaf, nSora, nAya, nomSora, NbreAyatSora : String;
    NonFin : Boolean;
    nCol : Integer;
    GTC: LongWord;
    //
    INI: TIniFile;
  end;



var
  FormLecture: TFormLecture;


implementation


uses USplash, URecherche, UAbout, HejriUtils, Midaslib, MyFuncUtils, REMain,
UConfig;

{$R *.dfm}

const
  Filtre = 'Fichiers quelconques (*.*)|*.*;'
    + '|Fichiers texte (*.txt)|*.txt;'
    + '|Fichiers texte enrichi (*.rtf)|*.rtf';
  crlf = #13#10;

resourcestring
  sInfo = 'Fichiers  : ' + #13#10;

procedure sms(s: string);
begin
  ShowMessage(s);
end;

procedure smsTxt(const Titre, Texte: string);
var Frm: tForm; RE: tRichEdit;
begin
  Frm := tForm.Create(Application);
  with Frm do begin
    width := 330; height := 200;
    caption := Titre; FormStyle := fsStayOnTop; Position := poScreenCenter;
  end;
  RE := tRichEdit.Create(Frm);
  with RE do begin
    parent := Frm;
    Align := alClient; text := Texte;
    ScrollBars := ssBoth; color := clGradientActiveCaption;
  end;
  Frm.show;
end;

procedure Sablier;
begin
  with Screen do if cursor = crHourGlass then cursor := crDefault
    else cursor := crHourGlass;
end;


procedure TFormLecture.WMHELP(var Msg: TWMHelp);
var
   ActiveCtrlID: Integer;
begin
   ActiveCtrlID:= Screen.ActiveControl.HelpContext;
   //handle help ton message içi.
  //Test showmessage('ok');
  //HtmlHelp(0, pchar(Application.HelpFile), HH_HELP_CONTEXT, 30);                 //Fichier avec Index !
  ShellExecute(Handle,'Open', PChar(Application.HelpFile),nil,nil,SW_SHOWDEFAULT); //Si simple fichier *.chm sans Index et sans "HTMLHelpViewer" dans le uses
end;



//
// Chargement des données à la création de la Form
//
procedure TFormLecture.FormCreate(Sender: TObject);
var
  sPath : String;
  DateTime: TDateTime;
  Year, Month, Day: Word;
Begin
  FormSplash.Visible := False;
  //on affiche une première fois l'heure ... quand l'application démarre
  lbl_Time.Caption := TimeToStr(Now);
  edDateAr.Text:=DateEnArabe;
  DateToHejri(Now, Year, Month, Day);
  eDateHedjri.Text := IntToStr(Day) + '  ' + HejriMonthsAr[Month] + '  ' + IntToStr(Year);
  //
  Application.HintHidePause := 15000; // 15 sec
  Application.HintColor := clYellow;
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  SaveDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  FontDialog1.Font := RichEditTexteSora.Font;
  //
  Application.HelpFile := ExtractFilePath(Application.ExeName) + 'HelpCoranHira.chm'; //Fichier sans index "Aide.chm"
  //
  //++++++++++++++++++++++++++++++++ QuranCDS.CDS  : CREATION  ClientDataSet +++++++++++++++++++
  QuranCDS := TClientDataSet.Create(Self);  // create the ClientDataSet.
  //
  With QuranCDS.FieldDefs do
    begin
        // create A Virtual table by adding columns
        Add('LINENO', ftInteger, 0, True);                // and First one Must be the index table => "LINENO".
        Add('SORANO', ftInteger, 0, True);                // Adding Second column to the table => "SORANO".
        Add('AIANO', ftInteger, 0, True);                 // Adding Third column to the table => "AIANO".
        Add('NBKALIMA', ftInteger, 0, True);              // Adding Fifth column to the table => "NBKALIMA".
        Add('NBHARF', ftInteger, 0, True);                // Adding Sixth column to the table => "NBHARF".
        Add('NBKALIMATZ', ftInteger, 0, True);            // Adding Fifth column to the table => "NBKALIMA".
        Add('NBHARFTZ', ftInteger, 0, True);              // Adding Sixth column to the table => "NBHARF".
        Add('AIATANZIL', ftWideMemo);                     // Adding Fourth column to the table => "AIA".
        Add('AIAMADINA', ftWideMemo);                     // Adding Fourth column to the table => "AIA".
    end;
    //
    QuranCDS.CreateDataSet;                               // Apply All Above or Save in Memory of "DataSet" the New Table "Quran".
    DataSource2.DataSet := QuranCDS;
    //
    // Chargement des données
    // Label2.Caption := ' عرض نص القرآن الكريم آية آية';
    //
    sPath := ExtractFilePath(Application.ExeName);
    sPath := sPath + 'Data\Dat\Quran.cds';
     try
        QuranCDS.LoadFromFile(sPath);
     except
        QuranCDS.Open;
     raise;
    end;
    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++





    //++++++++++++++++++++++++++++++++ SoraCDS.CDS  : CREATION  ClientDataSet +++++++++++++++++++
    SoraCDS := TClientDataSet.Create(Self);  // create the ClientDataSet.
    //
    With SoraCDS.FieldDefs do
    begin
      // create A Virtual table by adding columns
      Add('SoraNo', ftInteger, 0, True);              // Adding Second column to the table => "SORANO".
      Add('Name', ftWideString, 25, True);            // Adding Second column to the table => "SORANO".
      Add('PageMushaf', ftInteger, 0, True);          // Adding Third column to the table => "AIANO".
      Add('LieuNouzoul', ftString, 1, True);          // Adding Fourth column to the table => "AIA".
      Add('OrdreNouzoul', ftInteger, 0, True);        // Adding Fifth column to the table => "NBKALIMA".
      Add('OrdreMushaf', ftInteger, 0, True);         // Adding Sixth column to the table => "NBHARF".
      Add('AiaCount', ftInteger, 0, True);            // Adding Fourth column to the table => "AIA".
      Add('KalimaCount', ftInteger, 0, True);         // Adding Fifth column to the table => "NBKALIMA".
      Add('HarfCount', ftInteger, 0, True);           // Adding Sixth column to the table => "NBHARF".
    end;
    //
    SoraCDS.CreateDataSet;                            // Apply All Above or Save in Memory of "DataSet" the New Table "Sora"
    DataSource1.DataSet := SoraCDS;
    //
    // Chargement des données
    // 'عرض سور القرآن الكريم';
    //
    sPath := ExtractFilePath(Application.ExeName);
    sPath := sPath + 'Data\Dat\Sora.cds';
     try
       SoraCDS.LoadFromFile(sPath);
     except
       SoraCDS.Open;
     raise;
    end;
    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++




    //++++++++++++++++++++++++++++++++ DicMotsCDS.CDS : CREATION  ClientDataSet +++++++++++++++
    DicMotsCDS := TClientDataSet.Create(Self);  // Create the ClientDataSet.
    //
    With DicMotsCDS.FieldDefs do
    begin
      Add('NUM', ftInteger, 0, True);
      Add('MOT', ftWideString, 12, True);
      Add('NBHARF', ftInteger, 0, True);
      Add('NBOCC', ftInteger, 0, True);
    end;
    //
    DicMotsCDS.CreateDataSet;
    DataSource3.DataSet := DicMotsCDS;
    //
    // Chargement des données
    // 'قاموس كلمات القرآن الكريم بدون تكرار';
    //
    sPath := ExtractFilePath(Application.ExeName);
    sPath := sPath + 'Data\Dat\DicMotsTZ.cds';
     try
       DicMotsCDS.LoadFromFile(sPath);
     except
       DicMotsCDS.Open;
     raise;
    end;
    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

 {  INI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'Config.ini');
  // Charge l'état du lancement au démarrage de Windows
   ChkWindows.Checked := INI.ReadBool('Options','Windows',False);
  // Charge la date sinon valeur = '' par défaut
   Jour.Text := INI.ReadString('Ajuste','Jour','');
  // Charger les horaires de prières
   TimeFadjr.Time   := StrToTime(INI.ReadString('HeurePriere','Fadjr', ''));
   TimeCHOUROUK.Time:= StrToTime(INI.ReadString('HeurePriere','CHOUROUK', ''));
   TimeDohr.Time    := StrToTime(INI.ReadString('HeurePriere','Dohr', ''));
   TimeAsr.Time     := StrToTime(INI.ReadString('HeurePriere','Asr', ''));
   TimeMaghreb.Time := StrToTime(INI.ReadString('HeurePriere','Maghreb', ''));
   TimeIcha.Time    := StrToTime(INI.ReadString('HeurePriere','Icha', ''));
   TimeKiam.Time    := StrToTime(INI.ReadString('HeurePriere','Kiam', ''));
   //
   TimeFadjr.Checked   := INI.ReadBool('Alarme','Fadjr', TimeFadjr.Checked);
   TimeCHOUROUK.Checked:= INI.ReadBool('Alarme','CHOUROUK', TimeCHOUROUK.Checked);
   TimeDohr.Checked    := INI.ReadBool('Alarme','Dohr', TimeDohr.Checked);
   TimeAsr.Checked     := INI.ReadBool('Alarme','Asr', TimeAsr.Checked);
   TimeMaghreb.Checked := INI.ReadBool('Alarme','Maghreb', TimeMaghreb.Checked);
   TimeIcha.Checked    := INI.ReadBool('Alarme','Icha', TimeIcha.Checked);
   TimeKiam.Checked    := INI.ReadBool('Alarme','Kiam', TimeKiam.Checked);
   // On libère le fichier .ini
   INI.Free; }

End;



procedure TFormLecture.FormDestroy(Sender: TObject);
begin
   // On créé le fichier Ini dans le répertoire courant s'il n'existe pas
   INI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'Config.ini');
   // Sauvegarde l'état du lancement au démarrage de Windows
   INI.WriteBool('Options','Windows', FormConfig.ChkWindows.Checked);
   // Sauver les dates E/S du programme
   INI.WriteString('Dates','DateEntree', DateToStr(Now));
   INI.WriteString('Dates','DateSortie', DateToStr(Now));
   // Sauver l'état de la dernière Consultation du texte Coranique
   INI.WriteString('Coran','Moshaf', FormConfig.eMoshaf.Text);
   INI.WriteString('Coran','Sora', FormConfig.eNoSora.Text);
   INI.WriteString('Coran','Aia', FormConfig.eNoAia.Text);
   // Sauver l'état du paragraphe
   INI.WriteString('Texte','Police', FormConfig.ePolice.Text);
   INI.WriteString('Texte','Taille', FormConfig.eTaille.Text);
   INI.WriteString('Texte','Type', FormConfig.eType.Text);
   INI.WriteString('Texte','Couleur', FormConfig.eColor.Text);
   // On libère le fichier .ini
   INI.Free;
end;



// Définition des raccourcis des boutons
procedure TFormLecture.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
   Ord(VK_F2): sbEditor.Click;
   Ord(VK_F3): sbRecherche.Click;
   Ord(VK_F4): sbMoshaf.Click;
   Ord(VK_ESCAPE): Close;
  end;
end;




// Ajout d'une Image au Fond Arrière (Bakground image)
procedure TFormLecture.FormPaint(Sender: TObject);
begin
  Canvas.Brush.Bitmap := imgBrush.Picture.Bitmap;
  Canvas.FillRect(Canvas.ClipRect);
  Canvas.Brush.Bitmap := nil;
  sendMessage(handle, WM_NCPAINT, 0, 0);
end;



procedure TFormLecture.FormShow(Sender: TObject);
begin
  RichEditTexteSora.SetFocus;
end;



//
// دعاء ختم القرآن الكريم
//
procedure TFormLecture.Image2Click(Sender: TObject);
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





procedure TFormLecture.Image5Click(Sender: TObject);
begin
  FormRecherche.ShowModal;
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






procedure TFormLecture.TrayIcon1Click(Sender: TObject);
begin

end;

//
// Affichage du texte de la SORA sélectionnée  selon le DATASOURCE
//

// Recherches :

procedure TFormLecture.ApplicationEvents1Hint(Sender: TObject);
begin
  StatusBar1.SimpleText := Application.Hint;
end;





procedure TFormLecture.Button1Click(Sender: TObject);
begin
  ShowMessage(IntToStr(RichEditTexteSora.Lines.Count));
end;




procedure TFormLecture.DBGridSoranameCellClick(Column: TColumn);
begin
  DBGridSoranameCellClickCDS;
end;




procedure TFormLecture.TimerFatihaTimer(Sender: TObject);
begin
  ImageCadre.BringToFront;
  TimerFatiha.Enabled := False;
  RichEditTexteSora.Visible := True;
  DBGridSoranameCellClickCDS();
end;




procedure TFormLecture.ImageFatihaClick(Sender: TObject);
begin
   TimerFatihaTimer(Sender);
   ImageCadre.BringToFront;
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
   RichEditTexteSora.Clear;           // Vidage de la zone d'affichage
   //
   i := 1;
   DBGridSoraname.Tag    := DBGridSoraname.Fields[1].AsInteger;
   RichEditTexteSora.Tag := DBGridSoraname.Fields[1].AsInteger;
   //
   Qurancds.Open;                // Ouverture du fichier contenant le texte du Coran
   Soracds.Open;                 // Ouverture fu fichier de la liste des sorates du Coran
   //
   LabelNameSora.Caption := DBGridSoraname.Fields[0].AsString;      // Récupération du nom de la Sora en cours
   nomSora := LabelNameSora.Caption;                                // Variable 'Public' :Récupération du nom de la Sora en cours
   LabelSora.Caption := 'سورة';
   LabelSora.BringToFront;
   LabelNameSora.BringToFront;
   //
   j := DBGridSoraname.Fields[1].AsInteger;        // J : prends la valeur du n° de la Sora (Champs 1 du DbGrid)
   //
  if ((j <> 1) AND (j <> 9))  then                 // Ne pas afficher la Besmallah pour la fatiha sora n°1  et la Tawba n°9
      Begin
         sAya := 'بسم الله الرحمن الرحيم';
          with RichEditTexteSora do
             begin
                SelAttributes.Size := 16;
                Font.Name := 'UthmanicHafs1 Ver09.otf';
                SelAttributes.Style := [fsBold];
                SelAttributes.Color := clGreen;
                //
                Lines.Add(sAya);
             end;
      End;
   //
   Qurancds.First;                            // Debut du fichier
   QuranCDS.Locate('SoraNo', j, []);          // Se positionner sur la Sora n°J
   //
   While Not (Qurancds.EoF)  DO               // Boucle de parcours pour afficher les ayate de la Sora J
     Begin
       //
       if  Qurancds.FieldByName('SoraNo').AsInteger = j Then
          Begin
             with RichEditTexteSora do
               begin
                  SelAttributes.Size := 16;
                  Font.Name := 'UthmanicHafs1 Ver09.otf';
                  SelAttributes.Style := [fsBold];
                  SelAttributes.Color := clMaroon;
                  //
                  if Moshaf = 'Tanzil'  then
                     Lines.Add(IntToStr(i)+ '.' + Qurancds.FieldByName('AIATANZIL').AsWideString)
                  else
                    Lines.Add(IntToStr(i)+ '.' + Qurancds.FieldByName('AIAMADINA').AsWideString);
               end;
               i:=i+1;
          End
       else
          Begin
            Exit;
          End;
       Qurancds.Next;
     End;
end;




{
       Permet d'afficher le texte de la SORA lorsque l'on appuie sur "entrer"
}
procedure TFormLecture.DBGridSoranameKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin
  if (key = VK_RETURN) and (DBGridSoraname.SelectedRows <> nil) then
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
   if (SoraCDS.FieldByName('SORANO').AsInteger mod 2) = 0 Then
   //if (DMZadM.FDSoraname.FieldByName('SORANO').AsInteger mod 2) = 0 Then                                       // Si N° enregistrement paire
     Begin
       if DBGridSoraname.Canvas.Brush.Color =  DBGridSoraname.Color then        // Si même couleur
           DBGridSoraname.Canvas.Brush.Color := clMedGray;
     End;

   // Cette ligne est obligatoire à la fin de tous les traitements
   DBGridSoraname.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;






//
// Tri par titre de colonnes des champs de la table "SORA" DU CORAN
//
procedure TFormLecture.DBGridSoranameTitleClick(Column: TColumn);
{$J+}
 const PreviousColumnIndex : integer = 0;
{$J-}

begin
  if DBGridSoraname.DataSource.DataSet is TCustomClientDataSet then
      with TCustomClientDataSet(DBGridSoraname.DataSource.DataSet) do
        begin
          try
            DBGridSoraname.Columns[PreviousColumnIndex].title.Font.Style :=
                          DBGridSoraname.Columns[PreviousColumnIndex].title.Font.Style - [fsBold];
          except
          end;
          //
          Column.title.Font.Style :=  Column.title.Font.Style + [fsBold];
          PreviousColumnIndex := Column.Index;
          // Index selon la colonne choisie
          If Column.Title.Caption = 'السورة' Then
               IndexFieldNames := 'NAME';
          If Column.Title.Caption = 'رقمها' Then
               IndexFieldNames := 'SORANO';
          If Column.Title.Caption = 'الكلمات' Then
               IndexFieldNames := 'KalimaCount';
          If Column.Title.Caption = 'الحروف' Then
               IndexFieldNames := 'HarfCount';
          If Column.Title.Caption = 'الآيات' Then
               IndexFieldNames := 'AiaCount';
          If Column.Title.Caption = 'مكان النزول' Then
               IndexFieldNames := 'LieuNouzoul';
          If Column.Title.Caption = 'ترتيب النزول' Then
               IndexFieldNames := 'OrdreNouzoul';
        end;
end;




procedure TFormLecture.N59Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormLecture.N5Click(Sender: TObject);
begin
  RichEditTexteSora.SelectAll;
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

procedure TFormLecture.N8Click(Sender: TObject);
begin
  with SaveDialog1 do
  begin
    if Execute then
    begin
      RichEditTexteSora.Lines.SaveToFile(FileName);
    end;
  end;
end;



procedure TFormLecture.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.Items[RadioGroup1.ItemIndex] = ' المصحف' then
        SoraCDS.IndexFieldNames := 'SoraNo' ;
  if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'النزول' then
        SoraCDS.IndexFieldNames := 'OrdreNouzoul' ;
  if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'مكان النزول' then
        SoraCDS.IndexFieldNames := 'LieuNouzoul' ;
  if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'عدد الآيات' then
        SoraCDS.IndexFieldNames := 'AiaCount' ;
end;






procedure TFormLecture.N10Click(Sender: TObject);
begin
  MainForm.ShowModal;
end;

procedure TFormLecture.N13Click(Sender: TObject);
begin
  FormConfig.ShowModal;
end;

procedure TFormLecture.N19Click(Sender: TObject);
begin
  FormAbout.ShowModal;
end;



procedure TFormLecture.N30Click(Sender: TObject);
begin
  PrintDialog1.Execute;
end;




procedure TFormLecture.N3Click(Sender: TObject);
begin
  Moshaf := 'Tanzil';
end;

procedure TFormLecture.N4Click(Sender: TObject);
begin
  if Moshaf = 'Madina' then
     begin
       Moshaf := 'Tanzil';
       Exit;
     end;

  if Moshaf = 'Tanzil' then
     begin
       Moshaf := 'Madina';
       Exit;
     end;

end;



procedure TFormLecture.FormActivate(Sender: TObject);
begin
  // Choix de la langue arabe
  LoadKeyboardLayout('00000401', KLF_ACTIVATE);
  Application.BiDiKeyboard := '00000401';
  //
  FormSplash.visible := False;
  RichEditTexteSora.Visible := False;
  TimerFatiha.Enabled := True;
  //
  Moshaf := 'Madina';
  //
end;





procedure TFormLecture.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   // On créé le fichier Ini dans le répertoire courant s'il n'existe pas
  { INI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'Config.ini');
   // Sauvegarde l'état du lancement au démarrage de Windows
   INI.WriteBool('Options','Windows', ChkWindows.Checked);
   // Sauver l'ajustement de la date Hejri
   INI.WriteString('Ajuste','Jour', Jour.Text);
   // Sauver les horaires de prières
   INI.WriteString('HeurePriere','Fadjr', TimeToStr(TimeFadjr.Time));
   INI.WriteString('HeurePriere','CHOUROUK', TimeToStr(TimeCHOUROUK.Time));
   INI.WriteString('HeurePriere','Dohr', TimeToStr(TimeDohr.Time));
   INI.WriteString('HeurePriere','Asr', TimeToStr(TimeAsr.Time));
   INI.WriteString('HeurePriere','Maghreb', TimeToStr(TimeMaghreb.Time));
   INI.WriteString('HeurePriere','Icha', TimeToStr(TimeIcha.Time));
   INI.WriteString('HeurePriere','Kiam', TimeToStr(TimeKiam.Time));
   //
   INI.WriteBool('Alarme','Fadjr', TimeFadjr.Checked);
   INI.WriteBool('Alarme','CHOUROUK', TimeCHOUROUK.Checked);
   INI.WriteBool('Alarme','Dohr', TimeDohr.Checked);
   INI.WriteBool('Alarme','Asr', TimeAsr.Checked);
   INI.WriteBool('Alarme','Maghreb', TimeMaghreb.Checked);
   INI.WriteBool('Alarme','Icha', TimeIcha.Checked);
   INI.WriteBool('Alarme','Kiam', TimeKiam.Checked);
   // On libère le fichier .ini
   INI.Free;  }
  //
  APPLICATION.Terminate;
end;




{Lecture d'un MP3}
procedure TFormLecture.ImageLectureClick(Sender: TObject);
begin
  LectureMP3();
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
  //iAya      := RichEditTexteSora.Lines.Count;                   // Nombre de lignes sur  RichEditTexteSora
  iAya      := DBGridSoraname.Fields[2].AsInteger;                // Nombre de AYATE  de la SORA
  //
  if  Length(nSora) < 2 then nSora := '00' + nSora              // Si N° Sora est sur un seul chiffre  - exemple :  00 1
  else
    if Length(nSora) = 2 then nSora := '0' + nSora;             // Si N° Sora est sur un deux chiffres  - exemple : 0 11
                                                                // Sinon implicitement le N° Sora est sur un trois chiffres  - exemple : 101

  //if DBGridSoraname.Tag <> 1  then   iAya := iAya - 1 ;       // La Besmallah ne compte pas comme AYA dans les sorate autres que la FATIHA
  //
  // قرأة جميع آيات السورة المختارة
  //
  if (DBGridSoraname.Tag <> 0) Then
    Begin
      While  j < iAya + 1   Do                                  // Le +1 pour la FATIHA // Pour Eviter message d'erreur en fin de boucle de lecture
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
          FileAya := nSora + nAya + Ext;                      // Le nom de fichier de AYA à lire est : '001001'
          sPath := ExtractFilePath(Application.ExeName)+ 'Data\Audio\Coran\' + RepReader +'\' + RepSora + '\'  + FileAya;
          //
          If Not(SysUtils.FileExists(sPath)) Then             // Si fichier audio inexistant :  Fin de lecture de la Sora
              Begin
                 //ShowMessage( ' غير موجود' + FileAya +  'ملف الصوت : ');
                 Exit;
              End
          Else
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
                  //
                  // Permettre l'écoute aux instructions de l'application
                  // pour éxecution durant la lecture
                  Application.ProcessMessages;
                  //ShowMessage(sPath);
                  LabelGetLength.Caption := IntToStr(FormSplash.MediaPlayerMP3.Length);
              //
              J := j + 1;

        End;  //  Boucle :  While  j < iAya + 1
        TimerMP3.Enabled := FALSE;  {DESActivation du timerMP3}
    End;
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




procedure TFormLecture.SpeedButton14Click(Sender: TObject);
begin
  if Dialogs.MessageDlg('مرحبا بك في برنامج القرآن الرقمي حراء. هل تريد الخروج الآن؟',
                  mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    Dialogs.MessageDlg('الخروج من البرنامج', mtInformation, [mbOk], 0, mbOk);
    // Choix de la langue Française
    LoadKeyboardLayout('0000040c', KLF_ACTIVATE);
    Application.BiDiKeyboard := '0000040c';
  end;
  Application.Terminate;
end;

procedure TFormLecture.sbEditorClick(Sender: TObject);
begin
  MainForm.ShowModal;
end;

procedure TFormLecture.sbRechercheClick(Sender: TObject);
begin
  FormRecherche.ShowModal;
end;

procedure TFormLecture.SpeedButton6Click(Sender: TObject);
begin
  FormLecture.WindowState := wsMinimized;
end;


procedure TFormLecture.sbHelpClick(Sender: TObject);
begin
  ShellExecute(Handle,'Open', PChar(Application.HelpFile),nil,nil,SW_SHOWDEFAULT);
end;


End.
