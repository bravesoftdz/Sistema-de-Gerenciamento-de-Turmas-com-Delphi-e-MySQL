unit unit_register_teacher;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons;

type
  TfrmCadastroBolsista = class(TForm)
    lblBolsistaNome: TLabel;
    txtBolsistaNome: TDBEdit;
    btnSalvar: TSpeedButton;
    btnSair: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroBolsista: TfrmCadastroBolsista;

implementation

{$R *.dfm}

uses unit_data_module, unit_main, unit_query_class,
  unit_query_student, unit_query_teacher, unit_register_class,
  unit_register_student, unit_attendance_list;



procedure TfrmCadastroBolsista.btnSairClick(Sender: TObject);
begin
  frm_data_module.tabelaBolsistas.Cancel;
  close;
end;

procedure TfrmCadastroBolsista.btnSalvarClick(Sender: TObject);
begin

  //Salva a informacao na tabela:
  frm_data_module.tabelaBolsistas.Post;

  //Mostra uma mensagem de sucesso:
  ShowMessage('Cadastro realizado com sucesso.');

  //Permite uma nova insercao na tabela:
  frm_data_module.tabelaBolsistas.Active := True;
  frm_data_module.tabelaBolsistas.Insert;

end;

end.
