program Camara16236;

uses
  Forms,
  uMain in 'uMain.pas' {frmMain},
  uHelmet in 'uHelmet.pas' {frmHelmet};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmHelmet, frmHelmet);
  Application.Run;
end.
