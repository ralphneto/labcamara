unit uDiagnostico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, constantes,Cbw32;

type
  TfrmDiagnostico = class(TForm)
    pnDiagnostico: TPanel;
    gbTemperatures: TGroupBox;
    lbTI1: TLabel;
    lbTI2: TLabel;
    lbTI3: TLabel;
    lbTI4: TLabel;
    lbTanque: TLabel;
    lbTE1: TLabel;
    lbTE2: TLabel;
    lbTS1: TLabel;
    lbTS2: TLabel;
    edTI1: TEdit;
    edTI2: TEdit;
    edTI3: TEdit;
    edTI4: TEdit;
    edTanque: TEdit;
    edTE1: TEdit;
    edTE2: TEdit;
    edTS1: TEdit;
    edTS2: TEdit;
    gpMedidas: TGroupBox;
    lbUmid: TLabel;
    lbPressao1: TLabel;
    lbPressao2: TLabel;
    lbNivel: TLabel;
    lbCel1: TLabel;
    lbCel2: TLabel;
    edUmid: TEdit;
    edPressao1: TEdit;
    edPressao2: TEdit;
    edNivel: TEdit;
    edCel1: TEdit;
    edCel2: TEdit;
    GroupBox1: TGroupBox;
    ledPortaOff: TImage;
    ledPortaOn: TImage;
    lbPorta: TLabel;
    lbChaveEmergencia: TLabel;
    ledEmergenciaOff: TImage;
    ledEmergenciaOn: TImage;
    lbPressaoCompressor: TLabel;
    ledPressaoCompressorOff: TImage;
    ledPressaoCompressorOn: TImage;
    gbEnergia: TGroupBox;
    lbMedidor1: TLabel;
    lbMedidor2: TLabel;
    lbVAC: TLabel;
    lbCorrenteA: TLabel;
    lbKWH: TLabel;
    edMedidor12V: TEdit;
    edMedidor1V: TEdit;
    edMedidor1A: TEdit;
    edMedidor12A: TEdit;
    edMedidor1KWh: TEdit;
    edMedidor2KWh: TEdit;
    pnOutputA: TPanel;
    btnSelTempAguaEntOn: TImage;
    btnSelTempAguaEntOff: TImage;
    lbSelTempAguaEnt: TLabel;
    edTI1V: TEdit;
    edTI2V: TEdit;
    edTI3V: TEdit;
    edTI4V: TEdit;
    edTanqueV: TEdit;
    edTE1V: TEdit;
    edTE2V: TEdit;
    edTS1V: TEdit;
    edTS2V: TEdit;
    lbCelsius: TLabel;
    lbmV: TLabel;
    edUmidV: TEdit;
    edPressao1V: TEdit;
    edPressao2V: TEdit;
    edNivelV: TEdit;
    edCel1V: TEdit;
    edCel2V: TEdit;
    lbUnidade: TLabel;
    lbMV2: TLabel;
    lbUmidificador: TLabel;
    btnUmidificadorOn: TImage;
    btnUmidificadorOff: TImage;
    lbevSaidaAgua2: TLabel;
    btnSaidaAgua2On: TImage;
    btnSaidaAgua2Off: TImage;
    lbevSaidaAgua1: TLabel;
    btnSaidaAgua1On: TImage;
    btnSaidaAgua1Off: TImage;
    lbevProcTanque: TLabel;
    btnProcTanqueOn: TImage;
    btnProcTanqueOff: TImage;
    lbCirculacaoAr: TLabel;
    btnCirculacaoArOn: TImage;
    btnCirculacaoArOff: TImage;
    lbevProcInterno: TLabel;
    btnProcInternoOn: TImage;
    btnProcInternoOff: TImage;
    btnRecirculacaoOff: TImage;
    btnRecirculacaoOn: TImage;
    lbevRecirculacao: TLabel;
    pnOutputB: TPanel;
    btnGasQuenteInternoOn: TImage;
    btnGasQuenteInternoOff: TImage;
    lbevGasQuenteInterno: TLabel;
    lbevGasQuenteTanque: TLabel;
    btnGasQuenteTanqueOn: TImage;
    btnGasQuenteTanqueOff: TImage;
    lbCompressorTanque: TLabel;
    btnCompressorTanqueOn: TImage;
    btnCompressorTanqueOff: TImage;
    lbCompressorInterno: TLabel;
    btnCompressorInternoOn: TImage;
    btnCompressorInternoOff: TImage;
    lbResistenciaTanque: TLabel;
    btnResistenciaTanqueOn: TImage;
    btnResistenciaTanqueOff: TImage;
    lbResistenciaCamara2: TLabel;
    btnResistenciaCamara2On: TImage;
    btnResistenciaCamara2Off: TImage;
    lbResistenciaCamara3: TLabel;
    btnResistenciaCamara3On: TImage;
    btnResistenciaCamara3Off: TImage;
    btnBombaAguaOff: TImage;
    btnBombaAguaOn: TImage;
    lbBombaAgua: TLabel;
    tmrDiagRead: TTimer;
    procedure tmrDiagReadTimer(Sender: TObject);
    procedure btnSelTempAguaEntOffClick(Sender: TObject);
    procedure btnUmidificadorOffClick(Sender: TObject);
    procedure btnSaidaAgua1OffClick(Sender: TObject);
    procedure btnSaidaAgua2OffClick(Sender: TObject);
    procedure btnRecirculacaoOffClick(Sender: TObject);
    procedure btnProcInternoOffClick(Sender: TObject);
    procedure btnCirculacaoArOffClick(Sender: TObject);
    procedure btnProcTanqueOffClick(Sender: TObject);
    procedure btnGasQuenteInternoOffClick(Sender: TObject);
    procedure btnGasQuenteTanqueOffClick(Sender: TObject);
    procedure btnCompressorInternoOffClick(Sender: TObject);
    procedure btnCompressorTanqueOffClick(Sender: TObject);
    procedure btnBombaAguaOffClick(Sender: TObject);
    procedure btnResistenciaCamara3OffClick(Sender: TObject);
    procedure btnResistenciaCamara2OffClick(Sender: TObject);
    procedure btnResistenciaTanqueOffClick(Sender: TObject);
    procedure btnSelTempAguaEntOnClick(Sender: TObject);
    procedure btnUmidificadorOnClick(Sender: TObject);
    procedure btnSaidaAgua1OnClick(Sender: TObject);
    procedure btnSaidaAgua2OnClick(Sender: TObject);
    procedure btnRecirculacaoOnClick(Sender: TObject);
    procedure btnProcInternoOnClick(Sender: TObject);
    procedure btnCirculacaoArOnClick(Sender: TObject);
    procedure btnProcTanqueOnClick(Sender: TObject);
    procedure btnGasQuenteInternoOnClick(Sender: TObject);
    procedure btnGasQuenteTanqueOnClick(Sender: TObject);
    procedure btnCompressorInternoOnClick(Sender: TObject);
    procedure btnCompressorTanqueOnClick(Sender: TObject);
    procedure btnBombaAguaOnClick(Sender: TObject);
    procedure btnResistenciaCamara3OnClick(Sender: TObject);
    procedure btnResistenciaCamara2OnClick(Sender: TObject);
    procedure btnResistenciaTanqueOnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiagnostico: TfrmDiagnostico;

