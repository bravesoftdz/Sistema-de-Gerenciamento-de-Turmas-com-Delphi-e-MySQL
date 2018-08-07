object frm_register_class: Tfrm_register_class
  Left = 0
  Top = 0
  Caption = #193'rea de Cadastro de Oficinas'
  ClientHeight = 337
  ClientWidth = 497
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lblOficinaNome: TLabel
    Left = 16
    Top = 16
    Width = 98
    Height = 14
    Caption = 'NOME DA OFICINA:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblOficinaRequisito: TLabel
    Left = 16
    Top = 64
    Width = 83
    Height = 14
    Caption = 'PR'#201'-REQUISITO:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblOficinaDataInicio: TLabel
    Left = 16
    Top = 112
    Width = 82
    Height = 14
    Caption = 'DATA DE IN'#205'CIO:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblOficinaHorInicio: TLabel
    Left = 256
    Top = 112
    Width = 102
    Height = 14
    Caption = 'HOR'#193'RIO DE IN'#205'CIO:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblOficinaLocal: TLabel
    Left = 256
    Top = 160
    Width = 105
    Height = 14
    Caption = 'LOCAL DA OFICINA:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblOficinaBolResp: TLabel
    Left = 16
    Top = 208
    Width = 137
    Height = 14
    Caption = 'BOLSISTA RESPONS'#193'VEL:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblOficinaHorFim: TLabel
    Left = 16
    Top = 160
    Width = 118
    Height = 14
    Caption = 'HOR'#193'RIO DE T'#201'RMINO:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSalvar: TSpeedButton
    Left = 16
    Top = 264
    Width = 114
    Height = 57
    Caption = 'Salvar'
    Layout = blGlyphBottom
    OnClick = btnSalvarClick
  end
  object btnSair: TSpeedButton
    Left = 136
    Top = 264
    Width = 114
    Height = 57
    Caption = 'Sair'
    OnClick = btnSairClick
  end
  object txtOficinaNome: TDBEdit
    Left = 16
    Top = 32
    Width = 465
    Height = 22
    Hint = 'ex: Inform'#225'tica B'#225'sica'
    DataField = 'ofi_nome'
    DataSource = frm_data_module.dataSourceTabelaOficinas
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object txtOficinaRequisito: TDBEdit
    Left = 16
    Top = 80
    Width = 465
    Height = 22
    Hint = 'ex: Estudante do Ensino M'#233'dio'
    DataField = 'ofi_requisito'
    DataSource = frm_data_module.dataSourceTabelaOficinas
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object txtOficinaDataInicio: TDBEdit
    Left = 16
    Top = 128
    Width = 225
    Height = 22
    DataField = 'ofi_data_ini'
    DataSource = frm_data_module.dataSourceTabelaOficinas
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object txtOficinaHorInicio: TDBEdit
    Left = 256
    Top = 128
    Width = 225
    Height = 22
    DataField = 'ofi_hor_ini'
    DataSource = frm_data_module.dataSourceTabelaOficinas
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object txtOficinaHorFim: TDBEdit
    Left = 16
    Top = 176
    Width = 225
    Height = 22
    Hint = 'ex: Lab. 05 - Bloco 17'
    DataField = 'ofi_hor_fim'
    DataSource = frm_data_module.dataSourceTabelaOficinas
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object txtOficinaLocal: TDBEdit
    Left = 256
    Top = 176
    Width = 225
    Height = 22
    DataField = 'ofi_local'
    DataSource = frm_data_module.dataSourceTabelaOficinas
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object cbOficinaResp: TDBComboBox
    Left = 16
    Top = 224
    Width = 465
    Height = 21
    DataField = 'ofi_bol_resp'
    DataSource = frm_data_module.dataSourceTabelaOficinas
    TabOrder = 6
  end
end
