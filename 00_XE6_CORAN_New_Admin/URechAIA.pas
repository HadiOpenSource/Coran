unit URechAIA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ComCtrls, ShellApi, ExtCtrls, jpeg;

type
  TFormAIAAIA = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label2: TLabel;
    DBLUCBSora: TDBLookupComboBox;
    DBRichEditAIA: TDBRichEdit;
    Label1: TLabel;
    DBLUCBAya: TDBLookupComboBox;
    Label3: TLabel;
    Button1: TButton;
    DBText1: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText2: TDBText;
    Label6: TLabel;
    procedure DBLUCBSoraClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBRichEditAIAClick(Sender: TObject);
    procedure FormatMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FormAIAAIA: TFormAIAAIA;

implementation

uses UDMZadM, ULecCoran;

{$R *.dfm}

procedure TFormAIAAIA.DBLUCBSoraClick(Sender: TObject);
 Var
   VaLeur : String;
begin
 if ( DBLUCBSora.Text <> '') Then
  Begin
   VaLeur := DBLUCBSora.KeyValue;
   //
   DMZadM.FDQueryCoran.Close;
   DMZadM.FDQueryCoran.Sql.Clear;
   DMZadM.FDQueryCoran.Sql.Add('Select * From Quran where SORANO = '''+ Valeur+'''');
   DMZadM.FDQueryCoran.Open;
   //
   DBLUCBAya.SetFocus;
   DBLUCBAya.KeyValue := '1';
   //
  End;
  //
end;



procedure TFormAIAAIA.FormActivate(Sender: TObject);
begin
  DBLUCBSora.KeyValue := DMZadM.FDQueryCoran.fieldbyname('SORANO').AsString;
  DBLUCBSora.OnClick(Sender);
  //
  DBLUCBAya.KeyValue := '1';
  DBLUCBAya.SetFocus;

end;

{procedure TFormAIAAIA.FormCreate(Sender: TObject);

Const
  crMyCursor =5;

var
  Save_Cursor:TCursor;
  
Begin
  Save_Cursor :=Screen.Cursor;
  Screen.Cursor :=crHourGlass;  // Affiche le curseur en forme de sablier
  try
    // Effectue une opération de longue durée
  finally
    Screen.Cursor :=Save_Cursor;   // Revient toujours à la normal
  end;

end;

begin

  //Screen.Cursors[crMyCursor]:=LoadCursor(HInstance,'Quran-00');
  //Cursor := crMyCursor;

end; }

procedure TFormAIAAIA.DBRichEditAIAClick(Sender: TObject);
begin
  // FormatMemo;
end;


procedure TFormAIAAIA.FormatMemo;
Begin
 with DBRichEditAIA do
      begin
         Enabled := True;
        // Définit le style d'énumération
        Paragraph.Alignment := taCenter;
        DefAttributes.Style := [fsBold];
        Lines.Add('');

        //Lines.Add(DataJORA.SQLFound.FieldByName('LigneTexte').AsString);

        Lines.Move(Lines.Count-1, 0);

        Paragraph.Alignment := taLeftJustify;
        Paragraph.FirstIndent := 5;
        Paragraph.Numbering := nsBullet;
        Lines.Add('');
        Paragraph.Numbering := nsNone;
      End;
      //

End;



procedure TFormAIAAIA.FormCreate(Sender: TObject);
begin
  DMZadM.FDQueryCoran.Active := True;
  DMZadM.FDQueryCoran.Open;
end;





procedure TFormAIAAIA.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
