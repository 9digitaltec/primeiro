object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'CONEXAO B'#193'SICA'
  ClientHeight = 646
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 90
    Top = 358
    Width = 58
    Height = 13
    Caption = 'CD_IDIOMA'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 90
    Top = 398
    Width = 59
    Height = 13
    Caption = 'NM_IDIOMA'
    FocusControl = DBEdit2
  end
  object DBGrid1: TDBGrid
    Left = 90
    Top = 64
    Width = 425
    Height = 145
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 552
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid2: TDBGrid
    Left = 90
    Top = 230
    Width = 425
    Height = 113
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 552
    Top = 278
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 90
    Top = 374
    Width = 134
    Height = 21
    DataField = 'CD_IDIOMA'
    DataSource = DataSource2
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 90
    Top = 414
    Width = 425
    Height = 21
    DataField = 'NM_IDIOMA'
    DataSource = DataSource2
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 90
    Top = 454
    Width = 240
    Height = 25
    DataSource = DataSource2
    TabOrder = 6
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Database=C:\Apcohd\Dados\APCOHD.FDB'
      'DriverID=FB')
    Connected = True
    Left = 528
    Top = 8
  end
  object FDTableAdapter1: TFDTableAdapter
    Left = 616
    Top = 8
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from tb_pais'
      'WHERE CD_PAIS = :CD_PAIS'
      '')
    Left = 24
    Top = 80
    ParamData = <
      item
        Name = 'CD_PAIS'
        DataType = ftInteger
        ParamType = ptInput
        Value = 10
      end>
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 24
    Top = 136
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'CD_IDIOMA'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'TB_IDIOMA'
    TableName = 'TB_IDIOMA'
    Left = 24
    Top = 230
    object FDTable1CD_IDIOMA: TIntegerField
      FieldName = 'CD_IDIOMA'
      Origin = 'CD_IDIOMA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDTable1NM_IDIOMA: TStringField
      FieldName = 'NM_IDIOMA'
      Origin = 'NM_IDIOMA'
      Size = 60
    end
  end
  object DataSource2: TDataSource
    DataSet = FDTable1
    Left = 32
    Top = 294
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 584
    Top = 366
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 584
    Top = 422
  end
end
