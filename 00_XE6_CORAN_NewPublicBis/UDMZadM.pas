unit UDMZadM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Data.Win.ADODB, Datasnap.DBClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  FireDAC.VCLUI.Login, FireDAC.VCLUI.Wait, FireDAC.Comp.DataMove,
  FireDAC.Comp.UI, Datasnap.Provider;

type
  TDMZadM = class(TDataModule)

    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDConnectionMySQL: TFDConnection;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;

    FDDSQuerySora: TDataSource;
    FDQuerySora: TFDQuery;
    FDDSSoraName: TDataSource;
    FDSoraName: TFDTable;
    FDTabCoran: TFDTable;
    FDTabMOT: TFDTable;
    FDTabDicMOT: TFDTable;
    FDTabHARF: TFDTable;
    FDDSTabHARF: TDataSource;
    FDQTabHARF: TFDQuery;
    FDDSQTabHARF: TDataSource;
    FDDSQDicMOT: TDataSource;
    FDQDicMOT: TFDQuery;
    FDDSDicMOT: TDataSource;
    FDDSTabMOT: TDataSource;
    FDQTabMOT: TFDQuery;
    FDDSCoran: TDataSource;
    FDDSQTabMOT: TDataSource;
    FDDSQCoran: TDataSource;
    FDQueryCoran: TFDQuery;
    FDQSoraHarf: TFDQuery;
    FDTabSoraHarf: TFDTable;
    FDTabTexteRMT: TFDTable;
    FDTabTexteRMThist: TFDTable;
    FDDSSoraHarf: TDataSource;
    FDDSTabRMThist: TDataSource;
    FDDSTexteRMT: TDataSource;
    FDQueryRMTHist: TFDQuery;
    FDQTexteRMT: TFDQuery;
    FDDSQSoraHarf: TDataSource;
    FDDSQRMTHist: TDataSource;
    FDDSQTexteRMT: TDataSource;
    FDSoraNameSORANO: TIntegerField;
    FDSoraNameNAME: TWideStringField;
    FDSoraNamePageMushaf: TIntegerField;
    FDSoraNameLieuNouzoul: TWideStringField;
    FDSoraNameOrdreNouzoul: TIntegerField;
    FDSoraNameOrdreMushaf: TIntegerField;
    FDSoraNameAiaCount: TIntegerField;
    FDSoraNameKalimaCount: TIntegerField;
    FDSoraNameHarfCount: TIntegerField;
    FDQuerySoraSORANO: TIntegerField;
    FDQuerySoraNAME: TWideStringField;
    FDQuerySoraPageMushaf: TIntegerField;
    FDQuerySoraOrdreNouzoul: TIntegerField;
    FDQuerySoraOrdreMushaf: TIntegerField;
    FDQuerySoraAiaCount: TIntegerField;
    FDQuerySoraKalimaCount: TIntegerField;
    FDQuerySoraHarfCount: TIntegerField;
    FDTabTexteRMTNUM: TFDAutoIncField;
    FDTabTexteRMTTEXTERECH: TWideStringField;
    FDTabTexteRMTDATERECH: TDateTimeField;
    FDTabTexteRMTNBRETT: TIntegerField;
    FDTabTexteRMThistNUMORDRE: TFDAutoIncField;
    FDTabTexteRMThistLINENO: TIntegerField;
    FDTabTexteRMThistSORANO: TIntegerField;
    FDTabTexteRMThistAIANO: TIntegerField;
    FDTabTexteRMThistNUM: TIntegerField;
    FDQueryRMTHistNUMORDRE: TFDAutoIncField;
    FDQueryRMTHistLINENO: TIntegerField;
    FDQueryRMTHistSORANO: TIntegerField;
    FDQueryRMTHistAIANO: TIntegerField;
    FDQueryRMTHistNUM: TIntegerField;
    FDQTabMOTNUM: TFDAutoIncField;
    FDQTabMOTLINENO: TIntegerField;
    FDQTabMOTSORANO: TIntegerField;
    FDQTabMOTAIANO: TIntegerField;
    FDQTabMOTMOT: TWideStringField;
    FDQTabMOTNBHARF: TIntegerField;
    FDTabDicMOTNUM: TFDAutoIncField;
    FDTabDicMOTMOT: TWideStringField;
    FDTabDicMOTNBHARF: TIntegerField;
    FDTabSoraHarfNUM: TFDAutoIncField;
    FDTabSoraHarfSORANO: TIntegerField;
    FDTabSoraHarfHARF: TWideStringField;
    FDTabSoraHarfNBREOCC: TIntegerField;
    DSQuranHarfCDS: TDataSource;
    QuranHarfCDS: TClientDataSet;
    DSQuranHtzCDS: TDataSource;
    QuranHtzCDS: TClientDataSet;
    FDQuerySoraLieuNouzoul: TWideStringField;
    FDTabHarfTZ: TFDTable;
    FDQTabHarfTZ: TFDQuery;
    FDDSTabHarfTZ: TDataSource;
    FDDSQTabHarfTZ: TDataSource;
    FDQdicmotTZ: TFDQuery;
    FDdicmotTZ: TFDTable;
    FDDSdicmotTZ: TDataSource;
    FDDSQdicmotTZ: TDataSource;
    FDqmotTZ: TFDTable;
    FDQqmotTZ: TFDQuery;
    FDDSqmotTZ: TDataSource;
    FDDSQqmotTZ: TDataSource;
    FDdicmotTZNUM: TFDAutoIncField;
    FDdicmotTZMOT: TWideStringField;
    FDdicmotTZNBHARF: TIntegerField;
    FDQdicmotTZNUM: TFDAutoIncField;
    FDQdicmotTZMOT: TWideStringField;
    FDQdicmotTZNBHARF: TIntegerField;
    FDqmotTZNUM: TFDAutoIncField;
    FDqmotTZLINENO: TIntegerField;
    FDqmotTZSORANO: TIntegerField;
    FDqmotTZAIANO: TIntegerField;
    FDqmotTZMOT: TWideStringField;
    FDqmotTZNBHARF: TIntegerField;
    FDQqmotTZNUM: TFDAutoIncField;
    FDQqmotTZLINENO: TIntegerField;
    FDQqmotTZSORANO: TIntegerField;
    FDQqmotTZAIANO: TIntegerField;
    FDQqmotTZMOT: TWideStringField;
    FDQqmotTZNBHARF: TIntegerField;
    FDTabCoranLINENO: TFDAutoIncField;
    FDTabCoranLINEAIA: TIntegerField;
    FDTabCoranSORANO: TIntegerField;
    FDTabCoranAIANO: TIntegerField;
    FDTabCoranAIAMADINA: TWideMemoField;
    FDTabCoranAIATANZIL: TWideMemoField;
    FDTabCoranNBHARF: TIntegerField;
    FDTabCoranNBKALIMA: TIntegerField;
    FDTabCoranNBHARFTZ: TIntegerField;
    FDTabCoranNBKALIMATZ: TIntegerField;
    FDTabMOTNUM: TFDAutoIncField;
    FDTabMOTLINENO: TIntegerField;
    FDTabMOTSORANO: TIntegerField;
    FDTabMOTAIANO: TIntegerField;
    FDTabMOTMOT: TWideStringField;
    FDTabMOTNBHARF: TIntegerField;
    DSqmotTZCDS: TDataSource;
    qmotTZCDS: TClientDataSet;
    DSdicmotTZCDS: TDataSource;
    dicmotTZCDS: TClientDataSet;
    qmotTZCDSNUM: TAutoIncField;
    qmotTZCDSLINENO: TIntegerField;
    qmotTZCDSSORANO: TIntegerField;
    qmotTZCDSAIANO: TIntegerField;
    qmotTZCDSMOT: TWideStringField;
    qmotTZCDSNBHARF: TIntegerField;
    dicmotTZCDSNUM: TAutoIncField;
    dicmotTZCDSMOT: TWideStringField;
    dicmotTZCDSNBHARF: TIntegerField;
    DSTabMotCDS: TDataSource;
    TabMotCDS: TClientDataSet;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    WideStringField1: TWideStringField;
    IntegerField4: TIntegerField;
    DSDicMotCDS: TDataSource;
    DicMotCDS: TClientDataSet;
    AutoIncField2: TAutoIncField;
    WideStringField2: TWideStringField;
    IntegerField8: TIntegerField;
    FDQDicMOTNUM: TFDAutoIncField;
    FDQDicMOTMOT: TWideStringField;
    FDQDicMOTNBHARF: TIntegerField;
    FDTabHarfTZNUM: TIntegerField;
    FDTabHarfTZNumHarf: TIntegerField;
    FDTabHarfTZSORANO: TIntegerField;
    FDTabHarfTZAIANO: TIntegerField;
    FDTabHarfTZMOTNO: TIntegerField;
    FDTabHarfTZLINENO: TIntegerField;
    FDTabHarfTZHARF: TWideStringField;
    FDTabHarfTZPHQ: TIntegerField;
    FDTabHarfTZPHS: TIntegerField;
    FDTabHarfTZPHA: TIntegerField;
    FDTabHarfTZPHM: TIntegerField;
    FDTabHarfTZH10: TIntegerField;
    FDTabHarfTZH21: TIntegerField;
    FDTabHarfTZH14: TIntegerField;
    FDTabHARFNUM: TIntegerField;
    FDTabHARFNumHarf: TIntegerField;
    FDTabHARFSORANO: TIntegerField;
    FDTabHARFAIANO: TIntegerField;
    FDTabHARFMOTNO: TIntegerField;
    FDTabHARFLINENO: TIntegerField;
    FDTabHARFHARF: TWideStringField;
    FDTabHARFcHarf: TIntegerField;
    FDTabHARFPHQ: TIntegerField;
    FDTabHARFPHS: TIntegerField;
    FDTabHARFPHA: TIntegerField;
    FDTabHARFPHM: TIntegerField;
    FDTabHARFH10: TIntegerField;
    FDTabHARFH21: TIntegerField;
    FDTabHARFH14: TIntegerField;
    FDQTabHARFNUM: TIntegerField;
    FDQTabHARFNumHarf: TIntegerField;
    FDQTabHARFSORANO: TIntegerField;
    FDQTabHARFAIANO: TIntegerField;
    FDQTabHARFMOTNO: TIntegerField;
    FDQTabHARFLINENO: TIntegerField;
    FDQTabHARFHARF: TWideStringField;
    FDQTabHARFcHarf: TIntegerField;
    FDQTabHARFPHQ: TIntegerField;
    FDQTabHARFPHS: TIntegerField;
    FDQTabHARFPHA: TIntegerField;
    FDQTabHARFPHM: TIntegerField;
    FDQTabHARFH10: TIntegerField;
    FDQTabHARFH21: TIntegerField;
    FDQTabHARFH14: TIntegerField;
    QuranHtzCDSNUM: TIntegerField;
    QuranHtzCDSNumHarf: TIntegerField;
    QuranHtzCDSSORANO: TIntegerField;
    QuranHtzCDSAIANO: TIntegerField;
    QuranHtzCDSMOTNO: TIntegerField;
    QuranHtzCDSLINENO: TIntegerField;
    QuranHtzCDSHARF: TWideStringField;
    QuranHtzCDSPHQ: TIntegerField;
    QuranHtzCDSPHS: TIntegerField;
    QuranHtzCDSPHA: TIntegerField;
    QuranHtzCDSPHM: TIntegerField;
    QuranHtzCDSH10: TIntegerField;
    QuranHtzCDSH21: TIntegerField;
    QuranHtzCDSH14: TIntegerField;
    QuranHarfCDSNUM: TIntegerField;
    QuranHarfCDSNumHarf: TIntegerField;
    QuranHarfCDSSORANO: TIntegerField;
    QuranHarfCDSAIANO: TIntegerField;
    QuranHarfCDSMOTNO: TIntegerField;
    QuranHarfCDSLINENO: TIntegerField;
    QuranHarfCDSHARF: TWideStringField;
    QuranHarfCDSPHQ: TIntegerField;
    QuranHarfCDSPHS: TIntegerField;
    QuranHarfCDSPHA: TIntegerField;
    QuranHarfCDSPHM: TIntegerField;
    QuranHarfCDSH10: TIntegerField;
    QuranHarfCDSH21: TIntegerField;
    QuranHarfCDSH14: TIntegerField;
    QuranHarfCDScHarf: TIntegerField;
    FDTabHarfTZcHarf: TIntegerField;
    QuranHtzCDScHarf: TIntegerField;
    DSSoraHarfCDS: TDataSource;
    SoraHarfCDS: TClientDataSet;
    FDTabDicMOTNBOCC: TIntegerField;
    SoraHarfCDSNUM: TAutoIncField;
    SoraHarfCDSSORANO: TIntegerField;
    SoraHarfCDSHARF: TWideStringField;
    SoraHarfCDSNBREOCC: TIntegerField;
    FDdicmotTZNBOCC: TIntegerField;
    FDQdicmotTZNBOCC: TIntegerField;
    DicMotCDSNBOCC: TIntegerField;
    FDQDicMOTNBOCC: TIntegerField;
    dicmotTZCDSNBOCC: TIntegerField;

   procedure TabHouroufAfterDelete(DataSet: TDataSet);
    procedure TabHouroufAfterPost(DataSet: TDataSet);
    procedure FDQueryCoranAIAMADINAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDQuerySoraCalcFields(DataSet: TDataSet);

  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DMZadM: TDMZadM;

implementation

{$R *.DFM}


//
// عرض مكان النزول
//
procedure TDMZadM.FDQuerySoraCalcFields(DataSet: TDataSet);
begin
   //If FDQuerySoraLieuNouz.Value = 'H' Then
   //       FDQuerySoraLieuNouz.Value := 'مكة'

  //Else  FDQuerySoraLieuNouz.Value := 'مدينة';
end;







procedure TDMZadM.FDQueryCoranAIAMADINAGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := Copy(DMZadM.FDQueryCoran.FieldByName('AIAMADINA').AsString, 1, 50);
end;










procedure TDMZadM.TabHouroufAfterDelete(DataSet: TDataSet);
begin
  //FormHourouf.StatusBar1.SimpleText := Format('%d enregistrements dans la table', [DataSet.RecordCount]);
end;

procedure TDMZadM.TabHouroufAfterPost(DataSet: TDataSet);
begin
  //FormHourouf.StatusBar1.SimpleText := 'Modifications d''enregistrement achevées';
end;

end.
