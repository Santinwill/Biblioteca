program Biblioteca;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitBase in 'UnitBase.pas' {FormBase},
  UnitEditora in 'UnitEditora.pas' {FormEditora},
  UnitAutor in 'UnitAutor.pas' {FormAutor},
  UnitCategotia in 'UnitCategotia.pas' {FormCategoria},
  UnitLivro in 'UnitLivro.pas' {FormLivro},
  UnitPessoa in 'UnitPessoa.pas' {FormPessoa},
  UnitEmprestimoDevolucao in 'UnitEmprestimoDevolucao.pas' {FormBaseEmprestimoDevolucao},
  UnitBaseRel in 'UnitBaseRel.pas' {FormBaseRel},
  UnitRelLivrosCategoria in 'UnitRelLivrosCategoria.pas' {FormRelLivrosCategoria},
  UnitRelLivrosPessoa in 'UnitRelLivrosPessoa.pas' {FormRelLivrosPessoa},
  UnitRelEmprestimoPendente in 'UnitRelEmprestimoPendente.pas' {FormRelEmprestimoPendente},
  UnitLogin in 'UnitLogin.pas' {FormLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
