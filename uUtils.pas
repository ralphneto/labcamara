unit uUtils;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, constantes, Cbw32;

type
  TfrmUtils = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    function ConfigurarEntradasESaidas(): Integer;

    //Outputs PortA
    procedure LigarSelecaoTemperatura();
    procedure DesligarSelecaoTemperatura();
    procedure LigarUmidificador();
    procedure DesligarUmidificador();
    procedure LigarSaidaAgua1();
    procedure DesligarSaidaAgua1();
    procedure LigarSaidaAgua2();
    procedure DesligarSaidaAgua2();
    procedure LigarRecirculacao();
    procedure DesligarRecirculacao();
    procedure LigarProcCompInt();
    procedure DesligarProcCompInt();
    procedure LigarCirculacaoArInt();
    procedure DesligarCirculacaoArInt();
    procedure LigarProcCompTanque();
    procedure DesligarProcCompTanque();

    //Outputs PortB
    procedure LigarGasQuenteInt();
    procedure DesligarGasQuenteInt();
    procedure LigarGasQuenteTanque();
    procedure DesligarGasQuenteTanque();
    procedure LigarCompressorInt();
    procedure DesligarCompressorInt();
    procedure LigarCompressorTanque();
    procedure DesligarCompressorTanque();
    procedure LigarBombaAgua();
    procedure DesligarBombaAgua();
    procedure LigarResistenciaCamara3();
    procedure DesligarResistenciaCamara3();
    procedure LigarResistenciaCamara2();
    procedure DesligarResistenciaCamara2();
    procedure LigarResistenciaTanque();
    procedure DesligarResistenciaTanque();

    //Inputs PortC
    function LerChaveEmergencia(): Integer;
    function LerPorta(): Integer;
    function LerPressaoCompressor(): Integer;

    function valueToVoltsStr(dataValue: Word): String;
  end;

const
  boardNum      = 0;
  ligar         = 1;
  desligar      = 0;
var
  frmUtils: TfrmUtils;

implementation

{$R *.DFM}

function TfrmUtils.ConfigurarEntradasESaidas(): Integer;
var iErro : Integer;
begin
        result := NOERRORS;
        iErro := cbDConfigPort (boardNum, FirstPortA, DigitalOut);
        if (iErro <> NOERRORS) then
                result := iErro;
        iErro := cbDConfigPort (boardNum, FirstPortB, DigitalOut);
        if (iErro <> NOERRORS) then
                result := iErro;
        iErro := cbDConfigPort (boardNum, FirstPortCH, DigitalIn);
        if (iErro <> NOERRORS) then
                result := iErro;
        iErro := cbDConfigPort (boardNum, FirstPortCL, DigitalIn);
        if (iErro <> NOERRORS) then
                result := iErro;

        iErro := cbDConfigBit (boardNum, FirstPortCL, 0, DigitalIn);
        iErro := cbDConfigBit (boardNum, FirstPortCL, 1, DigitalIn);
        iErro := cbDConfigBit (boardNum, FirstPortCL, 2, DigitalIn);


        if result = NOERRORS then
        begin
                cbDOut (boardNum, FirstPortA, 0);
                cbDOut (boardNum, FirstPortB, 0);
        end;
end;

procedure TfrmUtils.LigarSelecaoTemperatura();
begin
        cbDBitOut (boardNum, FirstPortA, bitSelTempAguaEntOut, ligar);
end;

procedure TfrmUtils.DesligarSelecaoTemperatura();
begin
        cbDBitOut (boardNum, FirstPortA, bitSelTempAguaEntOut, desligar);
end;

procedure TfrmUtils.LigarUmidificador();
begin
        cbDBitOut (boardNum, FirstPortA, bitUmidificadorOut, ligar);
end;

procedure TfrmUtils.DesligarUmidificador();
begin
        cbDBitOut (boardNum, FirstPortA, bitUmidificadorOut, desligar);
end;

procedure TfrmUtils.LigarSaidaAgua1();
begin
        cbDBitOut (boardNum, FirstPortA, bitSaidaAgua1Out, ligar);
end;

procedure TfrmUtils.DesligarSaidaAgua1();
begin
        cbDBitOut (boardNum, FirstPortA, bitSaidaAgua1Out, desligar);
end;

procedure TfrmUtils.LigarSaidaAgua2();
begin
        cbDBitOut (boardNum, FirstPortA, bitSaidaAgua2Out, ligar);
end;

