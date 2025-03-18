unit uEnsaio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Spin, constantes;

type
  TfrmEnsaio = class(TForm)
    nbEnsaio: TNotebook;
    lbEmpresa: TLabel;
    cbEmpresas: TComboBox;
    cbModelos: TComboBox;
    lbModelo: TLabel;
    lbNumAmostra: TLabel;
    Edit1: TEdit;
    lbNumLote: TLabel;
    edNumLote: TEdit;
    cbTipoEnsaio: TComboBox;
    lbTipoEnsaio: TLabel;
    lbTipoAparelho: TLabel;
    cbTipoAparelho: TComboBox;
    lbAparelhosEnsaio: TLabel;
    cbAparelhosEnsaio: TComboBox;
    lbTensao: TLabel;
    cbTensao: TComboBox;
    Label1: TLabel;
    seTempoIni: TSpinEdit;
    edTempoIni: TEdit;
    Label2: TLabel;
    edVolDescarte: TEdit;
    seVolDescarte: TSpinEdit;
    lbVolDescarte: TLabel;
    lbCicloRetirada: TLabel;
    edCicloRetirada: TEdit;
    seCicloRetirada: TSpinEdit;
    lbVolAguaCiclo: TLabel;
    edVolAguaCiclo: TEdit;
    seVolAguaCiclo: TSpinEdit;
    btnContinuar: TButton;
    btnSair: TButton;
    procedure FormCreate(Sender: TObject);
    procedure seTempoIniChange(Sender: TObject);
    procedure seVolDescarteChange(Sender: TObject);
    procedure seCicloRetiradaChange(Sender: TObject);
    procedure seVolAguaCicloChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEnsaio: TfrmEnsaio;

implementation

{$R *.DFM}

procedure TfrmEnsaio.FormCreate(Sender: TObject);
begin
        cbEmpresas.Items.LoadFromFile(ExtractFilePath(Application.ExeName) + fileEmpresas);
        cbModelos.Items.LoadFromFile(ExtractFilePath(Application.ExeName) + fileModelos);
end;

procedure TfrmEnsaio.seTempoIniChange(Sender: TObject);
var dAux: Double;
begin
        dAux := seTempoIni.Value / 10;
        edTempoIni.Text := FormatFloat('0.0', dAux);
end;

procedure TfrmEnsaio.seVolDescarteChange(Sender: TObject);
var dAux: Double;
begin
        dAux := seVolDescarte.Value / 10;
        edVolDescarte.Text := FormatFloat('0.0', dAux);
end;

procedure TfrmEnsaio.seCicloRetiradaChange(Sender: TObject);
var dAux: Double;
begin
        dAux := seCicloRetirada.Value / 10;
        edCicloRetirada.Text := FormatFloat('0.0', dAux);
end;

procedure TfrmEnsaio.seVolAguaCicloChange(Sender: TObject);
var dAux: Double;
begin
        dAux := seVolAguaCiclo.Value / 10;
        edVolAguaCiclo.Text := FormatFloat('0.0', dAux);
end;

end.
