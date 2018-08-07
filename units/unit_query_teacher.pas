unit unit_query_teacher;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  Tfrm_query_teacher = class(TForm)
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    Label4: TLabel;
    SpeedButton3: TSpeedButton;
    DBGrid1: TDBGrid;
    capturaIdBolsista: TEdit;
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
  frm_query_teacher: Tfrm_query_teacher;

implementation

{$R *.dfm}

uses unit_data_module, unit_main, unit_query_class,
  unit_query_student, unit_register_class, unit_register_student,
  unit_register_teacher, unit_attendance_list;

procedure Tfrm_query_teacher.Button1Click(Sender: TObject);
begin
  ShowMessage('Dê um duplo clique sobre a informação que deseja alterar na tabela abaixo.');
end;

procedure Tfrm_query_teacher.DBGrid1CellClick(Column: TColumn);
begin
  capturaIdBolsista.Text := intToStr(frm_data_module.tabelaBolsistasbol_id.Value);
end;

procedure Tfrm_query_teacher.SpeedButton1Click(Sender: TObject);
begin

  frm_data_module.SQLExcluiBolsistas.Close;
  frm_data_module.SQLExcluiBolsistas.SQL.Clear;
  frm_data_module.SQLExcluiBolsistas.SQL.Add('select * from bolsistas where bol_id = :id');
  frm_data_module.SQLExcluiBolsistas.ParamByName('id').Value := capturaIdBolsista.Text;
  frm_data_module.SQLExcluiBolsistas.Open;

  case Application.MessageBox(('Confirmar a Exclusão do Bolsista?') , 'Excluir Bolsista', MB_YESNO + MB_ICONQUESTION) of
    IDYES:
    begin
      frm_data_module.SQLExcluiBolsistas.Delete;
      ShowMessage('Bolsista Excluído com Sucesso.');
    end;
    IDNO:
    begin
      exit;
    end;
  end;

  //Atualiza a tabela:
  frm_data_module.tabelaBolsistas.Close;
  frm_data_module.tabelaBolsistas.SQL.Clear;
  frm_data_module.tabelaBolsistas.SQL.Add('select * from bolsistas');
  frm_data_module.tabelaBolsistas.Open;

end;

procedure Tfrm_query_teacher.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

end.
