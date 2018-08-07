object frm_query_class: Tfrm_query_class
  Left = 0
  Top = 0
  Caption = #193'rea de Consulta/Edi'#231#227'o/Exclus'#227'o de Oficinas'
  ClientHeight = 513
  ClientWidth = 1033
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
  object SpeedButton1: TSpeedButton
    Left = 136
    Top = 16
    Width = 114
    Height = 57
    Caption = 'Excluir Oficina'
    Layout = blGlyphBottom
    OnClick = SpeedButton1Click
  end
  object Label4: TLabel
    Left = 16
    Top = 92
    Width = 44
    Height = 14
    Caption = 'lbl_msg'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object SpeedButton3: TSpeedButton
    Left = 256
    Top = 16
    Width = 114
    Height = 57
    Caption = 'Sair'
    Layout = blGlyphBottom
    OnClick = SpeedButton3Click
  end
  object Button1: TButton
    Left = 16
    Top = 16
    Width = 114
    Height = 57
    Caption = 'Editar Oficina'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 112
    Width = 1001
    Height = 385
    DataSource = frm_data_module.dataSourceTabelaOficinas
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ofi_id'
        Title.Caption = 'ID:'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ofi_nome'
        Title.Caption = 'NOME:'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ofi_requisito'
        Title.Caption = 'PR'#201'-REQUISITO:'
        Width = 192
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ofi_data_ini'
        Title.Caption = 'DATA IN'#205'CIO:'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ofi_hor_ini'
        Title.Caption = 'HOR. IN'#205'CIO:'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ofi_hor_fim'
        Title.Caption = 'HOR. FIM:'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ofi_local'
        Title.Caption = 'LOCAL:'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ofi_bol_resp'
        Title.Caption = 'BOLSISTA RESPONS'#193'VEL:'
        Width = 150
        Visible = True
      end>
  end
  object capturaIdOficina: TEdit
    Left = 256
    Top = 79
    Width = 114
    Height = 21
    DoubleBuffered = False
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 2
    Text = 'capturaIdOficina'
    Visible = False
  end
end