implementation

uses uUtils;

{$R *.DFM}

procedure TfrmDiagnostico.tmrDiagReadTimer(Sender: TObject);
var dataValue : Word;
    bitValue  : Integer;
begin
        if (cbAIn(1, chTI1, BIP5VOLTS, dataValue) <> 0) then
        begin
                //tmrDiagRead.Enabled := False;
                //ShowMessage('Erro Lendo Temperatura Interna 1!');
        end
        else
        begin
                edTI1.Text := IntToStr(dataValue);
        end;

        if (cbAIn(1, chTI2, BIP5VOLTS, dataValue) <> 0) then
        begin
                //tmrDiagRead.Enabled := False;
                //ShowMessage('Erro Lendo Temperatura Interna 2!');
        end
        else
        begin
                edTI2.Text := IntToStr(dataValue);
        end;

        if (cbAIn(1, chTI3, BIP5VOLTS, dataValue) <> 0) then
        begin
                //tmrDiagRead.Enabled := False;
                //ShowMessage('Erro Lendo Temperatura Interna 3!');
        end
        else
        begin
                edTI3.Text := IntToStr(dataValue);
        end;

        if (cbAIn(1, chTI4, BIP5VOLTS, dataValue) <> 0) then
        begin
                //tmrDiagRead.Enabled := False;
                //ShowMessage('Erro Lendo Temperatura Interna 4!');
        end
        else
        begin
                edTI4.Text := IntToStr(dataValue);
        end;

        if (cbAIn(1, chTTanque, BIP5VOLTS, dataValue) <> 0) then
        begin
                //tmrDiagRead.Enabled := False;
                //ShowMessage('Erro Lendo Temperatura Tanque!');
        end
        else
        begin
                edTanque.Text := IntToStr(dataValue);
        end;

        if (cbAIn(1, chTAE1, BIP5VOLTS, dataValue) <> 0) then
        begin
                //tmrDiagRead.Enabled := False;
                //ShowMessage('Erro Lendo Temperatura Entrada/Garrafão 1!');
        end
        else
        begin
                edTE1.Text := IntToStr(dataValue);
        end;

        if (cbAIn(1, chTAE2, BIP5VOLTS, dataValue) <> 0) then
        begin
                //tmrDiagRead.Enabled := False;
                //ShowMessage('Erro Lendo Temperatura Entrada/Garrafão 2!');
        end
        else
        begin
                edTE2.Text := IntToStr(dataValue);
        end;

        if (cbAIn(1, chTAS1, BIP5VOLTS, dataValue) <> 0) then
        begin
                //tmrDiagRead.Enabled := False;
                //ShowMessage('Erro Lendo Temperatura Saída 1!');
        end
        else
        begin
                edTS1.Text := IntToStr(dataValue);
        end;

        if (cbAIn(1, chTAS2, BIP5VOLTS, dataValue) <> 0) then
        begin
                //tmrDiagRead.Enabled := False;
                //ShowMessage('Erro Lendo Temperatura Saída 2!');
        end
        else
        begin
                edTS2.Text := IntToStr(dataValue);
        end;

        if (cbAIn(1, chUmid, BIP5VOLTS, dataValue) <> 0) then
        begin
                //tmrDiagRead.Enabled := False;
                //ShowMessage('Erro Lendo Umidade!');
        end
        else
        begin
                edUmid.Text := IntToStr(dataValue);
        end;

        if (cbAIn(1, chPressao1, BIP5VOLTS, dataValue) <> 0) then
        begin
                //tmrDiagRead.Enabled := False;
                //ShowMessage('Erro Lendo Pressão 1!');
        end
        else
        begin
                edPressao1.Text := IntToStr(dataValue);
        end;

        if (cbAIn(1, chPressao2, BIP5VOLTS, dataValue) <> 0) then
        begin
                //tmrDiagRead.Enabled := False;
                //ShowMessage('Erro Lendo Pressão 2!');
        end
        else
        begin
                edPressao2.Text := IntToStr(dataValue);
        end;

        if (cbAIn(1, chNivel, BIP5VOLTS, dataValue) <> 0) then
        begin
                //tmrDiagRead.Enabled := False;
                //ShowMessage('Erro Lendo Nível!');
        end
        else
        begin
                edNivel.Text := IntToStr(dataValue);
        end;

        if (cbAIn(1, chCel1, BIP5VOLTS, dataValue) <> 0) then
        begin
                //tmrDiagRead.Enabled := False;
                //ShowMessage('Erro Lendo Célula de Carga 1!');
        end
        else
        begin
                edCel1.Text := IntToStr(dataValue);
        end;

        if (cbAIn(1, chCel2, BIP5VOLTS, dataValue) <> 0) then
        begin
                //tmrDiagRead.Enabled := False;
                //ShowMessage('Erro Lendo Célula de Carga 2!');
        end
        else
        begin
                edCel2.Text := IntToStr(dataValue);
        end;

        bitValue := frmUtils.LerChaveEmergencia();
        if bitValue = 1 then
        begin
                ledEmergenciaOff.Visible := true;
                ledEmergenciaOn.Visible := false;
        end
        else
        begin
                ledEmergenciaOff.Visible := false;
                ledEmergenciaOn.Visible := true;
        end;

        bitValue := frmUtils.LerPorta();
        if bitValue = 1 then
        begin
                ledPortaOff.Visible := true;
                ledPortaOn.Visible := false;
        end
        else
        begin
                ledPortaOff.Visible := false;
                ledPortaOn.Visible := true;
        end;

        bitValue := frmUtils.LerPressaoCompressor();
        if bitValue = 1 then
        begin
                ledPressaoCompressorOff.Visible := true;
                ledPressaoCompressorOn.Visible := false;
        end
        else
        begin
                ledPressaoCompressorOff.Visible := false;
                ledPressaoCompressorOn.Visible := true;
        end;

