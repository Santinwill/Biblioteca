unit UnitBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TFormBase = class(TForm)
    PageControl: TPageControl;
    TabSheetConsulta: TTabSheet;
    TabSheetCadastro: TTabSheet;
    Panel2: TPanel;
    ButtonInserir: TButton;
    ButtonAlterar: TButton;
    ButtonExcluir: TButton;
    ButtonImprimir: TButton;
    ButtonSelecionar: TButton;
    ButtonFechar: TButton;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    EditBusca: TEdit;
    ButtonBusca: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    ButtonSalvar: TButton;
    ButtonCancelar: TButton;
    ButtonFecharCadastro: TButton;
    FDQuery: TFDQuery;
    DataSource: TDataSource;
    frxReport: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    procedure ButtonFecharClick(Sender: TObject);
    procedure ButtonInserirClick(Sender: TObject);
    procedure ButtonAlterarClick(Sender: TObject);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure ButtonCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonExcluirClick(Sender: TObject);
    procedure ButtonBuscaClick(Sender: TObject);
    procedure ButtonSelecionarClick(Sender: TObject);
    procedure ButtonImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirTab(n: Integer);
    procedure Buscar;
  public
    { Public declarations }
    BASE_SQL: string;
    BASE_CAMPOBUSCA: string;
  end;

var
  FormBase: TFormBase;

implementation

{$R *.dfm}

uses UnitPrincipal;

procedure TFormBase.Buscar;
var
  SQL: string;
begin
  SQL := BASE_SQL;

  if EditBusca.Text <> '' then
  begin
    SQL := SQL + ' WHERE UPPER(%S) LIKE UPPER(%S)';
    SQL := Format(SQL, [BASE_CAMPOBUSCA,
           QuotedStr('%' + EditBusca.Text + '%')]);
  end;

  SQL := SQL + ' ORDER BY ' + BASE_CAMPOBUSCA;

  //FDQuery.Active := False;
  FDQuery.Close;  //igual ao anterior
  FDQuery.SQL.Text := SQL;
  FDQuery.Open;
end;

procedure TFormBase.ButtonAlterarClick(Sender: TObject);
begin
  if FDQuery.IsEmpty then //se retorna true esta vazia
    Exit;   //interrompe o processamento de um metodo

  ExibirTab(1);
  FDQuery.Edit; //coloca em modo de edicao
end;

procedure TFormBase.ButtonBuscaClick(Sender: TObject);
begin
  Buscar;
end;

procedure TFormBase.ButtonCancelarClick(Sender: TObject);
begin
  ExibirTab(0);
  FDQuery.Cancel;
end;

procedure TFormBase.ButtonExcluirClick(Sender: TObject);
begin
  if FDQuery.IsEmpty then
    Exit;

  if MessageDlg('Deseja Excluir?', mtConfirmation, mbYesNo, 0) = mrYes then
    FDQuery.Delete;
end;

procedure TFormBase.ButtonFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormBase.ButtonImprimirClick(Sender: TObject);
begin
  frxReport.ShowReport();
end;

procedure TFormBase.ButtonInserirClick(Sender: TObject);
begin
  ExibirTab(1);
  FDQuery.Append; //insere no final
 // FDQuery.Insert; insere abaixo da linha selecionada
end;

procedure TFormBase.ButtonSalvarClick(Sender: TObject);
begin
  FDQuery.Post;
  ExibirTab(0);
end;

procedure TFormBase.ButtonSelecionarClick(Sender: TObject);
begin
  if FDQuery.IsEmpty then
    Exit;

  ModalResult := mrOk;
end;

procedure TFormBase.ExibirTab(n: Integer);
begin
  if n = 1 then
  begin
    TabSheetConsulta.TabVisible := False;
    TabSheetCadastro.TabVisible := True;
  end
  else
  begin
    TabSheetConsulta.TabVisible := True;
    TabSheetCadastro.TabVisible := False;
    Buscar;
  end;
  PageControl.ActivePageIndex := n;
end;

procedure TFormBase.FormCreate(Sender: TObject);
begin
  BASE_SQL := FDQuery.SQL.Text;
  ExibirTab(0);
end;

end.
