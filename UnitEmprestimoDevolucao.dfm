inherited FormBaseEmprestimoDevolucao: TFormBaseEmprestimoDevolucao
  Caption = 'Empr'#233'stimos e Devolu'#231#245'es'
  ExplicitWidth = 750
  ExplicitHeight = 499
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    inherited TabSheetConsulta: TTabSheet
      inherited Panel2: TPanel
        inherited ButtonAlterar: TButton
          Caption = 'Devolver'
        end
        inherited ButtonExcluir: TButton
          Visible = False
        end
      end
      inherited DBGrid1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'idemprestimo'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomepessoa'
            Width = 161
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'titulo'
            Width = 131
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idlivro'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idpessoa'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'dhemprestimo'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dhvencimento'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dhdevolucao'
            Width = 124
            Visible = True
          end>
      end
    end
    inherited TabSheetCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 16
        Width = 81
        Height = 13
        Caption = 'C'#243'd. Emprestimo'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 56
        Width = 59
        Height = 13
        Caption = 'C'#243'digo Livro'
        FocusControl = cxDBSpinEdit2
      end
      object Label3: TLabel [2]
        Left = 16
        Top = 96
        Width = 70
        Height = 13
        Caption = 'C'#243'digo Pessoa'
        FocusControl = cxDBSpinEdit3
      end
      object Label4: TLabel [3]
        Left = 16
        Top = 136
        Width = 116
        Height = 13
        Caption = 'Data e Hora Emprestimo'
        FocusControl = cxDBDateEdit1
      end
      object Label5: TLabel [4]
        Left = 16
        Top = 176
        Width = 81
        Height = 13
        Caption = 'Data Vencimento'
        FocusControl = cxDBDateEdit2
      end
      object Label6: TLabel [5]
        Left = 16
        Top = 216
        Width = 111
        Height = 13
        Caption = 'Data e Hora Devolucao'
        FocusControl = cxDBDateEdit3
      end
      object Label7: TLabel [6]
        Left = 168
        Top = 56
        Width = 67
        Height = 13
        Caption = 'T'#237'tulo do Livro'
        FocusControl = cxDBTextEdit1
      end
      object Label8: TLabel [7]
        Left = 168
        Top = 96
        Width = 79
        Height = 13
        Caption = 'Nome da Pessoa'
        FocusControl = cxDBTextEdit2
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'idemprestimo'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        Properties.SpinButtons.Visible = False
        Style.Color = clSilver
        TabOrder = 1
        Width = 133
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'idlivro'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        Properties.SpinButtons.Visible = False
        Style.Color = clSilver
        TabOrder = 2
        Width = 133
      end
      object cxDBSpinEdit3: TcxDBSpinEdit
        Left = 16
        Top = 112
        DataBinding.DataField = 'idpessoa'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        Properties.SpinButtons.Visible = False
        Style.Color = clSilver
        TabOrder = 3
        Width = 133
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 16
        Top = 152
        DataBinding.DataField = 'dhemprestimo'
        DataBinding.DataSource = DataSource
        Properties.DateButtons = [btnClear]
        Properties.ReadOnly = True
        Style.Color = clSilver
        TabOrder = 4
        Width = 133
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 16
        Top = 192
        DataBinding.DataField = 'dhvencimento'
        DataBinding.DataSource = DataSource
        Properties.DateButtons = [btnClear]
        Properties.ReadOnly = True
        Style.Color = clSilver
        TabOrder = 5
        Width = 133
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 16
        Top = 232
        DataBinding.DataField = 'dhdevolucao'
        DataBinding.DataSource = DataSource
        Properties.DateButtons = [btnClear]
        Properties.ReadOnly = True
        Style.Color = clSilver
        TabOrder = 6
        Width = 133
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 168
        Top = 72
        DataBinding.DataField = 'titulo'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        Style.Color = clSilver
        TabOrder = 7
        Width = 280
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 168
        Top = 112
        DataBinding.DataField = 'nomepessoa'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        Style.Color = clSilver
        TabOrder = 8
        Width = 280
      end
      object ButtonBuscarLivro: TButton
        Left = 464
        Top = 70
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 9
        OnClick = ButtonBuscarLivroClick
      end
      object ButtonBuscarPessoa: TButton
        Left = 464
        Top = 110
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 10
        OnClick = ButtonBuscarPessoaClick
      end
    end
  end
  inherited FDQuery: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT EMPRESTIMO.* '
      '     , LIVRO.TITULO'
      '     , PESSOA.NOMEPESSOA'
      '  FROM EMPRESTIMO'
      '  JOIN LIVRO'
      '    ON LIVRO.IDLIVRO = EMPRESTIMO.IDLIVRO'
      '  JOIN PESSOA'
      '    ON PESSOA.IDPESSOA = EMPRESTIMO.IDPESSOA'
      '     ')
    Left = 228
    Top = 200
    object FDQueryidemprestimo: TLargeintField
      DisplayLabel = 'C'#243'd. Emprestimo'
      FieldName = 'idemprestimo'
      Origin = 'idemprestimo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQueryidlivro: TLargeintField
      DisplayLabel = 'C'#243'digo Livro'
      FieldName = 'idlivro'
      Origin = 'idlivro'
    end
    object FDQueryidpessoa: TLargeintField
      DisplayLabel = 'C'#243'digo Pessoa'
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object FDQuerydhemprestimo: TSQLTimeStampField
      DisplayLabel = 'Data e Hora Emprestimo'
      FieldName = 'dhemprestimo'
      Origin = 'dhemprestimo'
    end
    object FDQuerydhvencimento: TSQLTimeStampField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'dhvencimento'
      Origin = 'dhvencimento'
    end
    object FDQuerydhdevolucao: TSQLTimeStampField
      DisplayLabel = 'Data e Hora Devolucao'
      FieldName = 'dhdevolucao'
      Origin = 'dhdevolucao'
    end
    object FDQuerytitulo: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'T'#237'tulo do Livro'
      FieldName = 'titulo'
      Origin = 'titulo'
      Size = 60
    end
    object FDQuerynomepessoa: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome da Pessoa'
      FieldName = 'nomepessoa'
      Origin = 'nomepessoa'
      Size = 60
    end
  end
  inherited DataSource: TDataSource
    Left = 228
    Top = 248
  end
  inherited frxReport: TfrxReport
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    inherited Page1: TfrxReportPage
      inherited ReportTitle1: TfrxReportTitle
        inherited Memo1: TfrxMemoView
          Memo.UTF8W = (
            'LISTA DE EMPRESTIMO')
        end
        inherited Line1: TfrxLineView
          Top = 30.236240000000000000
        end
        object Memo4: TfrxMemoView
          Top = 34.015770000000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 37.795300000000000000
          Top = 34.015770000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'T'#237'tulo do Livro')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 196.535560000000000000
          Top = 34.015770000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome da Pessoa')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 400.630180000000000000
          Top = 34.015770000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data/Hora Eptmo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 529.134200000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Prev Dev')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 627.401980000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Dev')
          ParentFont = False
        end
      end
      inherited MasterData1: TfrxMasterData
        object frxDBDataset1idemprestimo: TfrxMemoView
          Top = 3.779530000000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          DataField = 'idemprestimo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."idemprestimo"]')
          ParentFont = False
        end
        object frxDBDataset1titulo: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 158.740162360000000000
          Height = 18.897650000000000000
          DataField = 'titulo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."titulo"]')
        end
        object frxDBDataset1nomepessoa: TfrxMemoView
          Left = 196.535560000000000000
          Top = 3.779530000000000000
          Width = 204.094497950000000000
          Height = 18.897650000000000000
          DataField = 'nomepessoa'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."nomepessoa"]')
        end
        object frxDBDataset1dhemprestimo: TfrxMemoView
          Left = 400.630180000000000000
          Top = 3.779530000000000000
          Width = 128.503937010000000000
          Height = 18.897650000000000000
          DataField = 'dhemprestimo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."dhemprestimo"]')
        end
        object frxDBDataset1dhvencimento: TfrxMemoView
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataField = 'dhvencimento'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."dhvencimento"]')
        end
        object frxDBDataset1dhdevolucao: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.779530000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataField = 'dhdevolucao'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."dhdevolucao"]')
        end
      end
    end
  end
  object FDQueryLivro: TFDQuery
    Connection = FormPrincipal.FDConnection
    SQL.Strings = (
      'SELECT LIVRO.*'
      '  FROM LIVRO'
      ' WHERE IDLIVRO = :IDLIVRO')
    Left = 368
    Top = 200
    ParamData = <
      item
        Name = 'IDLIVRO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
