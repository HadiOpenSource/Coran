unit UMemoShowAya;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TFormMemoShowAya = class(TForm)
    MemoShowAya: TMemo;
    BtnShowAyaQuitter: TButton;
    procedure BtnShowAyaQuitterClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FormMemoShowAya: TFormMemoShowAya;

implementation

{$R *.dfm}

procedure TFormMemoShowAya.BtnShowAyaQuitterClick(Sender: TObject);
begin
  Close;
end;



procedure TFormMemoShowAya.FormActivate(Sender: TObject);
begin
   BtnShowAyaQuitter.SetFocus;
end;

end.
