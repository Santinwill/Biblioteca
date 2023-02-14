object FormLogin: TFormLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 232
  ClientWidth = 278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 37
    Width = 32
    Height = 13
    Caption = 'E-mail:'
  end
  object Label2: TLabel
    Left = 64
    Top = 93
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object EditEmail: TEdit
    Left = 64
    Top = 56
    Width = 156
    Height = 21
    TabOrder = 0
  end
  object EditSenha: TEdit
    Left = 64
    Top = 112
    Width = 156
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object ButtonEntrar: TButton
    Left = 64
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Entrar'
    Default = True
    TabOrder = 2
    OnClick = ButtonEntrarClick
  end
  object ButtonCancelar: TButton
    Left = 145
    Top = 152
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = ButtonCancelarClick
  end
  object FDQueryLogin: TFDQuery
    Active = True
    Connection = FormPrincipal.FDConnection
    SQL.Strings = (
      'SELECT * '
      '  FROM USUARIO'
      ' WHERE EMAIL = :EMAIL '
      '   AND SENHA = :SENHA')
    Left = 16
    Top = 24
    ParamData = <
      item
        Name = 'EMAIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
