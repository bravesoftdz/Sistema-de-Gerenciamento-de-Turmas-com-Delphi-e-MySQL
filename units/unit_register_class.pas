unit unit_register_class;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfrm_register_class = class(TForm)
    lblOficinaNome: TLabel;
    lblOficinaRequisito: TLabel;
    lblOficinaDataInicio: TLabel;
    lblOficinaHorInicio: TLabel;
    lblOficinaLocal: TLabel;
    lblOficinaBolResp: TLabel;
    txtOficinaNome: TDBEdit;
    txtOficinaRequisito: TDBEdit;
    txtOficinaDataInicio: TDBEdit;
    txtOficinaHorInicio: TDBEdit;
    txtOficinaHorFim: TDBEdit;
    txtOficinaLocal: TDBEdit;
    lblOficinaHorFim: TLabel;
    btnSalvar: TSpeedButton;
    btnSair: TSpeedButton;
    cbOficinaResp: TDBComboBox;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_register_class: Tfrm_register_class;

implementation

{$R *.dfm}

uses unit_data_module, unit_main, unit_query_class,
  unit_query_student, unit_query_teacher, unit_register_student,
  unit_register_teacher, unit_attendance_list;

procedure Tfrm_register_class.btnSalvarClick(Sender: TObject);
begin

  //Salva a informacao na tabela:
  frm_data_module.tabelaOficinas.Post;

  //Mostra uma mensagem de sucesso:
  ShowMessage('Cadastro realizado com sucesso.');

  //Permite uma nova insercao na tabela:
  frm_data_module.tabelaOficinas.Active := True;
  frm_data_module.tabelaOficinas.Insert;

end;

procedure Tfrm_register_class.FormActivate(Sender: TObject);
var listaBolsistas : TStringList;
begin

  listaBolsistas := TStringList.Create;

  //Adiciona listaBolsistas no cbOficinaResp:
  with frm_data_module.tabelaBolsistas do
    begin
      First;
      while not Eof do
        begin
          listaBolsistas.Add(FieldByName('bol_nome').AsString);
          Next;
        end;
    end;

  cbOficinaResp.Items := listaBolsistas;
  listaBolsistas.Free;

end;

procedure Tfrm_register_class.btnSairClick(Sender: TObject);
begin
  frm_data_module.tabelaOficinas.Cancel;
  close;
end;

end.
