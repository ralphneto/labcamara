unit uCadEmpresas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, constantes;

type
  TfrmCadEmpresas = class(TForm)
    lstEmpresas: TListBox;
    edEmpresa: TEdit;
    btnAdd: TButton;
    btnExcluir: TButton;
    btnLimpar: TButton;
    btnPesquisar: TButton;
    lbEmpresa: TLabel;
    lbEmpresas: TLabel;
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
  frmCadEmpresas: TfrmCadEmpresas;

implementation

{$R *.DFM}

procedure TfrmCadEmpresas.FormCreate(Sender: TObject);
begin
        lstEmpresas.Items.LoadFromFile(ExtractFilePath(Application.ExeName) + fileEmpresas);
end;

procedure TfrmCadEmpresas.btnAddClick(Sender: TObject);
var i : Integer;
begin
        if edEmpresa.Text = '' then
        begin
                ShowMessage('Campo empresa está vazio.');
                Exit;
        end;

        if strLen(PChar(edEmpresa.Text)) <  3 then
        begin
                ShowMessage('Campo empresa tem menos de 3 caracteres.');
                Exit;
        end;

        lstEmpresas.Items.Add(edEmpresa.Text);
        for i := lstEmpresas.Items.Count-1 downto 1 do
        begin
                lstEmpresas.ItemIndex := i;
                if (lstEmpresas.Items[lstEmpresas.ItemIndex] < lstEmpresas.Items[lstEmpresas.ItemIndex-1]) then
                        lstEmpresas.Items.Move(i-1, i)
                else
                        break;
        end;
        lstEmpresas.Items.SaveToFile(ExtractFilePath(Application.ExeName) + fileEmpresas);
        edEmpresa.Text := '';
end;

procedure TfrmCadEmpresas.btnFecharClick(Sender: TObject);
begin
        Close();
end;

procedure TfrmCadEmpresas.btnLimparClick(Sender: TObject);
begin
        if Application.MessageBox(PChar('Deseja realmente limpar lista de Empresas: '), PChar('Limpar'), mb_yesno + mb_iconquestion) = id_yes then
        begin
                lstEmpresas.Items.SaveToFile(ExtractFilePath(Application.ExeName) + fileEmpresas + '.bkp');
                lstEmpresas.Items.Clear;
                lstEmpresas.Items.SaveToFile(ExtractFilePath(Application.ExeName) + fileEmpresas);
        end;
end;

procedure TfrmCadEmpresas.btnExcluirClick(Sender: TObject);
begin
        if Application.MessageBox(PChar('Deseja Exluir: ' + lstEmpresas.Items[lstEmpresas.ItemIndex]), PChar('Excluir'), mb_yesno + mb_iconquestion) = id_yes then
        begin
                lstEmpresas.Items.Delete(lstEmpresas.ItemIndex);
                lstEmpresas.Items.SaveToFile(ExtractFilePath(Application.ExeName) + fileEmpresas);
        end;
end;

end.
