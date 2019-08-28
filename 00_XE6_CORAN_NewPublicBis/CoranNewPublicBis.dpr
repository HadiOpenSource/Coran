program CoranNewPublicBis;

{$R *.dres}

uses
  Vcl.Forms,
  USplash in 'USplash.pas' {FormSplash},
  ULecCoran in 'ULecCoran.pas' {FormLecture},
  UAbout in 'UAbout.pas' {FormAbout},
  URecherche in 'URecherche.pas' {FormRecherche},
  MyFuncUtils in 'MyFuncUtils.pas',
  UMemoShowAya in 'UMemoShowAya.pas' {FormMemoShowAya},
  Vcl.Themes,
  Vcl.Styles,
  reinit in 'reinit.pas',
  remain in 'remain.pas' {MainForm},
  UConfig in 'UConfig.pas' {FormConfig};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormSplash, FormSplash);
  Application.CreateForm(TFormLecture, FormLecture);
  Application.CreateForm(TFormAbout, FormAbout);
  Application.CreateForm(TFormRecherche, FormRecherche);
  Application.CreateForm(TFormMemoShowAya, FormMemoShowAya);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TFormConfig, FormConfig);
  Application.Run;
end.
