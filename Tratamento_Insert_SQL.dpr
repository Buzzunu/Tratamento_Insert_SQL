program Tratamento_Insert_SQL;

uses
  Vcl.Forms,
  uTratamento_Insert_SQL in 'uTratamento_Insert_SQL.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
