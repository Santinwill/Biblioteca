unit UnitLivro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxMemo, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  frxClass, frxDBSet;

type
  TFormLivro = class(TFormBase)
    FDQueryidlivro: TLargeintField;
    FDQuerytitulo: TWideStringField;
    FDQueryanopublicacao: TIntegerField;
    FDQuerynumeropaginas: TIntegerField;
    FDQuerynumeroedicao: TIntegerField;
    FDQueryemprestado: TIntegerField;
    FDQueryresumo: TWideMemoField;
    FDQueryideditora: TLargeintField;
    FDQueryidcategoria: TLargeintField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label4: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label5: TLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    Label7: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label8: TLabel;
    cxDBSpinEdit6: TcxDBSpinEdit;
    Label9: TLabel;
    cxDBSpinEdit7: TcxDBSpinEdit;
    FDQuerynomeeditora: TWideStringField;
    FDQuerynomecategoria: TWideStringField;
    FDQuerynomeemprestado: TWideStringField;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    ButtonBuscarEditora: TButton;
    ButtonBuscarCategoria: TButton;
    Label11: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    PanelAutores: TPanel;
    DBGrid2: TDBGrid;
    ButtonAdicionarAutor: TButton;
    ButtonExcluirAutor: TButton;
    FDQueryAutor: TFDQuery;
    DataSourceAutor: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure ButtonBuscarEditoraClick(Sender: TObject);
    procedure ButtonBuscarCategoriaClick(Sender: TObject);
    procedure ButtonInserirClick(Sender: TObject);
    procedure ButtonAdicionarAutorClick(Sender: TObject);
    procedure ButtonExcluirAutorClick(Sender: TObject);
    procedure ButtonAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLivro: TFormLivro;

implementation

{$R *.dfm}

uses UnitAutor, UnitCategotia, UnitEditora, UnitPrincipal;

procedure TFormLivro.ButtonAdicionarAutorClick(Sender: TObject);
var
  form: TFormAutor;
begin
  form := TFormAutor.Create(Self);
  form.ButtonSelecionar.Visible := True;
  form.ShowModal;
  if form.ModalResult = mrOk then
  begin
    FDQueryAutor.Append;
    FDQueryAutor.FieldByName('IDAUTOR').AsInteger
    := form.FDQuery.FieldByName('IDAUTOR').AsInteger;
    FDQueryAutor.Post;
  end;
  FDQueryAutor.Refresh;
  form.Free;
end;

procedure TFormLivro.ButtonAlterarClick(Sender: TObject);
begin
  inherited;
  PanelAutores.Visible := True;
end;

procedure TFormLivro.ButtonBuscarCategoriaClick(Sender: TObject);
var
  form: TFormCategoria;
begin
  form := TFormCategoria.Create(Self);
  form.ButtonSelecionar.Visible := True;
  form.ShowModal;
  if form.ModalResult = mrOk then
  begin
    FDQuery.FieldByName('IDCATEGORIA').AsInteger
    := form.FDQuery.FieldByName('IDCATEGORIA').AsInteger;
  end;
  form.Free;
end;

procedure TFormLivro.ButtonBuscarEditoraClick(Sender: TObject);
var
  form: TFormEditora;
begin
  form := TFormEditora.Create(Self);
  form.ButtonSelecionar.Visible := True;
  form.ShowModal;
  if form.ModalResult = mrOk then
  begin
    FDQuery.FieldByName('IDEDITORA').AsInteger
    := form.FDQuery.FieldByName('IDEDITORA').AsInteger;
  end;
  form.Free;
end;

procedure TFormLivro.ButtonExcluirAutorClick(Sender: TObject);
begin
  if FDQueryAutor.IsEmpty then
    Exit;

  if MessageDlg('Deseja Excluir?', mtConfirmation, mbYesNo, 0) = mrYes then
    FDQueryAutor.Delete;
end;

procedure TFormLivro.ButtonInserirClick(Sender: TObject);
begin
  inherited;
  FDQuery.FieldByName('EMPRESTADO').AsInteger := 0;
  PanelAutores.Visible := False;
end;

procedure TFormLivro.FormCreate(Sender: TObject);
begin
  BASE_CAMPOBUSCA := 'LIVRO.TITULO';
  inherited;
end;

end.
