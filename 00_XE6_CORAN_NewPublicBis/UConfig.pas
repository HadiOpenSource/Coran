unit UConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFormConfig = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ChkWindows: TCheckBox;
    eMoshaf: TEdit;
    ePolice: TEdit;
    eTaille: TEdit;
    eType: TEdit;
    eAlignement: TEdit;
    eColor: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    eNoSora: TEdit;
    eNoAia: TEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    SpeedButton1: TSpeedButton;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FormConfig: TFormConfig;

implementation

{$R *.dfm}

end.
