inherited FormRelEmprestimoPendente: TFormRelEmprestimoPendente
  Caption = 'Emprestimos Pendentes'
  ExplicitWidth = 369
  ExplicitHeight = 120
  PixelsPerInch = 96
  TextHeight = 13
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
            'LISTA DE EMPRESTIMOS PENDENTES')
        end
        inherited Line1: TfrxLineView
          Top = 30.236240000000000000
        end
        object Memo4: TfrxMemoView
          Top = 34.015770000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'C'#243'd.')
        end
        object Memo5: TfrxMemoView
          Left = 37.795300000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'T'#237'tulo do Livro')
        end
        object Memo6: TfrxMemoView
          Left = 238.110390000000000000
          Top = 34.015770000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Nome da Pessoa')
        end
        object Memo7: TfrxMemoView
          Left = 510.236550000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Emprestimo')
        end
        object Memo8: TfrxMemoView
          Left = 638.740570000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Vencimento')
        end
      end
      inherited MasterData1: TfrxMasterData
        object frxDBDataset1idlivro: TfrxMemoView
          Top = 3.779530000000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          DataField = 'idemprestimo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."idemprestimo"]')
        end
        object frxDBDataset1titulo: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'titulo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."titulo"]')
        end
        object frxDBDataset1dhemprestimo: TfrxMemoView
          Left = 510.236550000000000000
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
          Left = 638.740570000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'dhvencimento'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."dhvencimento"]')
        end
        object frxDBDataset1nomepessoa: TfrxMemoView
          Left = 238.110390000000000000
          Top = 3.779530000000000000
          Width = 272.126086770000000000
          Height = 18.897650000000000000
          DataField = 'nomepessoa'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."nomepessoa"]')
        end
      end
    end
  end
  inherited FDQuery: TFDQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM LIVRO'
      '  JOIN EMPRESTIMO'
      '    ON EMPRESTIMO.IDLIVRO = LIVRO.IDLIVRO'
      '  JOIN PESSOA'
      '    ON EMPRESTIMO.IDPESSOA = PESSOA.IDPESSOA'
      ' WHERE LIVRO.EMPRESTADO = 1'
      '   AND EMPRESTIMO.DHDEVOLUCAO IS NULL')
  end
end
