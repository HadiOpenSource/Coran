program CoranNewAdmin;

{$R *.dres}

uses
  Vcl.Forms,
  USplash in 'USplash.pas' {FormSplash},
  ULecCoran in 'ULecCoran.pas' {FormLecture},
  UDMZadM in 'UDMZadM.pas' {DMZadM: TDataModule},
  UAbout in 'UAbout.pas' {FormAbout},
  UFahresN in 'UFahresN.pas' {FormFahresN},
  URecherche in 'URecherche.pas' {FormRecherche},
  URechAIA in 'URechAIA.pas' {FormAIAAIA},
  UEditCoran in 'UEditCoran.pas' {FormEditCoran},
  UMotsCORANTZ in 'UMotsCORANTZ.pas' {FormMotsCoranTZ},
  MyFuncUtils in 'MyFuncUtils.pas',
  UMemoShowAya in 'UMemoShowAya.pas' {FormMemoShowAya};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormSplash, FormSplash);
  Application.CreateForm(TFormLecture, FormLecture);
  Application.CreateForm(TDMZadM, DMZadM);
  Application.CreateForm(TFormAbout, FormAbout);
  Application.CreateForm(TFormFahresN, FormFahresN);
  Application.CreateForm(TFormAIAAIA, FormAIAAIA);
  Application.CreateForm(TFormRecherche, FormRecherche);
  Application.CreateForm(TFormAIAAIA, FormAIAAIA);
  Application.CreateForm(TFormEditCoran, FormEditCoran);
  Application.CreateForm(TFormMotsCoranTZ, FormMotsCoranTZ);
  Application.CreateForm(TFormMemoShowAya, FormMemoShowAya);
  Application.Run;
end.
