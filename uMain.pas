unit uMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Menus, CBW32, Buttons, constantes;

type
  TfrmMain = class(TForm)
    PanelMain: TPanel;
    MainMenu1: TMainMenu;
    Ensaio1: TMenuItem;
    Novo1: TMenuItem;
    Sair1: TMenuItem;
    Configuraes1: TMenuItem;
    Ferramentas1: TMenuItem;
    Diagnstico1: TMenuItem;
    Opes1: TMenuItem;
    Ajuda1: TMenuItem;
    tmrMainRead: TTimer;
    gbTemperatures: TGroupBox;
    lbTI1: TLabel;
    lbTI2: TLabel;
    lbTI3: TLabel;
    lbTI4: TLabel;
    lbTanque: TLabel;
    edTI1: TEdit;
    edTI2: TEdit;
    edTI3: TEdit;
    edTI4: TEdit;
    edTanque: TEdit;
    edTE1: TEdit;
    edTE2: TEdit;
    edTS1: TEdit;
    edTS2: TEdit;
    lbTE1: TLabel;
    lbTE2: TLabel;
    lbTS1: TLabel;
    lbTS2: TLabel;
    btNovo: TBitBtn;
    gpMedidas: TGroupBox;
    lbUmid: TLabel;
    lbPressao1: TLabel;
    lbPressao2: TLabel;
    lbNivel: TLabel;
    lbVol1: TLabel;
    lbVol2: TLabel;
    edUmid: TEdit;
    edPressao1: TEdit;
    edPressao2: TEdit;
    edNivel: TEdit;
    edVol1: TEdit;
    edVol2: TEdit;
    bbAbrirEnsaio: TBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
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
    Edit2: TEdit;
    Edit3: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    lbKWH: TLabel;
    Edit1: TEdit;
    Edit9: TEdit;
    N1: TMenuItem;
    Empresas1: TMenuItem;
    Modelos1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure tmrMainReadTimer(Sender: TObject);
    procedure Diagnstico1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure Modelos1Click(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses uUtils, uDiagnostico, uCadEmpresas, uCadModelos, uEnsaio;

{$R *.DFM}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
        if frmUtils.ConfigurarEntradasESaidas <> NOERRORS then
        begin
                ShowMessage('Erro configurando Módulo de Entradas e Saídas Digitais');
                Close();
        end;
end;

procedure TfrmMain.tmrMainReadTimer(Sender: TObject);
var     dataValue       : Word;
        bitValue        : Integer;
begin
        if (cbAIn(0, chTI1, BIP5VOLTS, dataValue) <> 0) then
        begin
                ShowMessage('Erro Lendo Temperatura Interna 1!');
                tmrMainRead.Enabled := False;
        end
        else
        begin
                edTI1.Text := IntToStr(dataValue);
        end;

        if (cbAIn(0, chTI2, BIP5VOLTS, dataValue) <> 0) then
        begin
                ShowMessage('Erro Lendo Temperatura Interna 2!');
                tmrMainRead.Enabled := False;
        end
        else
        begin
                edTI2.Text := IntToStr(dataValue);
        end;

        if (cbAIn(0, chTI3, BIP5VOLTS, dataValue) <> 0) then
        begin
                ShowMessage('Erro Lendo Temperatura Interna 3!');
                tmrMainRead.Enabled := False;
        end
        else
        begin
                edTI3.Text := IntToStr(dataValue);
        end;

        if (cbAIn(0, chTI4, BIP5VOLTS, dataValue) <> 0) then
        begin
                ShowMessage('Erro Lendo Temperatura Interna 4!');
                tmrMainRead.Enabled := False;
        end
        else
        begin
                edTI4.Text := IntToStr(dataValue);
        end;

        if (cbAIn(0, chTTanque, BIP5VOLTS, dataValue) <> 0) then
        begin
                ShowMessage('Erro Lendo Temperatura Tanque!');
                tmrMainRead.Enabled := False;
        end
        else
        begin
                edTanque.Text := IntToStr(dataValue);
        end;

        if (cbAIn(0, chTAE1, BIP5VOLTS, dataValue) <> 0) then
        begin
                ShowMessage('Erro Lendo Temperatura Entrada/Garrafão 1!');
                tmrMainRead.Enabled := False;
        end
        else
        begin
                edTE1.Text := IntToStr(dataValue);
        end;

        if (cbAIn(0, chTAE2, BIP5VOLTS, dataValue) <> 0) then
        begin
                ShowMessage('Erro Lendo Temperatura Entrada/Garrafão 2!');
                tmrMainRead.Enabled := False;
        end
        else
        begin
                edTE2.Text := IntToStr(dataValue);
        end;

        if (cbAIn(0, chTAS1, BIP5VOLTS, dataValue) <> 0) then
        begin
                ShowMessage('Erro Lendo Temperatura Saída 1!');
                tmrMainRead.Enabled := False;
        end
        else
        begin
                edTS1.Text := IntToStr(dataValue);
        end;

        if (cbAIn(0, chTAS2, BIP5VOLTS, dataValue) <> 0) then
        begin
                ShowMessage('Erro Lendo Temperatura Saída 2!');
                tmrMainRead.Enabled := False;
        end
        else
        begin
                edTS2.Text := IntToStr(dataValue);
        end;

        if (cbAIn(0, chUmid, BIP5VOLTS, dataValue) <> 0) then
        begin
                ShowMessage('Erro Lendo Umidade!');
                tmrMainRead.Enabled := False;
        end
        else
        begin
                edUmid.Text := IntToStr(dataValue);
        end;

        if (cbAIn(0, chPressao1, BIP5VOLTS, dataValue) <> 0) then
        begin
                ShowMessage('Erro Lendo Pressão 1!');
                tmrMainRead.Enabled := False;
        end
        else
        begin
                edPressao1.Text := IntToStr(dataValue);
        end;

        if (cbAIn(0, chPressao2, BIP5VOLTS, dataValue) <> 0) then
        begin
                ShowMessage('Erro Lendo Pressão 2!');
                tmrMainRead.Enabled := False;
        end
        else
        begin
                edPressao2.Text := IntToStr(dataValue);
        end;

        if (cbAIn(0, chNivel, BIP5VOLTS, dataValue) <> 0) then
        begin
                ShowMessage('Erro Lendo Nível!');
                tmrMainRead.Enabled := False;
        end
        else
        begin
                edNivel.Text := IntToStr(dataValue);
        end;

        if (cbAIn(0, chCel1, BIP5VOLTS, dataValue) <> 0) then
        begin
                ShowMessage('Erro Lendo Célula de Carga 1!');
                tmrMainRead.Enabled := False;
        end
        else
        begin
                edVol1.Text := IntToStr(dataValue);
        end;

        if (cbAIn(0, chCel2, BIP5VOLTS, dataValue) <> 0) then
        begin
                ShowMessage('Erro Lendo Célula de Carga 2!');
                tmrMainRead.Enabled := False;
        end
        else
        begin
                edVol2.Text := IntToStr(dataValue);
        end;

        cbDBitIn(0, AUXPORT, bitChEmergenciaIn, bitValue);
        if (bitValue) = 1 then
        begin
                ledEmergenciaOff.Visible := true;
                ledEmergenciaOn.Visible := false;
        end
        else
        begin
                ledEmergenciaOff.Visible := false;
                ledEmergenciaOn.Visible := true;
        end;

        cbDBitIn(0, AUXPORT, bitPortaIn, bitValue);
        if (bitValue) = 1 then
        begin
                ledPortaOff.Visible := true;
                ledPortaOn.Visible := false;
        end
        else
        begin
                ledPortaOff.Visible := false;
                ledPortaOn.Visible := true;
        end;

        cbDBitIn(0, AUXPORT, bitPressaoCompIn, bitValue);
        if (bitValue) = 1 then
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

procedure TfrmMain.Diagnstico1Click(Sender: TObject);
begin
        tmrMainRead.Enabled := False;
        frmDiagnostico.tmrDiagRead.Enabled := True;
        frmDiagnostico.ShowModal;
end;

procedure TfrmMain.Sair1Click(Sender: TObject);
begin
        tmrMainRead.Enabled := False;
        Close();
end;

procedure TfrmMain.Empresas1Click(Sender: TObject);
begin
        frmCadEmpresas.ShowModal;
end;

procedure TfrmMain.Modelos1Click(Sender: TObject);
begin
        frmCadModelos.ShowModal;
end;

procedure TfrmMain.btNovoClick(Sender: TObject);
begin
        frmEnsaio.ShowModal;
end;

end.
