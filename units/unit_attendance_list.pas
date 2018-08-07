unit unit_attendance_list;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  Tfrm_attendance_list = class(TForm)
    btnImprimir: TSpeedButton;
    cbSelecOficina: TComboBox;
    lblSelecOficina: TLabel;
    SpeedButton3: TSpeedButton;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_attendance_list: Tfrm_attendance_list;

implementation

{$R *.dfm}

uses unit_data_module, unit_main, unit_query_class, unit_query_student,
  unit_query_teacher, unit_register_class, unit_register_student,
  unit_register_teacher;

procedure Tfrm_attendance_list.btnImprimirClick(Sender: TObject);
begin

  with frm_data_module.SQLConsultaEstudantes do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from estudantes where est_ofic_desej like :oficina');
      ParamByName('oficina').Value := '%' + cbSelecOficina.Text + '%';
      Open;
      frm_data_module.relatorioEstudantes.LoadFromFile(GetCurrentDir + '\reports\relatorio_estudantes.fr3');
      frm_data_module.relatorioEstudantes.ShowReport();
    end;
end;

procedure Tfrm_attendance_list.FormActivate(Sender: TObject);
var listaOficinas : TStringList;
begin

  listaOficinas := TStringList.Create;

  //Adiciona listaOficinas no cbOficinaDesej:
  with frm_data_module.tabelaOficinas do
    begin
      First;
      while not Eof do
        begin
          listaOficinas.Add((FieldByName('ofi_nome').AsString)
          + ' - ' + (FieldByName('ofi_data_ini').AsString)
          + ' - ' + (FieldByName('ofi_hor_ini').AsString)
          +  '-'  + (FieldByName('ofi_hor_fim').AsString)
          + ' - ' + (FieldByName('ofi_local').AsString)
          + ' - ' + (FieldByName('ofi_bol_resp').AsString));
          Next;
        end;
    end;

  cbSelecOficina.Items := listaOficinas;
  listaOficinas.Free;

end;

procedure Tfrm_attendance_list.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

end.
