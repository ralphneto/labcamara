program Camara16236;

uses
  Forms,
  uMain in 'uMain.pas' {frmMain},
  uDiagnostico in 'uDiagnostico.pas' {frmDiagnostico},
  uUtils in 'uUtils.pas' {frmUtils};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmDiagnostico, frmDiagnostico);
  Application.CreateForm(TfrmUtils, frmUtils);
  Application.Run;
end.
