object frm_register_student: Tfrm_register_student
  Left = 0
  Top = 0
  Caption = #193'rea de Cadastro de Estudantes'
  ClientHeight = 321
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
  object Label1: TLabel
    Left = 16
    Top = 80
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
  object Label3: TLabel
    Left = 16
    Top = 128
    Width = 53
    Height = 14
    Caption = 'CELULAR:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 256
    Top = 128
    Width = 41
    Height = 14
    Caption = 'E-MAIL:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 192
    Width = 104
    Height = 14
    Caption = 'OFICINA DESEJADA:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 16
    Top = 16
    Width = 60
    Height = 14
    Caption = 'DATA CAD.:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 408
    Top = 80
    Width = 34
    Height = 14
    Caption = 'IDADE:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 16
    Top = 248
    Width = 114
    Height = 57
    Caption = 'Salvar'
    Layout = blGlyphBottom
    OnClick = SpeedButton1Click
  end
  object SpeedButton3: TSpeedButton
    Left = 136
    Top = 248
    Width = 114
    Height = 57
    Caption = 'Sair'
    OnClick = SpeedButton3Click
  end
  object txtEstNome: TDBEdit
    Left = 16
    Top = 96
    Width = 377
    Height = 22
    Hint = 'ex: Inform'#225'tica B'#225'sica'
    DataField = 'est_nome'
    DataSource = frm_data_module.dataSourceTabelaEstudantes
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
  object txtEstCel: TDBEdit
    Left = 16
    Top = 144
    Width = 225
    Height = 22
    DataField = 'est_cel'
    DataSource = frm_data_module.dataSourceTabelaEstudantes
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object txtEstEmail: TDBEdit
    Left = 256
    Top = 144
    Width = 225
    Height = 22
    DataField = 'est_email'
    DataSource = frm_data_module.dataSourceTabelaEstudantes
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object txtEstDataCAd: TDBEdit
    Left = 16
    Top = 32
    Width = 73
    Height = 22
    Hint = 'ex: Inform'#225'tica B'#225'sica'
    DataField = 'est_data_cad'
    DataSource = frm_data_module.dataSourceTabelaEstudantes
    Enabled = False
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
  object txtEstIdade: TDBEdit
    Left = 408
    Top = 96
    Width = 73
    Height = 22
    Hint = 'ex: Inform'#225'tica B'#225'sica'
    DataField = 'est_idade'
    DataSource = frm_data_module.dataSourceTabelaEstudantes
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object cbOficinaDesej: TDBComboBox
    Left = 16
    Top = 208
    Width = 465
    Height = 21
    DataField = 'est_ofic_desej'
    DataSource = frm_data_module.dataSourceTabelaEstudantes
    TabOrder = 5
  end
end
