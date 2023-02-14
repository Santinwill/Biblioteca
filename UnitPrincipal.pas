unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TFormPrincipal = class(TForm)
    MainMenu: TMainMenu;
    Cadastro1: TMenuItem;
    Processo1: TMenuItem;
    Relatrio1: TMenuItem;
    Pessoas1: TMenuItem;
    Livro1: TMenuItem;
    N1: TMenuItem;
    Autor1: TMenuItem;
    Categoria1: TMenuItem;
    Editora1: TMenuItem;
    EmprstimoeDevoluo1: TMenuItem;
    FDConnection: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    LivrosPorCategoria1: TMenuItem;
    LivrosporPessoa1: TMenuItem;
    EmprestimosPendentes1: TMenuItem;
    LabelUsuario: TLabel;
    procedure Editora1Click(Sender: TObject);
    procedure Autor1Click(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure Pessoas1Click(Sender: TObject);
    procedure Livro1Click(Sender: TObject);
    procedure EmprstimoeDevoluo1Click(Sender: TObject);
    procedure LivrosPorCategoria1Click(Sender: TObject);
    procedure LivrosporPessoa1Click(Sender: TObject);
    procedure EmprestimosPendentes1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UnitAutor, UnitBase, UnitEditora, UnitCategotia, UnitLivro, UnitPessoa,
  UnitEmprestimoDevolucao, UnitBaseRel, UnitRelLivrosCategoria,
  UnitRelLivrosPessoa, UnitRelEmprestimoPendente, UnitLogin;

procedure TFormPrincipal.Autor1Click(Sender: TObject);
var
  form: TFormAutor;
begin
  form := TFormAutor.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.Categoria1Click(Sender: TObject);
var
  form: TFormCategoria;
begin
  form:= TFormCategoria.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.Editora1Click(Sender: TObject);
var
  form: TFormEditora;
begin
  form := TFormEditora.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.EmprestimosPendentes1Click(Sender: TObject);
var
  form: TFormRelEmprestimoPendente;
begin
  form := TFormRelEmprestimoPendente.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.EmprstimoeDevoluo1Click(Sender: TObject);
var
  form : TFormBaseEmprestimoDevolucao;
begin
  form := TFormBaseEmprestimoDevolucao.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
var
  FormLogin: TFormLogin;
begin
  FormLogin := TFormLogin.Create(Owner);
  if FormLogin.ShowModal = mrOk then
  begin
    LabelUsuario.Caption :=
    FormLogin.FDQueryLogin.FieldByName('NOMEUSUARIO').AsString;
    FormLogin.Free;
  end
  else
  begin
    Application.Terminate;
  end;

end;

procedure TFormPrincipal.Livro1Click(Sender: TObject);
var
  form: TFormLivro;
begin
  form := TFormLivro.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.LivrosPorCategoria1Click(Sender: TObject);
var
  form: TFormRelLivrosCategoria;
begin
  form := TFormRelLivrosCategoria.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.LivrosporPessoa1Click(Sender: TObject);
var
  form: TFormRelLivrosPessoa;
begin
  form := TFormRelLivrosPessoa.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.Pessoas1Click(Sender: TObject);
var
  form: TFormPessoa;
begin
  form := TFormPessoa.Create(Self);
  form.ShowModal;
  form.Free;
end;

end.