end;

procedure TfrmDiagnostico.btnSelTempAguaEntOffClick(Sender: TObject);
begin
        frmUtils.LigarSelecaoTemperatura;
        btnSelTempAguaEntOff.Visible := False;
        btnSelTempAguaEntOn.Visible := True;
end;

procedure TfrmDiagnostico.btnUmidificadorOffClick(Sender: TObject);
begin
        frmUtils.LigarUmidificador;
        btnUmidificadorOff.Visible := False;
        btnUmidificadorOn.Visible := True;
end;

procedure TfrmDiagnostico.btnSaidaAgua1OffClick(Sender: TObject);
begin
        frmUtils.LigarSaidaAgua1;
        btnSaidaAgua1Off.Visible := False;
        btnSaidaAgua1On.Visible := True;
end;

procedure TfrmDiagnostico.btnSaidaAgua2OffClick(Sender: TObject);
begin
        frmUtils.LigarSaidaAgua2;
        btnSaidaAgua2Off.Visible := False;
        btnSaidaAgua2On.Visible := True;
end;

procedure TfrmDiagnostico.btnRecirculacaoOffClick(Sender: TObject);
begin
        frmUtils.LigarRecirculacao;
        btnRecirculacaoOff.Visible := False;
        btnRecirculacaoOn.Visible := True;
