unit UnitRelLivrosPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBaseRel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormRelLivrosPessoa = class(TFormBaseRel)
    EditCodigo: TEdit;
    EditNome: TEdit;
    ButtonBuscar: TButton;
    procedure ButtonBuscarClick(Sender: TObject);
    procedure ButtonImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelLivrosPessoa: TFormRelLivrosPessoa;

implementation

{$R *.dfm}

uses UnitPessoa;

procedure TFormRelLivrosPessoa.ButtonBuscarClick(Sender: TObject);
var
  form: TFormPessoa;
begin
  form := TFormPessoa.Create(Owner);
  form.ButtonSelecionar.Visible := True;
  form.ShowModal;
  if form.ModalResult = mrOk then
  begin
    EditCodigo.Text := form.FDQuery.FieldByName('IDPESSOA').AsString;
    EditNome.Text := form.FDQuery.FieldByName('NOMEPESSOA').AsString;
  end;
  form.Free;
end;

procedure TFormRelLivrosPessoa.ButtonImprimirClick(Sender: TObject);
begin
  if EditCodigo.Text = '' then
  begin
    ShowMessage('Selecione uma pessoa.');
    Exit;
  end;
  FDQuery.Close;
  FDQuery.ParamByName('IDPESSOA').AsInteger := StrToInt(EditCodigo.Text);
  inherited;
end;

end.
