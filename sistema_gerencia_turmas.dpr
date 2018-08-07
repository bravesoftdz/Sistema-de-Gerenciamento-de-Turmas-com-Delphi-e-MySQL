program sistema_gerencia_turmas;

uses
  Vcl.Forms,
  unit_register_teacher in 'units\unit_register_teacher.pas' {frmCadastroBolsista},
  unit_query_teacher in 'units\unit_query_teacher.pas' {frm_query_teacher},
  unit_register_class in 'units\unit_register_class.pas' {frm_register_class},
  unit_query_class in 'units\unit_query_class.pas' {frm_query_class},
  unit_register_student in 'units\unit_register_student.pas' {frm_register_student},
  unit_query_student in 'units\unit_query_student.pas' {frm_query_student},
  unit_attendance_list in 'units\unit_attendance_list.pas' {frm_attendance_list},
  unit_main in 'units\unit_main.pas' {frm_main},
  unit_data_module in 'units\unit_data_module.pas' {frm_data_module: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(TfrmCadastroBolsista, frmCadastroBolsista);
  Application.CreateForm(Tfrm_query_teacher, frm_query_teacher);
  Application.CreateForm(Tfrm_register_class, frm_register_class);
  Application.CreateForm(Tfrm_query_class, frm_query_class);
  Application.CreateForm(Tfrm_register_student, frm_register_student);
  Application.CreateForm(Tfrm_query_student, frm_query_student);
  Application.CreateForm(Tfrm_attendance_list, frm_attendance_list);
  Application.CreateForm(Tfrm_data_module, frm_data_module);
  Application.Run;
end.