end;

procedure TfrmDiagnostico.btnProcInternoOffClick(Sender: TObject);
begin
        frmUtils.LigarProcCompInt;
        btnProcInternoOff.Visible := False;
        btnProcInternoOn.Visible := True;
end;

procedure TfrmDiagnostico.btnCirculacaoArOffClick(Sender: TObject);
begin
        frmUtils.LigarCirculacaoArInt;
        btnCirculacaoArOff.Visible := False;
        btnCirculacaoArOn.Visible := True;
end;

procedure TfrmDiagnostico.btnProcTanqueOffClick(Sender: TObject);
begin
        frmUtils.LigarProcCompTanque;
        btnProcTanqueOff.Visible := False;
        btnProcTanqueOn.Visible := True;
end;

procedure TfrmDiagnostico.btnGasQuenteInternoOffClick(Sender: TObject);
begin
        frmUtils.LigarGasQuenteInt;
        btnGasQuenteInternoOff.Visible := False;
        btnGasQuenteInternoOn.Visible := True;
end;

procedure TfrmDiagnostico.btnGasQuenteTanqueOffClick(Sender: TObject);
begin
        frmUtils.LigarGasQuenteTanque;
        btnGasQuenteTanqueOff.Visible := False;
        btnGasQuenteTanqueOn.Visible := True;
end;

procedure TfrmDiagnostico.btnCompressorInternoOffClick(Sender: TObject);
begin
        frmUtils.LigarCompressorInt;
        btnCompressorInternoOff.Visible := False;
        btnCompressorInternoOn.Visible := True;
end;

procedure TfrmDiagnostico.btnCompressorTanqueOffClick(Sender: TObject);
begin
        frmUtils.LigarCompressorTanque;
        btnCompressorTanqueOff.Visible := False;
        btnCompressorTanqueOn.Visible := True;
end;

procedure TfrmDiagnostico.btnBombaAguaOffClick(Sender: TObject);
begin
        frmUtils.LigarBombaAgua;
        btnBombaAguaOff.Visible := False;
        btnBombaAguaOn.Visible := True;
end;

procedure TfrmDiagnostico.btnResistenciaCamara3OffClick(Sender: TObject);
begin
        frmUtils.LigarResistenciaCamara3;
        btnResistenciaCamara3Off.Visible := False;
        btnResistenciaCamara3On.Visible := True;
end;

procedure TfrmDiagnostico.btnResistenciaCamara2OffClick(Sender: TObject);
begin
        frmUtils.LigarResistenciaCamara2;
        btnResistenciaCamara2Off.Visible := False;
        btnResistenciaCamara2On.Visible := True;
end;

procedure TfrmDiagnostico.btnResistenciaTanqueOffClick(Sender: TObject);
begin
        frmUtils.LigarResistenciaTanque;
        btnResistenciaTanqueOff.Visible := False;
        btnResistenciaTanqueOn.Visible := True;
