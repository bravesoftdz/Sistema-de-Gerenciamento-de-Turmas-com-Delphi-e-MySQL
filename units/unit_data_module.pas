unit unit_data_module;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, frxClass, frxDBSet, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Comp.UI;

type
  Tfrm_data_module = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    tabelaBolsistas: TFDTable;
    tabelaBolsistasbol_id: TFDAutoIncField;
    tabelaBolsistasbol_nome: TStringField;
    dataSourceTabelaBolsistas: TDataSource;
    dataSourceConsultaBolsistas: TDataSource;
    SQLConsultaBolsistas: TFDQuery;
    SQLExcluiBolsistas: TFDQuery;
    tabelaOficinas: TFDTable;
    dataSourceTabelaOficinas: TDataSource;
    tabelaOficinasofi_id: TFDAutoIncField;
    tabelaOficinasofi_nome: TStringField;
    tabelaOficinasofi_requisito: TStringField;
    tabelaOficinasofi_data_ini: TDateField;
    tabelaOficinasofi_hor_ini: TTimeField;
    tabelaOficinasofi_hor_fim: TTimeField;
    tabelaOficinasofi_local: TStringField;
    tabelaOficinasofi_bol_resp: TStringField;
    dataSourceConsultaOficinas: TDataSource;
    SQLConsultaOficinas: TFDQuery;
    SQLExcluiOficinas: TFDQuery;
    tabelaEstudantes: TFDTable;
    dataSourceTabelaEstudantes: TDataSource;
    tabelaEstudantesest_id: TFDAutoIncField;
    tabelaEstudantesest_data_cad: TDateField;
    tabelaEstudantesest_nome: TStringField;
    tabelaEstudantesest_idade: TIntegerField;
    tabelaEstudantesest_cel: TStringField;
    tabelaEstudantesest_email: TStringField;
    tabelaEstudantesest_ofic_desej: TStringField;
    dataSourceConsultaEstudantes: TDataSource;
    SQLConsultaEstudantes: TFDQuery;
    SQLExcluiEstudantes: TFDQuery;
    relatorioEstudantes: TfrxReport;
    dataSetRelatEst: TfrxDBDataset;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_data_module: Tfrm_data_module;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unit_main, unit_query_class, unit_query_student,
  unit_query_teacher, unit_register_class, unit_register_student,
  unit_register_teacher, unit_attendance_list;

{$R *.dfm}

procedure Tfrm_data_module.DataModuleCreate(Sender: TObject);
begin

  //Configura o FDConnection1:
  FDConnection1.Params.DataBase := 'sistema-gerenciamento-turmas';
  FDConnection1.Params.UserName := 'root';
  FDConnection1.Params.PassWord := '';
  FDConnection1.Connected := True;

  //Configura o FDPhysMySQLDriverLink1 (drive):
  FDPhysMySQLDriverLink1.VendorLib := GetCurrentDir + '\lib\libmySQL.dll';

  //Configura a tabelaBolsistas:
  tabelaBolsistas.TableName := 'bolsistas';
  tabelaBolsistas.Active := True;

  //Configura a tabelaOficinas:
  tabelaOficinas.TableName := 'oficinas';
  tabelaOficinas.Active := True;

  //Configura a tabelaEstudantes:
  tabelaEstudantes.TableName := 'estudantes';
  tabelaEstudantes.Active := True;

end;

end.
