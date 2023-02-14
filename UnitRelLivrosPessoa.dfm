inherited FormRelLivrosPessoa: TFormRelLivrosPessoa
  Caption = 'Livros por Pessoa'
  ExplicitWidth = 369
  ExplicitHeight = 120
  PixelsPerInch = 96
  TextHeight = 13
  object EditCodigo: TEdit [1]
    Left = 8
    Top = 14
    Width = 41
    Height = 21
    Color = clSilver
    ReadOnly = True
    TabOrder = 1
  end
  object EditNome: TEdit [2]
    Left = 55
    Top = 14
    Width = 215
    Height = 21
    Color = clSilver
    ReadOnly = True
    TabOrder = 2
  end
  object ButtonBuscar: TButton [3]
    Left = 276
    Top = 12
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 3
    OnClick = ButtonBuscarClick
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
            'LISTA DE LIVROS POR PESSOA')
        end
        inherited Line1: TfrxLineView
          Top = 30.236240000000000000
        end
        object Memo4: TfrxMemoView
          Left = 26.456710000000000000
          Top = 34.015770000000000000
          Width = 260.787570000000000000
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
        object Memo5: TfrxMemoView
          Left = 287.244280000000000000
          Top = 34.015770000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Empr'#233'stimo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 415.748300000000000000
          Top = 34.015770000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 529.134200000000000000
          Top = 34.015770000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Devolu'#231#227'o')
          ParentFont = False
        end
      end
      inherited MasterData1: TfrxMasterData
        Top = 185.196970000000000000
        object frxDBDataset1titulo: TfrxMemoView
          Left = 26.456710000000000000
          Top = 3.779530000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DataField = 'titulo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."titulo"]')
          ParentFont = False
        end
        object frxDBDataset1dhemprestimo: TfrxMemoView
          Left = 287.244280000000000000
          Top = 3.779530000000000000
          Width = 128.503937007874000000
          Height = 18.897650000000000000
          DataField = 'dhemprestimo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."dhemprestimo"]')
          ParentFont = False
        end
        object frxDBDataset1dhvencimento: TfrxMemoView
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 113.385826771653500000
          Height = 18.897650000000000000
          DataField = 'dhvencimento'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."dhvencimento"]')
          ParentFont = False
        end
        object frxDBDataset1dhdevolucao: TfrxMemoView
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 113.385826771653500000
          Height = 18.897650000000000000
          DataField = 'dhdevolucao'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."dhdevolucao"]')
          ParentFont = False
        end
      end
      inherited PageFooter1: TfrxPageFooter
        Top = 268.346630000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."nomepessoa"'
        object frxDBDataset1nomepessoa: TfrxMemoView
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          DataField = 'nomepessoa'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."nomepessoa"]')
          ParentFont = False
        end
      end
    end
  end
  inherited FDQuery: TFDQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM EMPRESTIMO'
      '  JOIN PESSOA'
      '    ON PESSOA.IDPESSOA = EMPRESTIMO.IDPESSOA'
      '  JOIN LIVRO'
      '    ON LIVRO.IDLIVRO = EMPRESTIMO.IDLIVRO'
      ' WHERE EMPRESTIMO.IDPESSOA = :IDPESSOA')
    ParamData = <
      item
        Name = 'IDPESSOA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
