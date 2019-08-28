unit USplash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ImgList, Menus, jpeg, Db, ComCtrls, Vcl.MPlayer,
  Vcl.Imaging.pngimage;

type
  TFormSplash = class(TForm)
    PopupMenu3: TPopupMenu;
    N11: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    TimerSplash: TTimer;
    MediaPlayerMP3: TMediaPlayer;
    OpenDialogMP3: TOpenDialog;
    TrayIconQuran: TTrayIcon;
    N3: TMenuItem;
    ImageSplash: TImage;
    procedure N11Click(Sender: TObject);
    procedure TimerSplashTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImageSplashClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btStopClick(Sender: TObject);
    procedure btOpenClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations privées }
    procedure WMNCHitTest(var M: TWMNCHitTest); message wm_NCHitTest;
  end;

var
  FormSplash: TFormSplash;

implementation

uses MMSystem, ShellApi, ULecCoran, UAbout;

{$R *.DFM}


// pour pouvoir déplacer la form dans la fenêtre
procedure TFormSplash.WMNCHitTest(var M: TWMNCHitTest);
begin
  inherited;                    { call the inherited message handler }
  if  M.Result = htClient then  { is the click in the client area?   }
    M.Result := htCaption;      { if so, make Windows think it's     }
                                { on the caption bar.                }
end;

//
// Quitter l'Application
//
procedure TFormSplash.N11Click(Sender: TObject);
begin
  Close;
end;

procedure TFormSplash.N1Click(Sender: TObject);
begin
  FormAbout.Show;
end;

procedure TFormSplash.N3Click(Sender: TObject);
begin
  FormLecture.WindowState:=wsNormal;
end;

//
// Désactiver le Timer et Appel de l'interface principale
//
procedure TFormSplash.TimerSplashTimer(Sender: TObject);
begin
  TimerSplash.Enabled := False;        // Désactiver le Timer
  btStopClick(Sender);                 // Arrêt lecteur MP3
  //
  FormLecture.Show;                    // Appel de la FORM principale
end;




//
//  Click sur l'image du SPLASH
//
procedure TFormSplash.ImageSplashClick(Sender: TObject);
begin
  TimerSplash.Enabled := False;        // Désactiver le Timer
  btStopClick(Sender);                 // Arrêt lecteur MP3
  //
  FormLecture.Show;                    // Appel de la FORM principale
end;

//
// Choix de la langue Française
// Quitter l'Application
//
procedure TFormSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Choix de la langue Française
  LoadKeyboardLayout('0000040c', KLF_ACTIVATE);
  Application.BiDiKeyboard := '0000040c';
  //
  //Quitter l'Application
  Application.Terminate;
  //
end;




//
//  Lecture de BISMIALLAH
//
procedure TFormSplash.btOpenClick(Sender: TObject);
Var
  sPath : String;

begin
  //////////////////////////////////////////////////////////////////////
  sPath := ExtractFilePath(Application.ExeName)+ '001001.mp3';
  //////////////////////////////////////////////////////////////////////
  //
  {Assign a file to the media player}
  MediaPlayerMP3.FileName := sPath;
  //
  {Open the files}
  MediaPlayerMP3.Open;
  MediaPlayerMP3.Play;
end;




//
{ Stop and close the media. }
//
procedure TFormSplash.btStopClick(Sender: TObject);
begin
  { Stop and close the media. }
  MediaPlayerMP3.Stop;
end;


//
//  A la création de la form du SPLASH
//
procedure TFormSplash.FormCreate(Sender: TObject);
begin
  { Désactiver l'auto-démarrage de  MediaPlayer}
  MediaPlayerMP3.AutoEnable := false;
  //
  // Choix de la langue arabe
  LoadKeyboardLayout('00000401', KLF_ACTIVATE);
  Application.BiDiKeyboard := '00000401';
  //
  FormSplash.Left := Screen.Width  div 2 - Width  div 2;
  FormSplash.Top  := Screen.Height div 2 - Height div 2;
  { Application de la fonction : AnimateWindow }
  AnimateWindow(Handle, 300{Vitesse}, AW_CENTER);
  Show;
  //
end;






//
// Lecture BISMIALLAH
//
procedure TFormSplash.FormActivate(Sender: TObject);
begin
  btOpenClick(Sender);
end;



end.
