object frmCadastroBolsista: TfrmCadastroBolsista
  Left = 0
  Top = 0
  Caption = #193'rea de Cadastro de Bolsistas'
  ClientHeight = 145
  ClientWidth = 377
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblBolsistaNome: TLabel
    Left = 16
    Top = 16
    Width = 98
    Height = 14
    Caption = 'NOME COMPLETO:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSalvar: TSpeedButton
    Left = 16
    Top = 72
    Width = 114
    Height = 57
    Caption = 'Salvar'
    Layout = blGlyphBottom
    OnClick = btnSalvarClick
  end
  object btnSair: TSpeedButton
    Left = 136
    Top = 72
    Width = 114
    Height = 57
    Caption = 'Sair'
    OnClick = btnSairClick
  end
  object txtBolsistaNome: TDBEdit
    Left = 16
    Top = 32
    Width = 345
    Height = 22
    Hint = 'ex: Inform'#225'tica B'#225'sica'
    DataField = 'bol_nome'
    DataSource = frm_data_module.dataSourceTabelaBolsistas
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
end
