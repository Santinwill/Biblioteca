object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Biblioteca'
  ClientHeight = 478
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelUsuario: TLabel
    Left = 0
    Top = 0
    Width = 715
    Height = 13
    Align = alTop
    Alignment = taRightJustify
    ExplicitLeft = 712
    ExplicitWidth = 3
  end
  object MainMenu: TMainMenu
    Left = 32
    Top = 40
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Pessoas1: TMenuItem
        Caption = 'Pessoa'
        OnClick = Pessoas1Click
      end
      object Livro1: TMenuItem
        Caption = 'Livro'
        OnClick = Livro1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Autor1: TMenuItem
        Caption = 'Autor'
        OnClick = Autor1Click
      end
      object Categoria1: TMenuItem
        Caption = 'Categoria'
        OnClick = Categoria1Click
      end
      object Editora1: TMenuItem
        Caption = 'Editora'
        OnClick = Editora1Click
      end
    end
    object Processo1: TMenuItem
      Caption = 'Opera'#231#227'o'
      object EmprstimoeDevoluo1: TMenuItem
        Caption = 'Empr'#233'stimo e Devolu'#231#227'o'
        OnClick = EmprstimoeDevoluo1Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      object LivrosPorCategoria1: TMenuItem
        Caption = 'Livros Por Categoria'
        OnClick = LivrosPorCategoria1Click
      end
      object LivrosporPessoa1: TMenuItem
        Caption = 'Livros por Pessoa'
        OnClick = LivrosporPessoa1Click
      end
      object EmprestimosPendentes1: TMenuItem
        Caption = 'Emprestimos Pendentes'
        OnClick = EmprestimosPendentes1Click
      end
    end
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=BIBLIOTECA'
      'User_Name=postgres'
      'Server=localhost'
      'Password=postgres'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 264
    Top = 200
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 
      'C:\Users\Estagiario02\Desktop\ProjetosDelphi\Biblioteca\psqlodbc' +
      '_12_01_0000-x64\psqlodbc\libpq.dll'
    Left = 424
    Top = 208
  end
end
