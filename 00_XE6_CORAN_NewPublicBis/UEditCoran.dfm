object FormEditCoran: TFormEditCoran
  Left = 274
  Top = 154
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 
    #1593#1585#1590' '#1608' '#1578#1604#1575#1608#1577'  '#1606#1589' '#1575#1604#1602#1585#1570#1606' '#1575#1604#1603#1585#1610#1605'                                   ' +
    '                                                      '#1605#1593#1604#1580#1577' '#1608' '#1578#1589 +
    #1581#1610#1581' '#1575#1604#1571#1582#1591#1575#1569'                                                     ' +
    '                                      '#1575#1604#1573#1589#1583#1575#1585' 4.00'
  ClientHeight = 740
  ClientWidth = 1374
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesigned
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label2: TLabel
    Left = 453
    Top = 45
    Width = 107
    Height = 32
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1606#1589' '#1575#1604#1602#1585#1570#1606' '#1575#1604#1603#1585#1610#1605' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Traditional Arabic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 651
    Top = 45
    Width = 143
    Height = 32
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1601#1607#1585#1587' '#1587#1608#1585' '#1575#1604#1602#1585#1570#1606' '#1575#1604#1603#1585#1610#1605
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Traditional Arabic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 951
    Top = 316
    Width = 124
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1593#1583#1583' '#1575#1604#1581#1585#1608#1601' '#1601#1610' '#1575#1604#1587#1608#1585#1577
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 769
    Top = 312
    Width = 133
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1575#1585#1602#1575#1605' '#1581#1608#1604' '#1587#1608#1585' '#1575#1604#1602#1585#1570#1606' '#1575#1604#1603#1585#1610#1605
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Traditional Arabic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 1111
    Top = 176
    Width = 71
    Height = 18
    Caption = 'StringGrid'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid2: TDBGrid
    Left = 638
    Top = 74
    Width = 440
    Height = 238
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BiDiMode = bdRightToLeft
    DataSource = DMZadM.FDDSQuerySora
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid2CellClick
    OnColEnter = DBGrid2ColEnter
    OnTitleClick = DBGrid2TitleClick
  end
  object DBGrid3: TDBGrid
    Tag = 1
    Left = 4
    Top = 75
    Width = 630
    Height = 238
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataSource = DMZadM.FDDSQCoran
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid3CellClick
    OnColEnter = DBGrid3ColEnter
    OnKeyDown = DBGrid3KeyDown
    OnTitleClick = DBGrid3TitleClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 721
    Width = 1374
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    AutoHint = True
    BiDiMode = bdRightToLeft
    Panels = <
      item
        Width = 400
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
    ParentBiDiMode = False
  end
  object Memo1: TMemo
    Left = 1082
    Top = 349
    Width = 285
    Height = 73
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BiDiMode = bdRightToLeft
    Lines.Strings = (
      'Memo1')
    ParentBiDiMode = False
    TabOrder = 3
  end
  object RichEdit1: TRichEdit
    Left = 577
    Top = 452
    Width = 165
    Height = 28
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BiDiMode = bdRightToLeft
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentBiDiMode = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 4
    Zoom = 100
  end
  object Panel2: TPanel
    Left = 0
    Top = 578
    Width = 414
    Height = 136
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BevelInner = bvLowered
    TabOrder = 5
    object Button14: TButton
      Left = 11
      Top = 9
      Width = 111
      Height = 18
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Ordre Al'#233'atoire AiaC'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button14Click
    end
    object Button6: TButton
      Left = 10
      Top = 26
      Width = 112
      Height = 18
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Crypter Texte Quran'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button6Click
    end
    object Button12: TButton
      Left = 9
      Top = 43
      Width = 113
      Height = 18
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Crypt QuranK'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 9
      Top = 60
      Width = 113
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Crypter AiaC'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button13Click
    end
    object Button10: TButton
      Left = 9
      Top = 78
      Width = 113
      Height = 18
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Kalima 2 '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button10Click
    end
    object KalimateCoran: TButton
      Left = 6
      Top = 112
      Width = 116
      Height = 18
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Kalima 1 Coran'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = KalimateCoranClick
    end
    object Button7: TButton
      Left = 8
      Top = 92
      Width = 114
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Change DataSource'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button7Click
    end
    object CopierBtn: TButton
      Left = 129
      Top = 110
      Width = 148
      Height = 18
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Copier MEMO'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = CopierBtnClick
    end
    object Button8: TButton
      Left = 129
      Top = 93
      Width = 148
      Height = 18
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Copie AIA'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 129
      Top = 75
      Width = 148
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'CTRL AIA vide'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button9Click
    end
    object Button5: TButton
      Left = 129
      Top = 58
      Width = 148
      Height = 18
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Num Page'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = Button5Click
    end
    object Button4: TButton
      Left = 129
      Top = 42
      Width = 148
      Height = 17
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Data Ayate'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = Button4Click
    end
    object Button17: TButton
      Left = 129
      Top = 5
      Width = 148
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Copie Audio dans Base'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = Button17Click
    end
    object Button3: TButton
      Left = 374
      Top = 3
      Width = 22
      Height = 24
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = '...'
      TabOrder = 13
      OnClick = Button3Click
    end
    object eFichiers: TEdit
      Left = 284
      Top = 4
      Width = 86
      Height = 22
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 14
      Text = 'eFichiers Audio'
    end
    object Button21: TButton
      Left = 291
      Top = 101
      Width = 103
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1576#1581#1579' '#1601#1610' '#1606#1589' '#1575#1604#1602#1585#1570#1606' '
      TabOrder = 15
      OnClick = Button21Click
    end
    object Button22: TButton
      Left = 290
      Top = 82
      Width = 104
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1578#1589#1581#1610#1581' '#1587#1585#1610#1593
      TabOrder = 16
    end
    object Button16: TButton
      Left = 290
      Top = 38
      Width = 104
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1601#1589#1604' '#1608#1575#1608' '#1575#1604#1593#1591#1601
      TabOrder = 17
      OnClick = Button16Click
    end
    object Button23: TButton
      Left = 290
      Top = 59
      Width = 104
      Height = 22
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1581#1584#1601' '#1575#1604#1601#1585#1575#1594#1575#1578
      TabOrder = 18
      OnClick = Button23Click
    end
    object Button24: TButton
      Left = 129
      Top = 23
      Width = 148
      Height = 18
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Changer DataSource'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      OnClick = Button24Click
    end
  end
  object Panel3: TPanel
    Left = 415
    Top = 312
    Width = 162
    Height = 402
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BevelInner = bvLowered
    TabOrder = 6
    object Label7: TLabel
      Left = 40
      Top = 14
      Width = 96
      Height = 14
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1573#1583#1582#1575#1604' '#1575#1604#1603#1604#1605#1577' '#1605#1608#1590#1593' '#1575#1604#1578#1594#1610#1610#1585' '
      Transparent = True
    end
    object Label8: TLabel
      Left = 48
      Top = 302
      Width = 69
      Height = 14
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1593#1585#1590' '#1606#1578#1610#1580#1577' '#1575#1604#1593#1605#1604#1610#1577
    end
    object Bevel1: TBevel
      Left = 15
      Top = 8
      Width = 137
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
    end
    object Label9: TLabel
      Left = 71
      Top = 148
      Width = 87
      Height = 14
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Alignment = taCenter
      Caption = #1605#1608#1590#1593' '#1575#1604#1581#1584#1601' '#1575#1608' '#1575#1604#1573#1583#1585#1575#1580
      WordWrap = True
    end
    object Label10: TLabel
      Left = 69
      Top = 170
      Width = 82
      Height = 28
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Alignment = taCenter
      Caption = #1593#1583#1583' '#1575#1604#1581#1585#1608#1601' '#1604#1604#1581#1584#1601' '#1575#1608' '#1604#1604#1573#1583#1585#1575#1580
      WordWrap = True
    end
    object Label11: TLabel
      Left = 86
      Top = 207
      Width = 61
      Height = 14
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Alignment = taCenter
      Caption = ' '#1575#1604#1581#1585#1608#1601' '#1604#1604#1573#1583#1585#1575#1580
      WordWrap = True
    end
    object EditTexte: TEdit
      Tag = 2
      Left = 13
      Top = 39
      Width = 140
      Height = 22
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
      OnExit = EditTexteExit
    end
    object BtnSuppression: TButton
      Left = 12
      Top = 65
      Width = 146
      Height = 26
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      BiDiMode = bdRightToLeft
      Caption = #1581#1584#1601' '#1581#1585#1601' '#1571#1608' '#1605#1580#1605#1608#1593#1577' '#1581#1585#1608#1601
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = BtnSuppressionClick
    end
    object BtnInsertion: TButton
      Left = 11
      Top = 90
      Width = 147
      Height = 27
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1573#1583#1585#1575#1580' '#1581#1585#1601' '#1571#1608' '#1605#1580#1605#1608#1593#1577' '#1581#1585#1608#1601' '
      TabOrder = 2
      OnClick = BtnInsertionClick
    end
    object EditShow: TEdit
      Tag = 3
      Left = 3
      Top = 320
      Width = 155
      Height = 22
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 3
      OnKeyDown = EditShowKeyDown
    end
    object Edit1: TEdit
      Tag = 1
      Left = 16
      Top = 230
      Width = 129
      Height = 32
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      Text = #1576#1616#1587#1618#1605#1616' '#1575#1604#1604#1617#1614#1607#1616' '#1575#1604#1585#1617#1614#1581#1618#1605#1614#1606#1616' '#1575#1604#1585#1617#1614#1581#1616#1610#1605#1616' '
    end
    object EditPos: TEdit
      Tag = 5
      Left = 13
      Top = 148
      Width = 52
      Height = 22
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 5
      Text = 'EditPos'
    end
    object EditNbre: TEdit
      Tag = 6
      Left = 13
      Top = 168
      Width = 52
      Height = 22
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 6
      Text = 'EditNbre'
    end
    object EditInsert: TEdit
      Tag = 4
      Left = 17
      Top = 206
      Width = 52
      Height = 22
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 7
      Text = 'EditInsert'
    end
    object Button15: TButton
      Left = 11
      Top = 117
      Width = 147
      Height = 27
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1578#1576#1583#1610#1604' '#1581#1585#1601' '#1571#1608' '#1605#1580#1605#1608#1593#1577' '#1581#1585#1608#1601' '
      TabOrder = 8
      OnClick = Button15Click
    end
    object Button28: TButton
      Left = 4
      Top = 349
      Width = 157
      Height = 19
      Caption = #1576#1581#1579' '#1593#1606' '#1575#1604#1570#1610#1575#1578' '#1575#1604#1605#1578#1603#1585#1585
      TabOrder = 9
      OnClick = Button28Click
    end
    object Button30: TButton
      Left = 4
      Top = 374
      Width = 37
      Height = 25
      Caption = 'Btn30'
      TabOrder = 10
      OnClick = Button30Click
    end
    object Button31: TButton
      Left = 39
      Top = 374
      Width = 34
      Height = 25
      Caption = 'Btn31'
      TabOrder = 11
      OnClick = Button31Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1374
    Height = 41
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 7
    object Label1: TLabel
      Left = 550
      Top = 2
      Width = 194
      Height = 32
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1576#1587#1605' '#1575#1604#1604#1607' '#1575#1604#1585#1581#1605#1606' '#1575#1604#1585#1581#1610#1605
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
  end
  object mTexteCoran: TMemo
    Left = 1082
    Top = 45
    Width = 285
    Height = 125
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Traditional Arabic'
    Font.Style = [fsBold]
    Lines.Strings = (
      'mTexteCoran')
    ParentBiDiMode = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 8
    WantReturns = False
    WantTabs = True
    WordWrap = False
  end
  object DBGrid1: TDBGrid
    Left = 750
    Top = 336
    Width = 328
    Height = 306
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BiDiMode = bdRightToLeft
    DataSource = DMZadM.FDDSQSoraHarf
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    TabOrder = 9
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColEnter = DBGrid1ColEnter
    OnTitleClick = DBGrid1TitleClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 311
    Width = 415
    Height = 267
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BevelInner = bvLowered
    TabOrder = 10
    object Label5: TLabel
      Left = 172
      Top = 8
      Width = 49
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1606#1589' '#1575#1604#1570#1610#1577
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 382
      Top = 31
      Width = 28
      Height = 64
      Caption = #1605#1583#1610#1606#1577' '#1576#1608#1575#1608
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label14: TLabel
      Left = 376
      Top = 168
      Width = 34
      Height = 41
      Caption = #1578#1606#1586#1610#1604
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Tag = 1
      Left = 11
      Top = 6
      Width = 346
      Height = 131
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataSource = DMZadM.FDDSQCoran
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Traditional Arabic'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      OnChange = DBMemo1Change
    end
    object DBMemo3: TDBMemo
      Tag = 1
      Left = 15
      Top = 141
      Width = 342
      Height = 116
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataField = 'AIATANZIL'
      DataSource = DMZadM.FDDSQCoran
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Traditional Arabic'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
      OnChange = DBMemo1Change
    end
  end
  object Panel5: TPanel
    Left = 577
    Top = 317
    Width = 167
    Height = 397
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BevelInner = bvLowered
    TabOrder = 11
    object BtnSaveQuranMadina: TButton
      Left = 4
      Top = 45
      Width = 157
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1581#1601#1592' '#1606#1589' '#1575#1604#1602#1585#1570#1606' '#1605#1583#1610#1606#1577
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnSaveQuranMadinaClick
    end
    object BtnAfficheTexte: TButton
      Left = 4
      Top = 4
      Width = 158
      Height = 23
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1593#1585#1590' '#1606#1589
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtnAfficheTexteClick
    end
    object Button25: TButton
      Left = 4
      Top = 320
      Width = 158
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1581#1587#1575#1576' '#1575#1604#1602#1610#1605#1577' '#1575#1604#1593#1583#1583#1610#1577' '#1604#1604#1570#1610#1577
      TabOrder = 2
      OnClick = Button25Click
    end
    object Button26: TButton
      Left = 4
      Top = 339
      Width = 158
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1581#1587#1575#1576' '#1575#1604#1602#1610#1605#1577' '#1575#1604#1593#1583#1583#1610#1577' '#1604#1604#1587#1608#1585#1577
      TabOrder = 3
      OnClick = Button26Click
    end
    object RadioGroup1: TRadioGroup
      Left = 4
      Top = 174
      Width = 157
      Height = 152
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      BiDiMode = bdRightToLeft
      Caption = #1601#1585#1586' '#1581#1587#1576' '#1578#1585#1578#1610#1576' '
      ItemIndex = 7
      Items.Strings = (
        ' '#1575#1604#1605#1589#1581#1601
        #1575#1604#1606#1586#1608#1604
        #1605#1603#1575#1606' '#1575#1604#1606#1586#1608#1604
        #1593#1583#1583' '#1575#1604#1570#1610#1575#1578
        #1593#1583#1583' '#1575#1604#1603#1604#1605#1575#1578
        #1593#1583#1583' '#1575#1604#1581#1585#1608#1601
        #1575#1604#1602#1610#1605#1577' '#1575#1604#1593#1583#1583#1610#1577
        #1593#1583#1583' '#1603#1604' '#1581#1585#1601' '#1601#1610' '#1575#1604#1587#1608#1585#1577)
      ParentBiDiMode = False
      TabOrder = 4
      OnClick = RadioGroup1Click
    end
    object ButtonSoraname: TButton
      Left = 4
      Top = 27
      Width = 157
      Height = 22
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1581#1601#1592' '#1587#1608#1585' '#1575#1604#1602#1585#1570#1606' '#1575#1604#1603#1585#1610#1605
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = ButtonSoranameClick
    end
    object Button1: TButton
      Left = 4
      Top = 137
      Width = 157
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1581#1601#1592'  CDS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button1Click
    end
    object ButtonLoadFil: TButton
      Left = 4
      Top = 155
      Width = 157
      Height = 22
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'ButtonLoadFile'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Traditional Arabic'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = ButtonLoadFilClick
    end
    object Button27: TButton
      Left = 5
      Top = 358
      Width = 157
      Height = 19
      Caption = #1573#1592#1575#1601#1577' '#1604#1587#1608#1585' '#1575#1604#1602#1585#1570#1606' '#1575#1604#1603#1585#1610#1605
      TabOrder = 8
      OnClick = Button27Click
    end
  end
  object Panel6: TPanel
    Left = 750
    Top = 646
    Width = 331
    Height = 66
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BevelInner = bvLowered
    TabOrder = 12
    object FermerBtn: TButton
      Left = 264
      Top = 5
      Width = 54
      Height = 56
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1582#1585#1608#1580
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Traditional Arabic'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = FermerBtnClick
    end
    object Button11: TButton
      Left = 34
      Top = 15
      Width = 191
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1581#1587#1575#1576' '#1593#1583#1583' '#1578#1603#1585#1575#1585' '#1603#1604' '#1581#1585#1601' '#1601#1610' '#1575#1604#1587#1608#1585#1577
      TabOrder = 1
      OnClick = Button11Click
    end
    object Button19: TButton
      Left = 34
      Top = 34
      Width = 191
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1578#1601#1585#1610#1594' '#1602#1575#1593#1583#1577' '#1581#1585#1608#1601' '#1575#1604#1587#1608#1585
      TabOrder = 2
      OnClick = Button19Click
    end
  end
  object Button20: TButton
    Left = 810
    Top = 45
    Width = 199
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1581#1587#1575#1576' '#1593#1583#1583' '#1575#1604#1603#1604#1605#1575#1578' '#1608' '#1575#1604#1581#1585#1608#1601' '#1604#1604#1587#1608#1585#1577
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = Button20Click
  end
  object Button18: TButton
    Left = 68
    Top = 45
    Width = 216
    Height = 26
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = '  '#1581#1587#1575#1576' '#1593#1583#1583' '#1575#1604#1603#1604#1605#1575#1578' '#1608' '#1575#1604#1581#1585#1608#1601' '#1604#1604#1570#1610#1575#1578
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = Button18Click
  end
  object BtnSaveQuranKAW: TButton
    Left = 581
    Top = 387
    Width = 157
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1581#1601#1592' '#1606#1589' '#1575#1604#1602#1585#1570#1606' '#1575#1604#1603#1585#1610#1605' '#1603#1581#1610#1604' '#1576#1583#1605#1580' '#1575#1604#1608#1575#1608
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Traditional Arabic'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = BtnSaveQuranKAWClick
  end
  object BtnDeleteBismi: TButton
    Left = 453
    Top = 584
    Width = 79
    Height = 25
    Caption = 'Delete Bismi'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Traditional Arabic'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnClick = BtnDeleteBismiClick
  end
  object BtnSaveQuranKSW: TButton
    Left = 581
    Top = 408
    Width = 157
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1581#1601#1592' '#1606#1589' '#1575#1604#1602#1585#1570#1606' '#1575#1604#1603#1585#1610#1605' '#1603#1581#1610#1604' '#1576#1601#1589#1604' '#1575#1604#1608#1575#1608
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Traditional Arabic'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = BtnSaveQuranKSWClick
  end
  object BtnSaveQuranTanzil: TButton
    Left = 581
    Top = 429
    Width = 157
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1581#1601#1592' '#1606#1589' '#1575#1604#1602#1585#1570#1606' '#1575#1604#1603#1585#1610#1605' '#1578#1606#1586#1610#1604
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Traditional Arabic'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnClick = BtnSaveQuranTanzilClick
  end
  object ProgressBar1: TProgressBar
    Left = 1096
    Top = 687
    Width = 270
    Height = 25
    TabOrder = 19
    OnMouseDown = ProgressBar1MouseDown
  end
  object StringGrid1: TStringGrid
    Left = 1083
    Top = 200
    Width = 286
    Height = 144
    TabOrder = 20
    ColWidths = (
      64
      64
      58
      64
      64)
  end
  object Button2: TButton
    Left = 1229
    Top = 175
    Width = 121
    Height = 19
    Caption = 'Charger Table SORA'
    TabOrder = 21
    OnClick = Button2Click
  end
  object RadioGroup2: TRadioGroup
    Left = 1095
    Top = 584
    Width = 116
    Height = 97
    Caption = 'RadioGroup1 DBGrid'
    Items.Strings = (
      'Export To Excel'
      'Export To CSV')
    TabOrder = 22
  end
  object Button29: TButton
    Left = 1242
    Top = 610
    Width = 82
    Height = 25
    Caption = 'Export DBGrid'
    TabOrder = 23
    OnClick = Button29Click
  end
  object Memo2: TMemo
    Left = 1083
    Top = 427
    Width = 283
    Height = 83
    Lines.Strings = (
      'Memo2')
    TabOrder = 24
  end
  object OpenDialog: TOpenDialog
    Options = [ofEnableSizing]
    Left = 344
    Top = 24
  end
  object SaveDialog1: TSaveDialog
    Left = 1264
    Top = 640
  end
end
