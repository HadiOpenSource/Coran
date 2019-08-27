object DMZadM: TDMZadM
  OldCreateOrder = False
  Height = 577
  Width = 1123
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    DriverID = 'MySQL'
    VendorHome = 'E:\wamp64w7\bin\mysql\mysql5.7.14'
    VendorLib = 'libmysql_32.dll'
    Left = 680
    Top = 56
  end
  object FDConnectionMySQL: TFDConnection
    ConnectionName = 'MySQLconnection'
    Params.Strings = (
      'Server=localhost'
      'Database=quranDB'
      'User_Name=root'
      'CharacterSet=utf8'
      'Password=hadix@2019'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 680
    Top = 8
  end
  object FDGUIxLoginDialog1: TFDGUIxLoginDialog
    Provider = 'Forms'
    Left = 680
    Top = 112
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 680
    Top = 168
  end
  object FDDSQuerySora: TDataSource
    DataSet = FDQuerySora
    Left = 144
    Top = 360
  end
  object FDQuerySora: TFDQuery
    Active = True
    OnCalcFields = FDQuerySoraCalcFields
    Connection = FDConnectionMySQL
    SQL.Strings = (
      'Select * From Sora')
    Left = 224
    Top = 152
    object FDQuerySoraSORANO: TIntegerField
      DisplayWidth = 9
      FieldName = 'SORANO'
      Origin = 'SORANO'
      Required = True
    end
    object FDQuerySoraNAME: TWideStringField
      DisplayWidth = 10
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 30
    end
    object FDQuerySoraPageMushaf: TIntegerField
      DisplayWidth = 12
      FieldName = 'PageMushaf'
      Origin = 'PageMushaf'
      Required = True
    end
    object FDQuerySoraOrdreNouzoul: TIntegerField
      DisplayWidth = 12
      FieldName = 'OrdreNouzoul'
      Origin = 'OrdreNouzoul'
      Required = True
    end
    object FDQuerySoraOrdreMushaf: TIntegerField
      DisplayWidth = 12
      FieldName = 'OrdreMushaf'
      Origin = 'OrdreMushaf'
      Required = True
    end
    object FDQuerySoraAiaCount: TIntegerField
      DisplayWidth = 12
      FieldName = 'AiaCount'
      Origin = 'AiaCount'
      Required = True
    end
    object FDQuerySoraKalimaCount: TIntegerField
      DisplayWidth = 12
      FieldName = 'KalimaCount'
      Origin = 'KalimaCount'
      Required = True
    end
    object FDQuerySoraHarfCount: TIntegerField
      DisplayWidth = 12
      FieldName = 'HarfCount'
      Origin = 'HarfCount'
      Required = True
    end
    object FDQuerySoraLieuNouzoul: TWideStringField
      DisplayWidth = 10
      FieldName = 'LieuNouzoul'
      Origin = 'LieuNouzoul'
      Required = True
      Size = 6
    end
    object FDQuerySoraVal_H10: TIntegerField
      FieldName = 'Val_H10'
      Origin = 'Val_H10'
      Required = True
    end
    object FDQuerySoraVal_H14: TIntegerField
      FieldName = 'Val_H14'
      Origin = 'Val_H14'
      Required = True
    end
    object FDQuerySoraVal_H21: TIntegerField
      FieldName = 'Val_H21'
      Origin = 'Val_H21'
      Required = True
    end
    object FDQuerySoraVal_H28: TIntegerField
      FieldName = 'Val_H28'
      Origin = 'Val_H28'
      Required = True
    end
  end
  object FDDSSoraName: TDataSource
    DataSet = FDSoraName
    Left = 144
    Top = 408
  end
  object FDSoraName: TFDTable
    Active = True
    IndexFieldNames = 'SORANO'
    Connection = FDConnectionMySQL
    UpdateOptions.UpdateTableName = 'quranDB.sora'
    Exclusive = True
    TableName = 'quranDB.sora'
    Left = 224
    Top = 104
    object FDSoraNameSORANO: TIntegerField
      FieldName = 'SORANO'
      Origin = 'SORANO'
      Required = True
    end
    object FDSoraNameNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 30
    end
    object FDSoraNamePageMushaf: TIntegerField
      FieldName = 'PageMushaf'
      Origin = 'PageMushaf'
      Required = True
    end
    object FDSoraNameLieuNouzoul: TWideStringField
      FieldName = 'LieuNouzoul'
      Origin = 'LieuNouzoul'
      Required = True
      Size = 1
    end
    object FDSoraNameOrdreNouzoul: TIntegerField
      FieldName = 'OrdreNouzoul'
      Origin = 'OrdreNouzoul'
      Required = True
    end
    object FDSoraNameOrdreMushaf: TIntegerField
      FieldName = 'OrdreMushaf'
      Origin = 'OrdreMushaf'
      Required = True
    end
    object FDSoraNameAiaCount: TIntegerField
      FieldName = 'AiaCount'
      Origin = 'AiaCount'
      Required = True
    end
    object FDSoraNameKalimaCount: TIntegerField
      FieldName = 'KalimaCount'
      Origin = 'KalimaCount'
      Required = True
    end
    object FDSoraNameHarfCount: TIntegerField
      FieldName = 'HarfCount'
      Origin = 'HarfCount'
      Required = True
    end
    object FDSoraNameVal_H10: TIntegerField
      FieldName = 'Val_H10'
      Origin = 'Val_H10'
      Required = True
    end
    object FDSoraNameVal_H14: TIntegerField
      FieldName = 'Val_H14'
      Origin = 'Val_H14'
      Required = True
    end
    object FDSoraNameVal_H21: TIntegerField
      FieldName = 'Val_H21'
      Origin = 'Val_H21'
      Required = True
    end
    object FDSoraNameVal_H28: TIntegerField
      FieldName = 'Val_H28'
      Origin = 'Val_H28'
      Required = True
    end
  end
  object FDTabCoran: TFDTable
    IndexFieldNames = 'LINENO'
    Connection = FDConnectionMySQL
    UpdateOptions.UpdateTableName = 'quranDB.quran'
    TableName = 'quranDB.quran'
    Left = 224
    Top = 8
    object FDTabCoranLINENO: TFDAutoIncField
      FieldName = 'LINENO'
      Origin = 'LINENO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTabCoranLINEAIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LINEAIA'
      Origin = 'LINEAIA'
    end
    object FDTabCoranSORANO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SORANO'
      Origin = 'SORANO'
    end
    object FDTabCoranAIANO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AIANO'
      Origin = 'AIANO'
    end
    object FDTabCoranAIAMADINA: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'AIAMADINA'
      Origin = 'AIAMADINA'
      BlobType = ftWideMemo
    end
    object FDTabCoranAIATANZIL: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'AIATANZIL'
      Origin = 'AIATANZIL'
      BlobType = ftWideMemo
    end
    object FDTabCoranNBHARF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NBHARF'
      Origin = 'NBHARF'
    end
    object FDTabCoranNBKALIMA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NBKALIMA'
      Origin = 'NBKALIMA'
    end
    object FDTabCoranNBHARFTZ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NBHARFTZ'
      Origin = 'NBHARFTZ'
    end
    object FDTabCoranNBKALIMATZ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NBKALIMATZ'
      Origin = 'NBKALIMATZ'
    end
  end
  object FDTabMOT: TFDTable
    Active = True
    IndexFieldNames = 'NUM'
    Connection = FDConnectionMySQL
    UpdateOptions.UpdateTableName = 'quranDB.quranmot'
    TableName = 'quranDB.quranmot'
    Left = 136
    Top = 104
    object FDTabMOTNUM: TFDAutoIncField
      FieldName = 'NUM'
      Origin = 'NUM'
      ReadOnly = True
    end
    object FDTabMOTLINENO: TIntegerField
      FieldName = 'LINENO'
      Origin = 'LINENO'
      Required = True
    end
    object FDTabMOTSORANO: TIntegerField
      FieldName = 'SORANO'
      Origin = 'SORANO'
      Required = True
    end
    object FDTabMOTAIANO: TIntegerField
      FieldName = 'AIANO'
      Origin = 'AIANO'
      Required = True
    end
    object FDTabMOTMOT: TWideStringField
      FieldName = 'MOT'
      Origin = 'MOT'
      Required = True
    end
    object FDTabMOTNBHARF: TIntegerField
      FieldName = 'NBHARF'
      Origin = 'NBHARF'
      Required = True
    end
  end
  object FDTabDicMOT: TFDTable
    Active = True
    IndexFieldNames = 'NUM'
    Connection = FDConnectionMySQL
    UpdateOptions.UpdateTableName = 'quranDB.dicmot'
    TableName = 'quranDB.dicmot'
    Left = 136
    Top = 8
    object FDTabDicMOTNUM: TFDAutoIncField
      FieldName = 'NUM'
      Origin = 'NUM'
      ReadOnly = True
    end
    object FDTabDicMOTMOT: TWideStringField
      FieldName = 'MOT'
      Origin = 'MOT'
      Required = True
    end
    object FDTabDicMOTNBHARF: TIntegerField
      FieldName = 'NBHARF'
      Origin = 'NBHARF'
      Required = True
    end
    object FDTabDicMOTNBOCC: TIntegerField
      FieldName = 'NBOCC'
      Origin = 'NBOCC'
      Required = True
    end
  end
  object FDTabHARF: TFDTable
    Active = True
    IndexFieldNames = 'NUM'
    Connection = FDConnectionMySQL
    UpdateOptions.UpdateTableName = 'quranDB.quranharf'
    Exclusive = True
    TableName = 'quranDB.quranharf'
    Left = 40
    Top = 104
    object FDTabHARFNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'NUM'
      Required = True
    end
    object FDTabHARFNumHarf: TIntegerField
      FieldName = 'NumHarf'
      Origin = 'NumHarf'
      Required = True
    end
    object FDTabHARFSORANO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SORANO'
      Origin = 'SORANO'
    end
    object FDTabHARFAIANO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AIANO'
      Origin = 'AIANO'
    end
    object FDTabHARFMOTNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MOTNO'
      Origin = 'MOTNO'
    end
    object FDTabHARFLINENO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LINENO'
      Origin = 'LINENO'
    end
    object FDTabHARFHARF: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'HARF'
      Origin = 'HARF'
      Size = 1
    end
    object FDTabHARFcHarf: TIntegerField
      FieldName = 'cHarf'
      Origin = 'cHarf'
      Required = True
    end
    object FDTabHARFPHQ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PHQ'
      Origin = 'PHQ'
    end
    object FDTabHARFPHS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PHS'
      Origin = 'PHS'
    end
    object FDTabHARFPHA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PHA'
      Origin = 'PHA'
    end
    object FDTabHARFPHM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PHM'
      Origin = 'PHM'
    end
    object FDTabHARFH10: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'H10'
      Origin = 'H10'
    end
    object FDTabHARFH21: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'H21'
      Origin = 'H21'
    end
    object FDTabHARFH14: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'H14'
      Origin = 'H14'
    end
  end
  object FDDSTabHARF: TDataSource
    DataSet = FDTabHARF
    Left = 248
    Top = 408
  end
  object FDQTabHARF: TFDQuery
    Active = True
    Connection = FDConnectionMySQL
    SQL.Strings = (
      'Select * From Quranharf')
    Left = 40
    Top = 152
    object FDQTabHARFNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQTabHARFNumHarf: TIntegerField
      FieldName = 'NumHarf'
      Origin = 'NumHarf'
      Required = True
    end
    object FDQTabHARFSORANO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SORANO'
      Origin = 'SORANO'
    end
    object FDQTabHARFAIANO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AIANO'
      Origin = 'AIANO'
    end
    object FDQTabHARFMOTNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MOTNO'
      Origin = 'MOTNO'
    end
    object FDQTabHARFLINENO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LINENO'
      Origin = 'LINENO'
    end
    object FDQTabHARFHARF: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'HARF'
      Origin = 'HARF'
      Size = 1
    end
    object FDQTabHARFcHarf: TIntegerField
      FieldName = 'cHarf'
      Origin = 'cHarf'
      Required = True
    end
    object FDQTabHARFPHQ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PHQ'
      Origin = 'PHQ'
    end
    object FDQTabHARFPHS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PHS'
      Origin = 'PHS'
    end
    object FDQTabHARFPHA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PHA'
      Origin = 'PHA'
    end
    object FDQTabHARFPHM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PHM'
      Origin = 'PHM'
    end
    object FDQTabHARFH10: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'H10'
      Origin = 'H10'
    end
    object FDQTabHARFH21: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'H21'
      Origin = 'H21'
    end
    object FDQTabHARFH14: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'H14'
      Origin = 'H14'
    end
  end
  object FDDSQTabHARF: TDataSource
    DataSet = FDQTabHARF
    Left = 248
    Top = 360
  end
  object FDDSQDicMOT: TDataSource
    DataSet = FDQDicMOT
    Left = 144
    Top = 504
  end
  object FDQDicMOT: TFDQuery
    Active = True
    Connection = FDConnectionMySQL
    SQL.Strings = (
      'Select * From dicmot')
    Left = 136
    Top = 56
    object FDQDicMOTNUM: TFDAutoIncField
      FieldName = 'NUM'
      Origin = 'NUM'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQDicMOTMOT: TWideStringField
      FieldName = 'MOT'
      Origin = 'MOT'
      Required = True
    end
    object FDQDicMOTNBHARF: TIntegerField
      FieldName = 'NBHARF'
      Origin = 'NBHARF'
      Required = True
    end
    object FDQDicMOTNBOCC: TIntegerField
      FieldName = 'NBOCC'
      Origin = 'NBOCC'
      Required = True
    end
  end
  object FDDSDicMOT: TDataSource
    DataSet = FDTabDicMOT
    Left = 144
    Top = 456
  end
  object FDDSTabMOT: TDataSource
    DataSet = FDTabMOT
    Left = 240
    Top = 456
  end
  object FDQTabMOT: TFDQuery
    Active = True
    DetailFields = 'AIANO;LINENO;MOT;NBREHARF;NUM;SORANO'
    Connection = FDConnectionMySQL
    SQL.Strings = (
      'Select * From Quranmot')
    Left = 136
    Top = 152
    object FDQTabMOTNUM: TFDAutoIncField
      DisplayWidth = 7
      FieldName = 'NUM'
      Origin = 'NUM'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQTabMOTLINENO: TIntegerField
      DisplayWidth = 9
      FieldName = 'LINENO'
      Origin = 'LINENO'
      Required = True
    end
    object FDQTabMOTSORANO: TIntegerField
      DisplayWidth = 11
      FieldName = 'SORANO'
      Origin = 'SORANO'
      Required = True
    end
    object FDQTabMOTAIANO: TIntegerField
      DisplayWidth = 10
      FieldName = 'AIANO'
      Origin = 'AIANO'
      Required = True
    end
    object FDQTabMOTMOT: TWideStringField
      DisplayWidth = 24
      FieldName = 'MOT'
      Origin = 'MOT'
      Required = True
    end
    object FDQTabMOTNBHARF: TIntegerField
      DisplayWidth = 12
      FieldName = 'NBHARF'
      Origin = 'NBHARF'
      Required = True
    end
  end
  object FDDSCoran: TDataSource
    DataSet = FDTabCoran
    Left = 48
    Top = 408
  end
  object FDDSQTabMOT: TDataSource
    DataSet = FDQTabMOT
    Left = 240
    Top = 504
  end
  object FDDSQCoran: TDataSource
    DataSet = FDQueryCoran
    Left = 48
    Top = 360
  end
  object FDQueryCoran: TFDQuery
    Active = True
    Connection = FDConnectionMySQL
    FormatOptions.AssignedValues = [fvDefaultParamDataType]
    FormatOptions.DefaultParamDataType = ftWideString
    SQL.Strings = (
      'Select * From Quran')
    Left = 224
    Top = 56
  end
  object FDQSoraHarf: TFDQuery
    Active = True
    Connection = FDConnectionMySQL
    SQL.Strings = (
      'SELECT * FROM Soraharf ')
    Left = 40
    Top = 56
  end
  object FDTabSoraHarf: TFDTable
    Active = True
    IndexFieldNames = 'NUM'
    Connection = FDConnectionMySQL
    UpdateOptions.UpdateTableName = 'quranDB.soraharf'
    TableName = 'quranDB.soraharf'
    Left = 40
    Top = 8
    object FDTabSoraHarfNUM: TFDAutoIncField
      FieldName = 'NUM'
      Origin = 'NUM'
      ReadOnly = True
    end
    object FDTabSoraHarfSORANO: TIntegerField
      FieldName = 'SORANO'
      Origin = 'SORANO'
      Required = True
    end
    object FDTabSoraHarfHARF: TWideStringField
      FieldName = 'HARF'
      Origin = 'HARF'
      Required = True
      Size = 1
    end
    object FDTabSoraHarfNBREOCC: TIntegerField
      FieldName = 'NBREOCC'
      Origin = 'NBREOCC'
      Required = True
    end
  end
  object FDTabTexteRMT: TFDTable
    Active = True
    IndexFieldNames = 'NUM'
    Connection = FDConnectionMySQL
    UpdateOptions.UpdateTableName = 'quranDB.textermt'
    TableName = 'quranDB.textermt'
    Left = 320
    Top = 104
    object FDTabTexteRMTNUM: TFDAutoIncField
      FieldName = 'NUM'
      Origin = 'NUM'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTabTexteRMTTEXTERECH: TWideStringField
      FieldName = 'TEXTERECH'
      Origin = 'TEXTERECH'
      Required = True
      Size = 100
    end
    object FDTabTexteRMTDATERECH: TDateTimeField
      FieldName = 'DATERECH'
      Origin = 'DATERECH'
      Required = True
    end
    object FDTabTexteRMTNBRETT: TIntegerField
      FieldName = 'NBRETT'
      Origin = 'NBRETT'
      Required = True
    end
  end
  object FDTabTexteRMThist: TFDTable
    Active = True
    IndexFieldNames = 'NUMORDRE'
    Connection = FDConnectionMySQL
    UpdateOptions.UpdateTableName = 'quranDB.textermthist'
    TableName = 'quranDB.textermthist'
    Left = 320
    Top = 8
    object FDTabTexteRMThistNUMORDRE: TFDAutoIncField
      FieldName = 'NUMORDRE'
      Origin = 'NUMORDRE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTabTexteRMThistLINENO: TIntegerField
      FieldName = 'LINENO'
      Origin = 'LINENO'
      Required = True
    end
    object FDTabTexteRMThistSORANO: TIntegerField
      FieldName = 'SORANO'
      Origin = 'SORANO'
      Required = True
    end
    object FDTabTexteRMThistAIANO: TIntegerField
      FieldName = 'AIANO'
      Origin = 'AIANO'
      Required = True
    end
    object FDTabTexteRMThistNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'NUM'
      Required = True
    end
  end
  object FDDSSoraHarf: TDataSource
    DataSet = FDTabSoraHarf
    Left = 48
    Top = 456
  end
  object FDDSTabRMThist: TDataSource
    DataSet = FDTabTexteRMThist
    Left = 344
    Top = 456
  end
  object FDDSTexteRMT: TDataSource
    DataSet = FDTabTexteRMT
    Left = 344
    Top = 360
  end
  object FDQueryRMTHist: TFDQuery
    Active = True
    Connection = FDConnectionMySQL
    SQL.Strings = (
      'Select * From Textermthist')
    Left = 318
    Top = 56
    object FDQueryRMTHistNUMORDRE: TFDAutoIncField
      FieldName = 'NUMORDRE'
      Origin = 'NUMORDRE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQueryRMTHistLINENO: TIntegerField
      FieldName = 'LINENO'
      Origin = 'LINENO'
      Required = True
    end
    object FDQueryRMTHistSORANO: TIntegerField
      FieldName = 'SORANO'
      Origin = 'SORANO'
      Required = True
    end
    object FDQueryRMTHistAIANO: TIntegerField
      FieldName = 'AIANO'
      Origin = 'AIANO'
      Required = True
    end
    object FDQueryRMTHistNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'NUM'
      Required = True
    end
  end
  object FDQTexteRMT: TFDQuery
    Active = True
    Connection = FDConnectionMySQL
    SQL.Strings = (
      'Select * From textermt')
    Left = 320
    Top = 152
  end
  object FDDSQSoraHarf: TDataSource
    DataSet = FDQSoraHarf
    Left = 48
    Top = 504
  end
  object FDDSQRMTHist: TDataSource
    DataSet = FDQueryRMTHist
    Left = 344
    Top = 504
  end
  object FDDSQTexteRMT: TDataSource
    DataSet = FDQTexteRMT
    Enabled = False
    Left = 344
    Top = 408
  end
  object DSQuranCDS: TDataSource
    DataSet = QuranCDS
    Left = 1040
    Top = 8
  end
  object DSSoraCDS: TDataSource
    DataSet = SoraCDS
    Left = 1040
    Top = 120
  end
  object DSQuranHarfCDS: TDataSource
    DataSet = QuranHarfCDS
    Left = 1040
    Top = 232
  end
  object QuranCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPQuran'
    Left = 832
    Top = 8
    object QuranCDSLINENO: TAutoIncField
      FieldName = 'LINENO'
      Origin = 'LINENO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QuranCDSLINEAIA: TIntegerField
      FieldName = 'LINEAIA'
      Origin = 'LINEAIA'
    end
    object QuranCDSSORANO: TIntegerField
      FieldName = 'SORANO'
      Origin = 'SORANO'
    end
    object QuranCDSAIANO: TIntegerField
      FieldName = 'AIANO'
      Origin = 'AIANO'
    end
    object QuranCDSAIAMADINA: TWideMemoField
      FieldName = 'AIAMADINA'
      Origin = 'AIAMADINA'
      BlobType = ftWideMemo
    end
    object QuranCDSAIATANZIL: TWideMemoField
      FieldName = 'AIATANZIL'
      Origin = 'AIATANZIL'
      BlobType = ftWideMemo
    end
    object QuranCDSNBHARF: TIntegerField
      FieldName = 'NBHARF'
      Origin = 'NBHARF'
    end
    object QuranCDSNBKALIMA: TIntegerField
      FieldName = 'NBKALIMA'
      Origin = 'NBKALIMA'
    end
    object QuranCDSNBHARFTZ: TIntegerField
      FieldName = 'NBHARFTZ'
      Origin = 'NBHARFTZ'
    end
    object QuranCDSNBKALIMATZ: TIntegerField
      FieldName = 'NBKALIMATZ'
      Origin = 'NBKALIMATZ'
    end
  end
  object SoraCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSora'
    Left = 832
    Top = 120
    object SoraCDSSORANO: TAutoIncField
      FieldName = 'SORANO'
      Origin = 'SORANO'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object SoraCDSNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 30
    end
    object SoraCDSPageMushaf: TIntegerField
      FieldName = 'PageMushaf'
      Origin = 'PageMushaf'
      Required = True
    end
    object SoraCDSLieuNouzoul: TWideStringField
      FieldName = 'LieuNouzoul'
      Origin = 'LieuNouzoul'
      Required = True
      Size = 1
    end
    object SoraCDSOrdreNouzoul: TIntegerField
      FieldName = 'OrdreNouzoul'
      Origin = 'OrdreNouzoul'
      Required = True
    end
    object SoraCDSOrdreMushaf: TIntegerField
      FieldName = 'OrdreMushaf'
      Origin = 'OrdreMushaf'
      Required = True
    end
    object SoraCDSAiaCount: TIntegerField
      FieldName = 'AiaCount'
      Origin = 'AiaCount'
      Required = True
    end
    object SoraCDSKalimaCount: TIntegerField
      FieldName = 'KalimaCount'
      Origin = 'KalimaCount'
      Required = True
    end
    object SoraCDSHarfCount: TIntegerField
      FieldName = 'HarfCount'
      Origin = 'HarfCount'
      Required = True
    end
    object SoraCDSVal_H10: TIntegerField
      FieldName = 'Val_H10'
      Origin = 'Val_H10'
      Required = True
    end
    object SoraCDSVal_H14: TIntegerField
      FieldName = 'Val_H14'
      Origin = 'Val_H14'
      Required = True
    end
    object SoraCDSVal_H21: TIntegerField
      FieldName = 'Val_H21'
      Origin = 'Val_H21'
      Required = True
    end
    object SoraCDSVal_H28: TIntegerField
      FieldName = 'Val_H28'
      Origin = 'Val_H28'
      Required = True
    end
  end
  object QuranHarfCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPQuranHarf'
    Left = 832
    Top = 232
    object QuranHarfCDSNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'NUM'
      Required = True
    end
    object QuranHarfCDSNumHarf: TIntegerField
      FieldName = 'NumHarf'
      Origin = 'NumHarf'
      Required = True
    end
    object QuranHarfCDSSORANO: TIntegerField
      FieldName = 'SORANO'
      Origin = 'SORANO'
    end
    object QuranHarfCDSAIANO: TIntegerField
      FieldName = 'AIANO'
      Origin = 'AIANO'
    end
    object QuranHarfCDSMOTNO: TIntegerField
      FieldName = 'MOTNO'
      Origin = 'MOTNO'
    end
    object QuranHarfCDSLINENO: TIntegerField
      FieldName = 'LINENO'
      Origin = 'LINENO'
    end
    object QuranHarfCDSHARF: TWideStringField
      FieldName = 'HARF'
      Origin = 'HARF'
      Size = 1
    end
    object QuranHarfCDSPHQ: TIntegerField
      FieldName = 'PHQ'
      Origin = 'PHQ'
    end
    object QuranHarfCDSPHS: TIntegerField
      FieldName = 'PHS'
      Origin = 'PHS'
    end
    object QuranHarfCDSPHA: TIntegerField
      FieldName = 'PHA'
      Origin = 'PHA'
    end
    object QuranHarfCDSPHM: TIntegerField
      FieldName = 'PHM'
      Origin = 'PHM'
    end
    object QuranHarfCDSH10: TIntegerField
      FieldName = 'H10'
      Origin = 'H10'
    end
    object QuranHarfCDSH21: TIntegerField
      FieldName = 'H21'
      Origin = 'H21'
    end
    object QuranHarfCDSH14: TIntegerField
      FieldName = 'H14'
      Origin = 'H14'
    end
    object QuranHarfCDScHarf: TIntegerField
      FieldName = 'cHarf'
      Origin = 'cHarf'
      Required = True
    end
  end
  object DSPQuran: TDataSetProvider
    DataSet = FDTabCoran
    Left = 936
    Top = 8
  end
  object DSPSora: TDataSetProvider
    DataSet = FDSoraName
    Left = 936
    Top = 120
  end
  object DSPQuranHarf: TDataSetProvider
    DataSet = FDTabHARF
    Left = 936
    Top = 232
  end
  object DSQuranHtzCDS: TDataSource
    DataSet = QuranHtzCDS
    Left = 1040
    Top = 400
  end
  object QuranHtzCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPHtz'
    Left = 832
    Top = 400
    object QuranHtzCDSNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'NUM'
      Required = True
    end
    object QuranHtzCDSNumHarf: TIntegerField
      FieldName = 'NumHarf'
      Origin = 'NumHarf'
      Required = True
    end
    object QuranHtzCDSSORANO: TIntegerField
      FieldName = 'SORANO'
      Origin = 'SORANO'
    end
    object QuranHtzCDSAIANO: TIntegerField
      FieldName = 'AIANO'
      Origin = 'AIANO'
    end
    object QuranHtzCDSMOTNO: TIntegerField
      FieldName = 'MOTNO'
      Origin = 'MOTNO'
    end
    object QuranHtzCDSLINENO: TIntegerField
      FieldName = 'LINENO'
      Origin = 'LINENO'
    end
    object QuranHtzCDSHARF: TWideStringField
      FieldName = 'HARF'
      Origin = 'HARF'
      Size = 1
    end
    object QuranHtzCDSPHQ: TIntegerField
      FieldName = 'PHQ'
      Origin = 'PHQ'
    end
    object QuranHtzCDSPHS: TIntegerField
      FieldName = 'PHS'
      Origin = 'PHS'
    end
    object QuranHtzCDSPHA: TIntegerField
      FieldName = 'PHA'
      Origin = 'PHA'
    end
    object QuranHtzCDSPHM: TIntegerField
      FieldName = 'PHM'
      Origin = 'PHM'
    end
    object QuranHtzCDSH10: TIntegerField
      FieldName = 'H10'
      Origin = 'H10'
    end
    object QuranHtzCDSH21: TIntegerField
      FieldName = 'H21'
      Origin = 'H21'
    end
    object QuranHtzCDSH14: TIntegerField
      FieldName = 'H14'
      Origin = 'H14'
    end
    object QuranHtzCDScHarf: TIntegerField
      FieldName = 'cHarf'
      Origin = 'SORANO'
    end
  end
  object DSPHtz: TDataSetProvider
    DataSet = FDTabHarfTZ
    Left = 936
    Top = 400
  end
  object FDTabHarfTZ: TFDTable
    IndexFieldNames = 'NUM'
    Connection = FDConnectionMySQL
    UpdateOptions.UpdateTableName = 'quranDB.qharftz'
    TableName = 'quranDB.qharftz'
    Left = 440
    Top = 8
    object FDTabHarfTZNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'NUM'
      Required = True
    end
    object FDTabHarfTZNumHarf: TIntegerField
      FieldName = 'NumHarf'
      Origin = 'NumHarf'
      Required = True
    end
    object FDTabHarfTZSORANO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SORANO'
      Origin = 'SORANO'
    end
    object FDTabHarfTZAIANO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AIANO'
      Origin = 'AIANO'
    end
    object FDTabHarfTZMOTNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MOTNO'
      Origin = 'MOTNO'
    end
    object FDTabHarfTZLINENO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LINENO'
      Origin = 'LINENO'
    end
    object FDTabHarfTZHARF: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'HARF'
      Origin = 'HARF'
      Size = 1
    end
    object FDTabHarfTZPHQ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PHQ'
      Origin = 'PHQ'
    end
    object FDTabHarfTZPHS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PHS'
      Origin = 'PHS'
    end
    object FDTabHarfTZPHA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PHA'
      Origin = 'PHA'
    end
    object FDTabHarfTZPHM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PHM'
      Origin = 'PHM'
    end
    object FDTabHarfTZH10: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'H10'
      Origin = 'H10'
    end
    object FDTabHarfTZH21: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'H21'
      Origin = 'H21'
    end
    object FDTabHarfTZH14: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'H14'
      Origin = 'H14'
    end
    object FDTabHarfTZcHarf: TIntegerField
      FieldName = 'cHarf'
      Origin = 'SORANO'
    end
  end
  object FDQTabHarfTZ: TFDQuery
    Connection = FDConnectionMySQL
    SQL.Strings = (
      'Select * From qharftz')
    Left = 440
    Top = 56
  end
  object FDDSTabHarfTZ: TDataSource
    DataSet = FDTabHarfTZ
    Left = 536
    Top = 8
  end
  object FDDSQTabHarfTZ: TDataSource
    DataSet = FDQTabHarfTZ
    Left = 536
    Top = 56
  end
  object FDdicmotTZ: TFDTable
    IndexFieldNames = 'NUM'
    Connection = FDConnectionMySQL
    UpdateOptions.UpdateTableName = 'quranDB.dicmottz'
    TableName = 'quranDB.dicmottz'
    Left = 440
    Top = 104
    object FDdicmotTZNUM: TFDAutoIncField
      FieldName = 'NUM'
      Origin = 'NUM'
      ReadOnly = True
    end
    object FDdicmotTZMOT: TWideStringField
      FieldName = 'MOT'
      Origin = 'MOT'
      Required = True
    end
    object FDdicmotTZNBHARF: TIntegerField
      FieldName = 'NBHARF'
      Origin = 'NBHARF'
      Required = True
    end
    object FDdicmotTZNBOCC: TIntegerField
      FieldName = 'NBOCC'
      Origin = 'NBOCC'
      Required = True
    end
  end
  object FDQdicmotTZ: TFDQuery
    Connection = FDConnectionMySQL
    SQL.Strings = (
      'Select * From dicmottz')
    Left = 440
    Top = 152
    object FDQdicmotTZNUM: TFDAutoIncField
      FieldName = 'NUM'
      Origin = 'NUM'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQdicmotTZMOT: TWideStringField
      FieldName = 'MOT'
      Origin = 'MOT'
      Required = True
    end
    object FDQdicmotTZNBHARF: TIntegerField
      FieldName = 'NBHARF'
      Origin = 'NBHARF'
      Required = True
    end
    object FDQdicmotTZNBOCC: TIntegerField
      FieldName = 'NBOCC'
      Origin = 'NBOCC'
      Required = True
    end
  end
  object FDDSdicmotTZ: TDataSource
    DataSet = FDdicmotTZ
    Left = 536
    Top = 104
  end
  object FDDSQdicmotTZ: TDataSource
    DataSet = FDQdicmotTZ
    Left = 536
    Top = 152
  end
  object FDqmotTZ: TFDTable
    IndexFieldNames = 'NUM'
    Connection = FDConnectionMySQL
    UpdateOptions.UpdateTableName = 'qmottz'
    TableName = 'qmottz'
    Left = 440
    Top = 200
    object FDqmotTZNUM: TFDAutoIncField
      FieldName = 'NUM'
      Origin = 'NUM'
      ReadOnly = True
    end
    object FDqmotTZLINENO: TIntegerField
      FieldName = 'LINENO'
      Origin = 'LINENO'
      Required = True
    end
    object FDqmotTZSORANO: TIntegerField
      FieldName = 'SORANO'
      Origin = 'SORANO'
      Required = True
    end
    object FDqmotTZAIANO: TIntegerField
      FieldName = 'AIANO'
      Origin = 'AIANO'
      Required = True
    end
    object FDqmotTZMOT: TWideStringField
      FieldName = 'MOT'
      Origin = 'MOT'
      Required = True
    end
    object FDqmotTZNBHARF: TIntegerField
      FieldName = 'NBHARF'
      Origin = 'NBHARF'
      Required = True
    end
  end
  object FDQqmotTZ: TFDQuery
    Connection = FDConnectionMySQL
    SQL.Strings = (
      'Select * From qmottz')
    Left = 440
    Top = 248
    object FDQqmotTZNUM: TFDAutoIncField
      FieldName = 'NUM'
      Origin = 'NUM'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQqmotTZLINENO: TIntegerField
      FieldName = 'LINENO'
      Origin = 'LINENO'
      Required = True
    end
    object FDQqmotTZSORANO: TIntegerField
      FieldName = 'SORANO'
      Origin = 'SORANO'
      Required = True
    end
    object FDQqmotTZAIANO: TIntegerField
      FieldName = 'AIANO'
      Origin = 'AIANO'
      Required = True
    end
    object FDQqmotTZMOT: TWideStringField
      FieldName = 'MOT'
      Origin = 'MOT'
      Required = True
    end
    object FDQqmotTZNBHARF: TIntegerField
      FieldName = 'NBHARF'
      Origin = 'NBHARF'
      Required = True
    end
  end
  object FDDSqmotTZ: TDataSource
    DataSet = FDqmotTZ
    Left = 536
    Top = 200
  end
  object FDDSQqmotTZ: TDataSource
    DataSet = FDQqmotTZ
    Left = 536
    Top = 248
  end
  object DSqmotTZCDS: TDataSource
    DataSet = qmotTZCDS
    Left = 1040
    Top = 456
  end
  object qmotTZCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPqmotTZ'
    Left = 832
    Top = 456
    object qmotTZCDSNUM: TAutoIncField
      FieldName = 'NUM'
      Origin = 'NUM'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object qmotTZCDSLINENO: TIntegerField
      FieldName = 'LINENO'
      Origin = 'LINENO'
      Required = True
    end
    object qmotTZCDSSORANO: TIntegerField
      FieldName = 'SORANO'
      Origin = 'SORANO'
      Required = True
    end
    object qmotTZCDSAIANO: TIntegerField
      FieldName = 'AIANO'
      Origin = 'AIANO'
      Required = True
    end
    object qmotTZCDSMOT: TWideStringField
      FieldName = 'MOT'
      Origin = 'MOT'
      Required = True
    end
    object qmotTZCDSNBHARF: TIntegerField
      FieldName = 'NBHARF'
      Origin = 'NBHARF'
      Required = True
    end
  end
  object DSPqmotTZ: TDataSetProvider
    DataSet = FDqmotTZ
    Left = 936
    Top = 456
  end
  object DSdicmotTZCDS: TDataSource
    DataSet = dicmotTZCDS
    Left = 1040
    Top = 512
  end
  object dicmotTZCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPdicmotTZCDS'
    Left = 832
    Top = 512
    object dicmotTZCDSNUM: TAutoIncField
      FieldName = 'NUM'
      Origin = 'NUM'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object dicmotTZCDSMOT: TWideStringField
      FieldName = 'MOT'
      Origin = 'MOT'
      Required = True
    end
    object dicmotTZCDSNBHARF: TIntegerField
      FieldName = 'NBHARF'
      Origin = 'NBHARF'
      Required = True
    end
    object dicmotTZCDSNBOCC: TIntegerField
      FieldName = 'NBOCC'
      Origin = 'NBOCC'
      Required = True
    end
  end
  object DSPdicmotTZCDS: TDataSetProvider
    DataSet = FDdicmotTZ
    Left = 936
    Top = 512
  end
  object DSTabMotCDS: TDataSource
    DataSet = TabMotCDS
    Left = 1040
    Top = 288
  end
  object TabMotCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPqmotTZ'
    Left = 832
    Top = 288
    object AutoIncField1: TAutoIncField
      FieldName = 'NUM'
      Origin = 'NUM'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'LINENO'
      Origin = 'LINENO'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'SORANO'
      Origin = 'SORANO'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'AIANO'
      Origin = 'AIANO'
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'MOT'
      Origin = 'MOT'
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'NBHARF'
      Origin = 'NBHARF'
      Required = True
    end
  end
  object DSPTabMotCDS: TDataSetProvider
    DataSet = FDTabMOT
    Left = 936
    Top = 288
  end
  object DSDicMotCDS: TDataSource
    DataSet = DicMotCDS
    Left = 1040
    Top = 344
  end
  object DicMotCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPdicmotTZCDS'
    Left = 832
    Top = 344
    object AutoIncField2: TAutoIncField
      FieldName = 'NUM'
      Origin = 'NUM'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object WideStringField2: TWideStringField
      FieldName = 'MOT'
      Origin = 'MOT'
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'NBHARF'
      Origin = 'NBHARF'
      Required = True
    end
    object DicMotCDSNBOCC: TIntegerField
      FieldName = 'NBOCC'
      Origin = 'NBOCC'
      Required = True
    end
  end
  object DSPDicMotCDS: TDataSetProvider
    DataSet = FDdicmotTZ
    Left = 936
    Top = 344
  end
  object DSQuranQCDS: TDataSource
    DataSet = QuranQCDS
    Left = 1040
    Top = 64
  end
  object QuranQCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPQuran'
    Left = 832
    Top = 64
    object AutoIncField3: TAutoIncField
      FieldName = 'LINENO'
      Origin = 'LINENO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'LINEAIA'
      Origin = 'LINEAIA'
    end
    object IntegerField6: TIntegerField
      FieldName = 'SORANO'
      Origin = 'SORANO'
    end
    object IntegerField7: TIntegerField
      FieldName = 'AIANO'
      Origin = 'AIANO'
    end
    object WideMemoField1: TWideMemoField
      FieldName = 'AIAMADINA'
      Origin = 'AIAMADINA'
      BlobType = ftWideMemo
    end
    object WideMemoField2: TWideMemoField
      FieldName = 'AIATANZIL'
      Origin = 'AIATANZIL'
      BlobType = ftWideMemo
    end
    object IntegerField9: TIntegerField
      FieldName = 'NBHARF'
      Origin = 'NBHARF'
    end
    object IntegerField10: TIntegerField
      FieldName = 'NBKALIMA'
      Origin = 'NBKALIMA'
    end
    object IntegerField11: TIntegerField
      FieldName = 'NBHARFTZ'
      Origin = 'NBHARFTZ'
    end
    object IntegerField12: TIntegerField
      FieldName = 'NBKALIMATZ'
      Origin = 'NBKALIMATZ'
    end
  end
  object DSPQuranQ: TDataSetProvider
    DataSet = FDQueryCoran
    Left = 936
    Top = 64
  end
  object DSSoraHarfCDS: TDataSource
    DataSet = SoraHarfCDS
    Left = 1040
    Top = 176
  end
  object SoraHarfCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSoraHarf'
    Left = 832
    Top = 176
    object SoraHarfCDSNUM: TAutoIncField
      FieldName = 'NUM'
      Origin = 'NUM'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object SoraHarfCDSSORANO: TIntegerField
      FieldName = 'SORANO'
      Origin = 'SORANO'
      Required = True
    end
    object SoraHarfCDSHARF: TWideStringField
      FieldName = 'HARF'
      Origin = 'HARF'
      Required = True
      Size = 1
    end
    object SoraHarfCDSNBREOCC: TIntegerField
      FieldName = 'NBREOCC'
      Origin = 'NBREOCC'
      Required = True
    end
  end
  object DSPSoraHarf: TDataSetProvider
    DataSet = FDTabSoraHarf
    Left = 936
    Top = 176
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'CODE_CAROSS'
    Connection = FDConnectionMySQL
    Left = 48
    Top = 240
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 120
    Top = 240
  end
  object FDQeditCoran: TFDQuery
    Active = True
    Connection = FDConnectionMySQL
    SQL.Strings = (
      'Select * From Quran')
    Left = 224
    Top = 240
  end
  object FDDSQeditCoran: TDataSource
    DataSet = FDQeditCoran
    Left = 320
    Top = 240
  end
end
