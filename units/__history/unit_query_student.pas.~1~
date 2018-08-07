unit unit_query_student;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons;

type
  Tfrm_query_student = class(TForm)
    btnExcluirEstudante: TSpeedButton;
    Label4: TLabel;
    btnSair: TSpeedButton;
    btnEditarEstudante: TButton;
    DBGrid1: TDBGrid;
    capturaIdEstudante: TEdit;
    procedure btnSairClick(Sender: TObject);
    procedure btnEditarEstudanteClick(Sender: TObject);
    procedure btnExcluirEstudanteClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_query_student: Tfrm_query_student;

implementation

{$R *.dfm}

uses unit_data_module, unit_main, unit_query_class,
  unit_query_teacher, unit_register_class, unit_register_student,
  unit_register_teacher, unit_attendance_list;

procedure Tfrm_query_student.btnEditarEstudanteClick(Sender: TObject);
begin
  ShowMessage('Dê um duplo clique sobre a informação que deseja alterar na tabela abaixo.');
end;

procedure Tfrm_query_student.btnExcluirEstudanteClick(Sender: TObject);
begin

  frm_data_module.SQLExcluiEstudantes.Close;
  frm_data_module.SQLExcluiEstudantes.SQL.Clear;
  frm_data_module.SQLExcluiEstudantes.SQL.Add('select * from estudantes where est_id = :id');
  frm_data_module.SQLExcluiEstudantes.ParamByName('id').Value := capturaIdEstudante.Text;
  frm_data_module.SQLExcluiEstudantes.Open;

  case Application.MessageBox(('Confirmar a Exclusão do Estudante?') , 'Excluir Estudante', MB_YESNO + MB_ICONQUESTION) of
    IDYES:
    begin
      frm_data_module.SQLExcluiEstudantes.Delete;
      ShowMessage('Estudante Excluído com Sucesso.');
    end;
    IDNO:
    begin
      exit;
    end;
  end;

  //Atualiza a tabela:
  frm_data_module.tabelaEstudantes.Close;
  frm_data_module.tabelaEstudantes.SQL.Clear;
  frm_data_module.tabelaEstudantes.SQL.Add('select * from estudantes');
  frm_data_module.tabelaEstudantes.Open;

end;

procedure Tfrm_query_student.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_query_student.DBGrid1CellClick(Column: TColumn);
begin
  capturaIdEstudante.Text := intToStr(frm_data_module.tabelaEstudantesest_id.Value);
end;

end.
