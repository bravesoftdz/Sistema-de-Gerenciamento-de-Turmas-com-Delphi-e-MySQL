object frm_attendance_list: Tfrm_attendance_list
  Left = 0
  Top = 0
  Caption = #193'rea de Impress'#227'o de Chamadas'
  ClientHeight = 145
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
  object btnImprimir: TSpeedButton
    Left = 16
    Top = 72
    Width = 114
    Height = 57
    Caption = 'Imprimir'
    Layout = blGlyphBottom
    OnClick = btnImprimirClick
  end
  object lblSelecOficina: TLabel
    Left = 16
    Top = 16
    Width = 118
    Height = 14
    Caption = 'SELECIONE A OFICINA:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton3: TSpeedButton
    Left = 136
    Top = 72
    Width = 114
    Height = 57
    Caption = 'Sair'
    OnClick = SpeedButton3Click
  end
  object cbSelecOficina: TComboBox
    Left = 16
    Top = 32
    Width = 465
    Height = 21
    CharCase = ecLowerCase
    TabOrder = 0
  end
end