end;

procedure TfrmDiagnostico.btnSelTempAguaEntOnClick(Sender: TObject);
begin
        frmUtils.DesligarSelecaoTemperatura;
        btnSelTempAguaEntOn.Visible := False;
        btnSelTempAguaEntOff.Visible := True;
end;

procedure TfrmDiagnostico.btnUmidificadorOnClick(Sender: TObject);
begin
        frmUtils.DesligarUmidificador;
        btnUmidificadorOn.Visible := False;
        btnUmidificadorOff.Visible := True;
end;

procedure TfrmDiagnostico.btnSaidaAgua1OnClick(Sender: TObject);
begin
        frmUtils.DesligarSaidaAgua1;
        btnSaidaAgua1On.Visible := False;
        btnSaidaAgua1Off.Visible := True;
end;

procedure TfrmDiagnostico.btnSaidaAgua2OnClick(Sender: TObject);
begin
        frmUtils.DesligarSaidaAgua2;
        btnSaidaAgua2On.Visible := False;
        btnSaidaAgua2Off.Visible := True;
end;

procedure TfrmDiagnostico.btnRecirculacaoOnClick(Sender: TObject);
begin
        frmUtils.DesligarRecirculacao;
        btnRecirculacaoOn.Visible := False;
        btnRecirculacaoOff.Visible := True;
end;

procedure TfrmDiagnostico.btnProcInternoOnClick(Sender: TObject);
begin
        frmUtils.DesligarProcCompInt;
        btnProcInternoOn.Visible := False;
        btnProcInternoOff.Visible := True;
end;

procedure TfrmDiagnostico.btnCirculacaoArOnClick(Sender: TObject);
begin
        frmUtils.DesligarCirculacaoArInt;
        btnCirculacaoArOn.Visible := False;
        btnCirculacaoArOff.Visible := True;
end;

procedure TfrmDiagnostico.btnProcTanqueOnClick(Sender: TObject);
begin
        frmUtils.DesligarProcCompTanque;
        btnProcTanqueOn.Visible := False;
        btnProcTanqueOff.Visible := True;
end;

procedure TfrmDiagnostico.btnGasQuenteInternoOnClick(Sender: TObject);
begin
        frmUtils.DesligarGasQuenteInt;
        btnGasQuenteInternoOn.Visible := False;
        btnGasQuenteInternoOff.Visible := True;
end;

procedure TfrmDiagnostico.btnGasQuenteTanqueOnClick(Sender: TObject);
begin
        frmUtils.DesligarGasQuenteTanque;
        btnGasQuenteTanqueOn.Visible := False;
        btnGasQuenteTanqueOff.Visible := True;
end;

procedure TfrmDiagnostico.btnCompressorInternoOnClick(Sender: TObject);
begin
        frmUtils.DesligarCompressorInt;
        btnCompressorInternoOn.Visible := False;
        btnCompressorInternoOff.Visible := True;
end;

procedure TfrmDiagnostico.btnCompressorTanqueOnClick(Sender: TObject);
begin
        frmUtils.DesligarCompressorTanque;
        btnCompressorTanqueOn.Visible := False;
        btnCompressorTanqueOff.Visible := True;
end;

procedure TfrmDiagnostico.btnBombaAguaOnClick(Sender: TObject);
begin
        frmUtils.DesligarBombaAgua;
        btnBombaAguaOn.Visible := False;
        btnBombaAguaOff.Visible := True;
end;

procedure TfrmDiagnostico.btnResistenciaCamara3OnClick(Sender: TObject);
begin
        frmUtils.DesligarResistenciaCamara3;
        btnResistenciaCamara3On.Visible := False;
        btnResistenciaCamara3Off.Visible := True;
end;

procedure TfrmDiagnostico.btnResistenciaCamara2OnClick(Sender: TObject);
begin
        frmUtils.DesligarResistenciaCamara2;
        btnResistenciaCamara2On.Visible := False;
        btnResistenciaCamara2Off.Visible := True;
end;

procedure TfrmDiagnostico.btnResistenciaTanqueOnClick(Sender: TObject);
begin
        frmUtils.DesligarResistenciaTanque;
        btnResistenciaTanqueOn.Visible := False;
        btnResistenciaTanqueOff.Visible := True;
end;

procedure TfrmDiagnostico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        tmrDiagRead.Enabled := False;
end;

end.
