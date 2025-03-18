program Camara16236;

uses
  Forms,
  uMain in 'uMain.pas' {frmMain},
  uDiagnostico in 'uDiagnostico.pas' {frmDiagnostico},
  uUtils in 'uUtils.pas' {frmUtils},
  uCadModelos in 'uCadModelos.pas' {frmCadModelos},
  uCadEmpresas in 'uCadEmpresas.pas' {frmCadEmpresas},
  uEnsaio in 'uEnsaio.pas' {frmEnsaio};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmDiagnostico, frmDiagnostico);
  Application.CreateForm(TfrmUtils, frmUtils);
  Application.CreateForm(TfrmCadModelos, frmCadModelos);
  Application.CreateForm(TfrmCadEmpresas, frmCadEmpresas);
  Application.CreateForm(TfrmEnsaio, frmEnsaio);
  Application.Run;
end.
