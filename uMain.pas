unit uMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Menus, CBW32, Buttons;

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
    Label3: TLabel;
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
    procedure FormCreate(Sender: TObject);
    procedure tmrMainReadTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
        chTI1           = 15;
        chTI2           = 7;
        chTI3           = 14;
        chTI4           = 8;
        chTAS1          = 13;
        chTAS2          = 5;
        chTAE1          = 12;
        chTAE2          = 4;
        chTTanque       = 6;
        chUmid          = 0;
        chCel1          = 1;
        chCel2          = 9;
        chPressao1      = 2;
        chPressao2      = 10;
        chNivel         = 3;
        bitChEmergencia = 0;
        bitPorta        = 1;

var
  frmMain: TfrmMain;

implementation

{$R *.DFM}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
        //Configura bits 0 a 3, Board 0 como entrada
        cbDConfigBit(0, AUXPORT, 0, DIGITALIN);
        cbDConfigBit(0, AUXPORT, 1, DIGITALIN);
        cbDConfigBit(0, AUXPORT, 2, DIGITALIN);
        cbDConfigBit(0, AUXPORT, 3, DIGITALIN);

        //Configura bits 4 a 7, Board 0 como saida
        if cbDConfigBit(0, AUXPORT, 4, DIGITALOUT) <> 0 then
                ShowMessage('Erro configurando Bit 4 como saída!');
        if cbDConfigBit(0, AUXPORT, 5, DIGITALOUT) <> 0 then
                ShowMessage('Erro configurando Bit 5 como sa?da!');
        if cbDConfigBit(0, AUXPORT, 6, DIGITALOUT) <> 0 then
                ShowMessage('Erro configurando Bit 6 como sa?da!');
        if cbDConfigBit(0, AUXPORT, 7, DIGITALOUT) <> 0 then
                ShowMessage('Erro configurando Bit 7 como sa?da!');

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

        cbDBitIn(0, AUXPORT, bitChEmergencia, bitValue);
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

        cbDBitIn(0, AUXPORT, bitPorta, bitValue);
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

end;

end.
