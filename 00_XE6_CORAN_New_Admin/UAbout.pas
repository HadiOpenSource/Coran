unit UAbout;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFormAbout = class(TForm)
    RichEdit1: TRichEdit;
    Image1: TImage;
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  FormAbout: TFormAbout;

implementation

{$R *.dfm}

end.
