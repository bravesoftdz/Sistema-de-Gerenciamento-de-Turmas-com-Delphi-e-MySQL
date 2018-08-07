unit unit_query_class;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons;

type
  Tfrm_query_class = class(TForm)
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    SpeedButton3: TSpeedButton;
    Button1: TButton;
    DBGrid1: TDBGrid;
    capturaIdOficina: TEdit;
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_query_class: Tfrm_query_class;

implementation

{$R *.dfm}

uses unit_data_module, unit_main, unit_query_student,
  unit_query_teacher, unit_register_class, unit_register_student,
  unit_register_teacher, unit_attendance_list;

procedure Tfrm_query_class.Button1Click(Sender: TObject);
begin
  ShowMessage('Dê um duplo clique sobre a informação que deseja alterar na tabela abaixo.');
end;

procedure Tfrm_query_class.DBGrid1CellClick(Column: TColumn);
begin
  capturaIdOficina.Text := intToStr(frm_data_module.tabelaOficinasofi_id.Value);
end;

procedure Tfrm_query_class.SpeedButton1Click(Sender: TObject);
begin

  frm_data_module.SQLExcluiOficinas.Close;
  frm_data_module.SQLExcluiOficinas.SQL.Clear;
  frm_data_module.SQLExcluiOficinas.SQL.Add('select * from oficinas where ofi_id = :id');
  frm_data_module.SQLExcluiOficinas.ParamByName('id').Value := capturaIdOficina.Text;
  frm_data_module.SQLExcluiOficinas.Open;

  case Application.MessageBox(('Confirmar a Exclusão da Oficina?') , 'Excluir Oficina', MB_YESNO + MB_ICONQUESTION) of
    IDYES:
    begin
      frm_data_module.SQLExcluiOficinas.Delete;
      ShowMessage('Oficina Excluída com Sucesso.');
    end;
    IDNO:
    begin
      exit;
    end;
  end;

  //Atualiza a tabela:
  frm_data_module.tabelaOficinas.Close;
  frm_data_module.tabelaOficinas.SQL.Clear;
  frm_data_module.tabelaOficinas.SQL.Add('select * from oficinas');
  frm_data_module.tabelaOficinas.Open;

end;

procedure Tfrm_query_class.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

end.
