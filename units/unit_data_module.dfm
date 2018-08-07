object frm_data_module: Tfrm_data_module
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 683
  Width = 683
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=sistema-gerenciamento-turmas'
      'User_Name=root'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 72
    Top = 8
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\JAMESMARCELO\Documents\GitHub\Sistema-de-Gerenciamento-' +
      'de-Turmas-com-Delphi-e-MySQL\lib\libmySQL.dll'
    Left = 200
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 328
    Top = 8
  end
  object tabelaBolsistas: TFDTable
    IndexFieldNames = 'bol_id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = '`sistema-gerenciamento-turmas`.bolsistas'
    TableName = '`sistema-gerenciamento-turmas`.bolsistas'
    Left = 208
    Top = 120
    object tabelaBolsistasbol_id: TFDAutoIncField
      FieldName = 'bol_id'
      Origin = 'bol_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tabelaBolsistasbol_nome: TStringField
      FieldName = 'bol_nome'
      Origin = 'bol_nome'
      Required = True
      Size = 80
    end
  end
  object dataSourceTabelaBolsistas: TDataSource
    DataSet = tabelaBolsistas
    Left = 72
    Top = 120
  end
  object dataSourceConsultaBolsistas: TDataSource
    DataSet = SQLExcluiBolsistas
    Left = 72
    Top = 176
  end
  object SQLConsultaBolsistas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from bolsistas')
    Left = 208
    Top = 176
  end
  object SQLExcluiBolsistas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from bolsistas')
    Left = 336
    Top = 176
  end
  object tabelaOficinas: TFDTable
    IndexFieldNames = 'ofi_id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = '`sistema-gerenciamento-turmas`.oficinas'
    TableName = '`sistema-gerenciamento-turmas`.oficinas'
    Left = 208
    Top = 288
    object tabelaOficinasofi_id: TFDAutoIncField
      FieldName = 'ofi_id'
      Origin = 'ofi_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tabelaOficinasofi_nome: TStringField
      FieldName = 'ofi_nome'
      Origin = 'ofi_nome'
      Required = True
      Size = 80
    end
    object tabelaOficinasofi_requisito: TStringField
      FieldName = 'ofi_requisito'
      Origin = 'ofi_requisito'
      Required = True
      Size = 100
    end
    object tabelaOficinasofi_data_ini: TDateField
      FieldName = 'ofi_data_ini'
      Origin = 'ofi_data_ini'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object tabelaOficinasofi_hor_ini: TTimeField
      FieldName = 'ofi_hor_ini'
      Origin = 'ofi_hor_ini'
      Required = True
      EditMask = '!90:00;1;_'
    end
    object tabelaOficinasofi_hor_fim: TTimeField
      FieldName = 'ofi_hor_fim'
      Origin = 'ofi_hor_fim'
      Required = True
      EditMask = '!90:00;1;_'
    end
    object tabelaOficinasofi_local: TStringField
      FieldName = 'ofi_local'
      Origin = 'ofi_local'
      Required = True
      Size = 80
    end
    object tabelaOficinasofi_bol_resp: TStringField
      FieldName = 'ofi_bol_resp'
      Origin = 'ofi_bol_resp'
      Required = True
      Size = 80
    end
  end
  object dataSourceTabelaOficinas: TDataSource
    DataSet = tabelaOficinas
    Left = 72
    Top = 288
  end
  object dataSourceConsultaOficinas: TDataSource
    DataSet = SQLConsultaOficinas
    Left = 72
    Top = 344
  end
  object SQLConsultaOficinas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from oficinas')
    Left = 208
    Top = 344
  end
  object SQLExcluiOficinas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from oficinas')
    Left = 336
    Top = 344
  end
  object tabelaEstudantes: TFDTable
    IndexFieldNames = 'est_id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = '`sistema-gerenciamento-turmas`.estudantes'
    TableName = '`sistema-gerenciamento-turmas`.estudantes'
    Left = 208
    Top = 456
    object tabelaEstudantesest_id: TFDAutoIncField
      FieldName = 'est_id'
      Origin = 'est_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tabelaEstudantesest_data_cad: TDateField
      FieldName = 'est_data_cad'
      Origin = 'est_data_cad'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object tabelaEstudantesest_nome: TStringField
      FieldName = 'est_nome'
      Origin = 'est_nome'
      Required = True
      Size = 80
    end
    object tabelaEstudantesest_idade: TIntegerField
      FieldName = 'est_idade'
      Origin = 'est_idade'
      Required = True
    end
    object tabelaEstudantesest_cel: TStringField
      FieldName = 'est_cel'
      Origin = 'est_cel'
      Required = True
      Size = 15
    end
    object tabelaEstudantesest_email: TStringField
      FieldName = 'est_email'
      Origin = 'est_email'
      Required = True
      Size = 25
    end
    object tabelaEstudantesest_ofic_desej: TStringField
      FieldName = 'est_ofic_desej'
      Origin = 'est_ofic_desej'
      Required = True
      Size = 100
    end
  end
  object dataSourceTabelaEstudantes: TDataSource
    DataSet = tabelaEstudantes
    Left = 72
    Top = 456
  end
  object dataSourceConsultaEstudantes: TDataSource
    DataSet = SQLConsultaEstudantes
    Left = 72
    Top = 512
  end
  object SQLConsultaEstudantes: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from estudantes')
    Left = 208
    Top = 512
  end
  object SQLExcluiEstudantes: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from estudantes')
    Left = 336
    Top = 512
  end
  object relatorioEstudantes: TfrxReport
    Version = '5.6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43311.707672256900000000
    ReportOptions.LastChange = 43318.581701354170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 72
    Top = 624
    Datasets = <
      item
        DataSet = dataSetRelatEst
        DataSetName = 'dataSetRelatEst'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13421772
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 94.102350000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape26: TfrxShapeView
          Width = 718.110236220000000000
          Height = 94.488250000000000000
        end
        object Memo1: TfrxMemoView
          Left = 18.897650000000000000
          Top = 18.814935000000000000
          Width = 264.567100000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = '@Arial Unicode MS'
          Font.Style = [fsBold]
          Frame.Color = clNone
          Memo.UTF8W = (
            'Lista de Presen'#231'a')
          ParentFont = False
        end
        object dataSetRelatEstest_ofic_desej: TfrxMemoView
          Left = 18.897650000000000000
          Top = 56.692950000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          DataField = 'est_ofic_desej'
          DataSet = dataSetRelatEst
          DataSetName = 'dataSetRelatEst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = 10027007
          Memo.UTF8W = (
            '[dataSetRelatEst."est_ofic_desej"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        DataSet = dataSetRelatEst
        DataSetName = 'dataSetRelatEst'
        RowCount = 0
        object Shape22: TfrxShapeView
          Left = 60.472480000000000000
          Width = 279.685220000000000000
          Height = 34.015770000000000000
        end
        object Shape21: TfrxShapeView
          Width = 60.472480000000000000
          Height = 34.015770000000000000
        end
        object Shape1: TfrxShapeView
          Left = 340.157700000000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
        end
        object Shape2: TfrxShapeView
          Left = 377.953000000000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
        end
        object Shape3: TfrxShapeView
          Left = 415.748300000000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
        end
        object Shape4: TfrxShapeView
          Left = 453.543600000000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
        end
        object Shape5: TfrxShapeView
          Left = 491.338900000000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
        end
        object Shape6: TfrxShapeView
          Left = 529.134200000000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
        end
        object Shape7: TfrxShapeView
          Left = 566.929500000000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
        end
        object Shape8: TfrxShapeView
          Left = 604.724800000000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
        end
        object Shape9: TfrxShapeView
          Left = 642.520100000000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
        end
        object Shape10: TfrxShapeView
          Left = 680.315400000000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
        end
        object data_set_report_clientcliente_nome: TfrxMemoView
          Left = 64.251961180000000000
          Top = 11.338590000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataField = 'est_nome'
          DataSet = dataSetRelatEst
          DataSetName = 'dataSetRelatEst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dataSetRelatEst."est_nome"]')
          ParentFont = False
        end
        object dataSetRelatEstest_id: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'est_id'
          DataSet = dataSetRelatEst
          DataSetName = 'dataSetRelatEst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dataSetRelatEst."est_id"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 147.401596770000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        object Shape25: TfrxShapeView
          Top = 16.118120000000000000
          Width = 60.472431180000000000
          Height = 113.385826770000000000
        end
        object Shape24: TfrxShapeView
          Left = 60.472480000000000000
          Top = 16.118120000000000000
          Width = 279.685049130000000000
          Height = 113.385900000000000000
        end
        object Shape23: TfrxShapeView
          Left = 340.157700000000000000
          Top = 16.118120000000000000
          Width = 377.953000000000000000
          Height = 37.039370080000000000
        end
        object Memo4: TfrxMemoView
          Left = 60.472480000000000000
          Top = 16.118120000000000000
          Width = 279.685049130000000000
          Height = 113.385826770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape11: TfrxShapeView
          Left = 340.157700000000000000
          Top = 53.472480000000000000
          Width = 37.795300000000000000
          Height = 75.590600000000000000
        end
        object Shape12: TfrxShapeView
          Left = 377.953000000000000000
          Top = 53.472480000000000000
          Width = 37.795300000000000000
          Height = 75.590600000000000000
        end
        object Shape13: TfrxShapeView
          Left = 415.748300000000000000
          Top = 53.488250000000000000
          Width = 37.795300000000000000
          Height = 75.590600000000000000
        end
        object Shape14: TfrxShapeView
          Left = 453.543600000000000000
          Top = 53.488250000000000000
          Width = 37.795300000000000000
          Height = 75.590600000000000000
        end
        object Shape15: TfrxShapeView
          Left = 491.338900000000000000
          Top = 53.488250000000000000
          Width = 37.795300000000000000
          Height = 75.590600000000000000
        end
        object Shape16: TfrxShapeView
          Left = 529.134200000000000000
          Top = 53.488250000000000000
          Width = 37.795300000000000000
          Height = 75.590600000000000000
        end
        object Shape17: TfrxShapeView
          Left = 566.929500000000000000
          Top = 53.488250000000000000
          Width = 37.795300000000000000
          Height = 75.590600000000000000
        end
        object Shape18: TfrxShapeView
          Left = 604.724800000000000000
          Top = 53.488250000000000000
          Width = 37.795300000000000000
          Height = 75.590600000000000000
        end
        object Shape19: TfrxShapeView
          Left = 642.520100000000000000
          Top = 53.488250000000000000
          Width = 37.795300000000000000
          Height = 75.590600000000000000
        end
        object Shape20: TfrxShapeView
          Left = 680.315400000000000000
          Top = 53.488250000000000000
          Width = 37.795300000000000000
          Height = 75.590600000000000000
        end
        object Memo3: TfrxMemoView
          Top = 16.118120000000000000
          Width = 60.472431180000000000
          Height = 113.385826770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 340.157700000000000000
          Top = 15.897650000000000000
          Width = 377.953000000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DATAS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo19: TfrxMemoView
        Left = 560.149970000000000000
        Width = 154.960730000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = '@Arial Unicode MS'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          'jamesschulzm.github.io')
        ParentFont = False
      end
    end
  end
  object dataSetRelatEst: TfrxDBDataset
    UserName = 'dataSetRelatEst'
    CloseDataSource = False
    FieldAliases.Strings = (
      'est_id=est_id'
      'est_data_cad=est_data_cad'
      'est_nome=est_nome'
      'est_idade=est_idade'
      'est_cel=est_cel'
      'est_email=est_email'
      'est_ofic_desej=est_ofic_desej')
    DataSet = SQLConsultaEstudantes
    BCDToCurrency = False
    Left = 208
    Top = 624
  end
end
