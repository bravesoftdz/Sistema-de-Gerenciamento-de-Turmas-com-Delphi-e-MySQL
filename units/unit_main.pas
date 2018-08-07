unit unit_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage;

type
  Tfrm_main = class(TForm)
    MainMenu1: TMainMenu;
    Bolsista1: TMenuItem;
    Arquivo1: TMenuItem;
    Oficina1: TMenuItem;
    Estudante1: TMenuItem;
    Sair1: TMenuItem;
    CadastrarBolsista1: TMenuItem;
    ConsultarEditarExcluirBolsista1: TMenuItem;
    CadastrarOficina1: TMenuItem;
    ConsultarEditarExcluirOficina: TMenuItem;
    CadastrarEstudante1: TMenuItem;
    ConsultarEditarExcluirEstudante: TMenuItem;
    Relatrio1: TMenuItem;
    GerarListaPresencaAutomtica: TMenuItem;
    Image1: TImage;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure CadastrarBolsista1Click(Sender: TObject);
    procedure ConsultarEditarExcluirBolsista1Click(Sender: TObject);
    procedure CadastrarOficina1Click(Sender: TObject);
    procedure ConsultarEditarExcluirOficinaClick(Sender: TObject);
    procedure CadastrarEstudante1Click(Sender: TObject);
    procedure ConsultarEditarExcluirEstudanteClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure GerarListaPresencaAutomticaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.dfm}

uses unit_register_teacher, unit_query_teacher, unit_register_class,
  unit_query_class, unit_register_student, unit_query_student,
  unit_data_module, unit_attendance_list;

procedure Tfrm_main.CadastrarBolsista1Click(Sender: TObject);
begin

  //Abre/inicia a insercao na tabela:
  frm_data_module.tabelaBolsistas.Active := True;
  frm_data_module.tabelaBolsistas.Insert;

  frmCadastroBolsista.ShowModal;

end;

procedure Tfrm_main.CadastrarEstudante1Click(Sender: TObject);
begin

  //Abre/inicia a insercao na tabela:
  frm_data_module.tabelaEstudantes.Active := True;
  frm_data_module.tabelaEstudantes.Insert;

  frm_register_student.ShowModal;
end;

procedure Tfrm_main.CadastrarOficina1Click(Sender: TObject);

begin

  //Abre/inicia a insercao na tabela:
  frm_data_module.tabelaOficinas.Active := True;
  frm_data_module.tabelaOficinas.Insert;

  frm_register_class.ShowModal;

end;

procedure Tfrm_main.ConsultarEditarExcluirBolsista1Click(Sender: TObject);
begin

  //Apresenta a lista de bolsistas:
  frm_data_module.SQLConsultaBolsistas.Close;
  frm_data_module.SQLConsultaBolsistas.SQL.Clear;
  frm_data_module.SQLConsultaBolsistas.SQL.Add('select * from bolsistas');
  frm_data_module.SQLConsultaBolsistas.Open;

  frm_query_teacher.ShowModal;

end;

procedure Tfrm_main.ConsultarEditarExcluirEstudanteClick(Sender: TObject);
begin

  //Apresenta a lista de oficinas:
  frm_data_module.SQLConsultaEstudantes.Close;
  frm_data_module.SQLConsultaEstudantes.SQL.Clear;
  frm_data_module.SQLConsultaEstudantes.SQL.Add('select * from estudantes');
  frm_data_module.SQLConsultaEstudantes.Open;

  frm_query_student.ShowModal;

end;

procedure Tfrm_main.ConsultarEditarExcluirOficinaClick(Sender: TObject);
begin

  //Apresenta a lista de oficinas:
  frm_data_module.SQLConsultaOficinas.Close;
  frm_data_module.SQLConsultaOficinas.SQL.Clear;
  frm_data_module.SQLConsultaOficinas.SQL.Add('select * from oficinas');
  frm_data_module.SQLConsultaOficinas.Open;

  frm_query_class.ShowModal;

end;

procedure Tfrm_main.GerarListaPresencaAutomticaClick(Sender: TObject);
begin
  frm_attendance_list.ShowModal;
end;

procedure Tfrm_main.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrm_main.Timer1Timer(Sender: TObject);
begin

  StatusBar1.Panels[0].Text := 'Sistema de Gerenciamento de Turmas'
  + '      -      '
  + 'Horário: ' + FormatDateTime('hh:mm:ss', Now)
  + '      -      '
  + 'Data: '    + FormatDateTime('dddd, dd "de" mmmm "de" yyyy', Now);

  StatusBar1.Font.Size := 10;

end;

end.
