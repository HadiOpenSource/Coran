unit UFahresN;

interface

uses
  Windows, Messages, SysUtils,Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, jpeg;

type
  TFormFahresN = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Image1: TImage;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FormFahresN: TFormFahresN;

implementation

uses UDMZadM;

{$R *.dfm}

procedure TFormFahresN.FormActivate(Sender: TObject);
Var
  StrSql : String;
begin
  //
  //
  DMZadM.FDQuerySora.Active := True;
  DMZadM.FDSoraName.Open;
  //
  DMZadM.FDQuerySora.Close;
  DMZadM.FDQuerySora.Sql.Clear;
  //
  StrSql := 'Select * From Sora Order By OrdreNouzoul';
  //
  DMZadM.FDQuerySora.Sql.Add(strSql);
  DMZadM.FDQuerySora.Open;
  //
end;



procedure TFormFahresN.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormFahresN.RadioGroup1Click(Sender: TObject);
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

end.
