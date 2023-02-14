unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormLogin = class(TForm)
    Label1: TLabel;
    EditEmail: TEdit;
    EditSenha: TEdit;
    Label2: TLabel;
    ButtonEntrar: TButton;
    ButtonCancelar: TButton;
    FDQueryLogin: TFDQuery;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses UnitPrincipal;

procedure TFormLogin.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormLogin.ButtonEntrarClick(Sender: TObject);
begin
  FDQueryLogin.Close;
  FDQueryLogin.ParamByName('EMAIL').AsString := EditEmail.Text;
  FDQueryLogin.ParamByName('SENHA').AsString := EditSenha.Text;
  FDQueryLogin.Open;
  if FDQueryLogin.IsEmpty = True then
  begin
    ShowMessage('Usuario ou senha invalidos.');
    Exit;
  end;
  ModalResult := mrOk;
end;

end.