procedure TfrmUtils.DesligarSaidaAgua2();
begin
        cbDBitOut (boardNum, FirstPortA, bitSaidaAgua2Out, desligar);
end;

procedure TfrmUtils.LigarRecirculacao();
begin
        cbDBitOut (boardNum, FirstPortA, bitRecirculacaoOut, ligar);
end;

procedure TfrmUtils.DesligarRecirculacao();
begin
        cbDBitOut (boardNum, FirstPortA, bitRecirculacaoOut, desligar);
end;

procedure TfrmUtils.LigarProcCompInt();
begin
        cbDBitOut (boardNum, FirstPortA, bitProcCompIntOut, ligar);
end;

procedure TfrmUtils.DesligarProcCompInt();
begin
        cbDBitOut (boardNum, FirstPortA, bitProcCompIntOut, desligar);
end;

procedure TfrmUtils.LigarCirculacaoArInt();
begin
        cbDBitOut (boardNum, FirstPortA, bitCircArOut, ligar);
end;

procedure TfrmUtils.DesligarCirculacaoArInt();
begin
        cbDBitOut (boardNum, FirstPortA, bitCircArOut, desligar);
end;

procedure TfrmUtils.LigarProcCompTanque();
begin
        cbDBitOut (boardNum, FirstPortA, bitProcCompTanqueOut, ligar);
end;

procedure TfrmUtils.DesligarProcCompTanque();
begin
        cbDBitOut (boardNum, FirstPortA, bitProcCompTanqueOut, desligar);
end;

procedure TfrmUtils.LigarGasQuenteInt();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitGasQuenteIntOut, ligar);
end;

procedure TfrmUtils.DesligarGasQuenteInt();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitGasQuenteIntOut, desligar);
end;

procedure TfrmUtils.LigarGasQuenteTanque();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitGasQuenteTanqueOut, ligar);
end;

procedure TfrmUtils.DesligarGasQuenteTanque();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitGasQuenteTanqueOut, desligar);
end;

procedure TfrmUtils.LigarCompressorInt();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitCompIntOut, ligar);
end;

procedure TfrmUtils.DesligarCompressorInt();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitCompIntOut, desligar);
end;

procedure TfrmUtils.LigarCompressorTanque();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitCompTanqueOut, ligar);
end;

procedure TfrmUtils.DesligarCompressorTanque();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitCompTanqueOut, desligar);
end;

procedure TfrmUtils.LigarBombaAgua();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitBombaAguaOut, ligar);
end;

procedure TfrmUtils.DesligarBombaAgua();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitBombaAguaOut, desligar);
end;

procedure TfrmUtils.LigarResistenciaCamara3();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitResCamara3Out, ligar);
end;

procedure TfrmUtils.DesligarResistenciaCamara3();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitResCamara3Out, desligar);
end;

procedure TfrmUtils.LigarResistenciaCamara2();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitResCamara2Out, ligar);
end;

procedure TfrmUtils.DesligarResistenciaCamara2();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitResCamara2Out, desligar);
end;

procedure TfrmUtils.LigarResistenciaTanque();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitResTanqueOut, ligar);
end;

procedure TfrmUtils.DesligarResistenciaTanque();
begin
        cbDBitOut (boardNum, FirstPortA, 8+bitResTanqueOut, desligar);
end;

function TfrmUtils.LerChaveEmergencia(): Integer;
var bitValue: Integer;
    iErr: Integer;
    dataValue: Word;
begin
        bitValue := -1;
        iErr := cbDBitIn (boardNum, FirstPortA, 16+bitChEmergenciaIn, bitValue);
        iErr := cbDIn (boardNum, FirstPortCL, dataValue);
        LerChaveEmergencia := bitValue;

end;

function TfrmUtils.LerPorta(): Integer;
var bitValue: Integer;
    iErr: Integer;
begin
        bitValue := -1;
        iErr := cbDBitIn (boardNum, FirstPortCL, bitPortaIn, bitValue);
        LerPorta := bitValue;
end;

function TfrmUtils.LerPressaoCompressor(): Integer;
var bitValue: Integer;
    iErr: Integer;
begin
        bitValue := -1;
        iErr := cbDBitIn (boardNum, FirstPortCL, bitPressaoCompIn, bitValue);
        LerPressaoCompressor := bitValue;
end;

function TfrmUtils.valueToVoltsStr(dataValue: Word): String;
var strVolts: String;
begin
        strVolts := '';
        valueToVoltsStr := strVolts;
end;

end.
