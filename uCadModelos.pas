unit uCadModelos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, constantes;

type
  TfrmCadModelos = class(TForm)
    lstModelos: TListBox;
    edModelo: TEdit;
    btnAdd: TButton;
    btnExcluir: TButton;
    btnLimpar: TButton;
    lbModelo: TLabel;
    lbModelos: TLabel;
    btnFechar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadModelos: TfrmCadModelos;

implementation

{$R *.DFM}

procedure TfrmCadModelos.FormCreate(Sender: TObject);
begin
        lstModelos.Items.LoadFromFile(ExtractFilePath(Application.ExeName) + fileModelos);
end;

procedure TfrmCadModelos.btnAddClick(Sender: TObject);
var i : Integer;
begin
        if edModelo.Text = '' then
        begin
                ShowMessage('Campo Modelo está vazio.');
                Exit;
        end;

        if strLen(PChar(edModelo.Text)) <  3 then
        begin
                ShowMessage('Campo modelo tem menos de 3 caracteres.');
                Exit;
        end;

        lstModelos.Items.Add(edModelo.Text);
        for i := lstModelos.Items.Count-1 downto 1 do
        begin
                lstModelos.ItemIndex := i;
                if (lstModelos.Items[lstModelos.ItemIndex] < lstModelos.Items[lstModelos.ItemIndex-1]) then
                        lstModelos.Items.Move(i-1, i)
                else
                        break;
        end;
        lstModelos.Items.SaveToFile(ExtractFilePath(Application.ExeName) + fileModelos);
        edModelo.Text := '';
end;

procedure TfrmCadModelos.btnFecharClick(Sender: TObject);
begin
        Close();
end;

procedure TfrmCadModelos.btnLimparClick(Sender: TObject);
begin
        if Application.MessageBox(PChar('Deseja realmente limpar lista de Modelos: '), PChar('Limpar'), mb_yesno + mb_iconquestion) = id_yes then
        begin
                lstModelos.Items.SaveToFile(ExtractFilePath(Application.ExeName) + fileModelos + '.bkp');
                lstModelos.Items.Clear;
                lstModelos.Items.SaveToFile(ExtractFilePath(Application.ExeName) + fileModelos);
        end;
end;

procedure TfrmCadModelos.btnExcluirClick(Sender: TObject);
begin
        if Application.MessageBox(PChar('Deseja Exluir: ' + lstModelos.Items[lstModelos.ItemIndex]), PChar('Excluir'), mb_yesno + mb_iconquestion) = id_yes then
        begin
                lstModelos.Items.Delete(lstModelos.ItemIndex);
                lstModelos.Items.SaveToFile(ExtractFilePath(Application.ExeName) + fileModelos);
        end;
end;

end.
