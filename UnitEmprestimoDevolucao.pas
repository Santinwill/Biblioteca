unit UnitEmprestimoDevolucao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxDBEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxSpinEdit, frxClass, frxDBSet;

type
  TFormBaseEmprestimoDevolucao = class(TFormBase)
    FDQueryidemprestimo: TLargeintField;
    FDQueryidlivro: TLargeintField;
    FDQueryidpessoa: TLargeintField;
    FDQuerydhemprestimo: TSQLTimeStampField;
    FDQuerydhvencimento: TSQLTimeStampField;
    FDQuerydhdevolucao: TSQLTimeStampField;
    FDQuerytitulo: TWideStringField;
    FDQuerynomepessoa: TWideStringField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label3: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label4: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label5: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label6: TLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    ButtonBuscarLivro: TButton;
    ButtonBuscarPessoa: TButton;
    FDQueryLivro: TFDQuery;
    procedure ButtonInserirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonBuscarLivroClick(Sender: TObject);
    procedure ButtonBuscarPessoaClick(Sender: TObject);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure ButtonAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBaseEmprestimoDevolucao: TFormBaseEmprestimoDevolucao;

implementation

{$R *.dfm}

uses UnitLivro, UnitPessoa, UnitPrincipal;

procedure TFormBaseEmprestimoDevolucao.ButtonAlterarClick(Sender: TObject);
begin
//  inherited; nao executa os comandos de heranca, botao com funcao diferente
  if FDQuery.IsEmpty then
  begin
    ShowMessage('Nenhum emprestimo selecionado para devolução');
    Exit;
  end;

  if not FDQuery.FieldByName('DHDEVOLUCAO').IsNull then
  begin
    ShowMessage('Este livro já foi devolvido');
    Exit;
  end;

  if MessageDlg('Deseja devolver este livro agora', mtConfirmation,
     mbYesNo, 0) = mrNo then
  begin
    Exit;
  end;

  FDQuery.Edit;
  FDQuery.FieldByName('DHDEVOLUCAO').AsDateTime := Now;
  FDQuery.Post;

  FDQueryLivro.Close;
  FDQueryLivro.ParamByName('IDLIVRO').AsInteger
  := FDQuery.FieldByName('IDLIVRO').AsInteger;
  FDQueryLivro.Open;

  FDQueryLivro.Edit;
  FDQueryLivro.FieldByName('EMPRESTADO').AsInteger :=  0;
  FDQueryLivro.Post;

  ShowMessage('Devolução realizada com sucesso!');
end;

procedure TFormBaseEmprestimoDevolucao.ButtonBuscarLivroClick(Sender: TObject);
var
  form: TFormLivro;
begin
  form := TFormLivro.Create(Owner);
  form.ButtonSelecionar.Visible := True;
  form.ShowModal;
  if form.ModalResult = mrOk then
  begin
    FDQuery.FieldByName('IDLIVRO').AsInteger
    := form.FDQuery.FieldByName('IDLIVRO').AsInteger;
  end;
  form.Free;
end;

procedure TFormBaseEmprestimoDevolucao.ButtonBuscarPessoaClick(Sender: TObject);
var
  form: TFormPessoa;
begin
  form := TFormPessoa.Create(Owner);
  form.ButtonSelecionar.Visible := True;
  form.ShowModal;
  if form.ModalResult = mrOk then
  begin
    FDQuery.FieldByName('IDPESSOA').AsInteger
    := form.FDQuery.FieldByName('IDPESSOA').AsInteger;
  end;
  form.Free;
end;

procedure TFormBaseEmprestimoDevolucao.ButtonInserirClick(Sender: TObject);
begin
  inherited;
  FDQuery.FieldByName('DHEMPRESTIMO').AsDateTime := Now;
  FDQuery.FieldByName('DHVENCIMENTO').AsDateTime := Date + 7;
end;

procedure TFormBaseEmprestimoDevolucao.ButtonSalvarClick(Sender: TObject);
begin
  if (FDQuery.FieldByName('IDLIVRO').AsInteger = 0)
  or (FDQuery.FieldByName('IDPESSOA').AsInteger = 0) then
  begin
    ShowMessage('Campo obrigatório vazio!');
    Exit;
  end;
  FDQueryLivro.Close;
  FDQueryLivro.ParamByName('IDLIVRO').AsInteger
  := FDQuery.FieldByName('IDLIVRO').AsInteger;
  FDQueryLivro.Open;
  if FDQueryLivro.FieldByName('EMPRESTADO').AsInteger = 1 then
  begin
    ShowMessage('Este Livro já esta emprestado!');
    Exit;
  end;
  FDQueryLivro.Edit;
  FDQueryLivro.FieldByName('EMPRESTADO').AsInteger := 1;
  FDQueryLivro.Post;
  inherited;
end;

procedure TFormBaseEmprestimoDevolucao.FormCreate(Sender: TObject);
begin
  BASE_CAMPOBUSCA := 'PESSOA.NOMEPESSOA';
  inherited;
end;

end.
