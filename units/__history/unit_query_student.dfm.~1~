object frm_query_student: Tfrm_query_student
  Left = 0
  Top = 0
  Caption = #193'rea de Consulta/Edi'#231#227'o/Exclus'#227'o de Estudantes'
  ClientHeight = 513
  ClientWidth = 1033
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnExcluirEstudante: TSpeedButton
    Left = 136
    Top = 16
    Width = 114
    Height = 57
    Caption = 'Excluir Estudante'
    Layout = blGlyphBottom
    OnClick = btnExcluirEstudanteClick
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
  object btnSair: TSpeedButton
    Left = 256
    Top = 16
    Width = 114
    Height = 57
    Caption = 'Sair'
    Layout = blGlyphBottom
    OnClick = btnSairClick
  end
  object btnEditarEstudante: TButton
    Left = 16
    Top = 16
    Width = 114
    Height = 57
    Caption = 'Editar Estudante'
    TabOrder = 0
    OnClick = btnEditarEstudanteClick
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 112
    Width = 1001
    Height = 385
    DataSource = frm_data_module.dataSourceTabelaEstudantes
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
        FieldName = 'est_id'
        Title.Caption = 'ID:'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'est_data_cad'
        Title.Caption = 'DATA CAD.:'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'est_nome'
        Title.Caption = 'NOME:'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'est_idade'
        Title.Caption = 'IDADE:'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'est_cel'
        Title.Caption = 'CELULAR:'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'est_email'
        Title.Caption = 'E-MAIL:'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'est_ofic_desej'
        Title.Caption = 'OFICINA DESEJADA:'
        Width = 500
        Visible = True
      end>
  end
  object capturaIdEstudante: TEdit
    Left = 256
    Top = 79
    Width = 114
    Height = 21
    DoubleBuffered = False
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 2
    Text = 'capturaIdEstudante'
    Visible = False
  end
end
