unit UAbout;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  ShellAPI;

type
  TFormAbout = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    Panel1: TPanel;
    Link: TLabel;
    procedure Image2Click(Sender: TObject);
    procedure LinkClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FormAbout: TFormAbout;

implementation

{$R *.dfm}

procedure TFormAbout.Image2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAbout.LinkClick(Sender: TObject);
begin
  ShellExecute(0, 'open', PWideChar((Sender as Tlabel).hint), nil, nil, SW_SHOWNORMAL);
end;

end.
