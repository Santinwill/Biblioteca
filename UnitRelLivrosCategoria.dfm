inherited FormRelLivrosCategoria: TFormRelLivrosCategoria
  Caption = 'Livros por Categoria'
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
            'LISTA DE LIVROS POR CATEGORIA')
        end
        inherited Line1: TfrxLineView
          Top = 30.236240000000000000
        end
        object Memo4: TfrxMemoView
          Top = 34.015770000000000000
          Width = 37.795300000000000000
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
          Width = 453.543600000000000000
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
          Left = 491.338900000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ano Publ.')
          ParentFont = False
        end
      end
      inherited MasterData1: TfrxMasterData
        Top = 185.196970000000000000
        object frxDBDataset1idlivro: TfrxMemoView
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'idlivro'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."idlivro"]')
        end
        object frxDBDataset1titulo: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          DataField = 'titulo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."titulo"]')
        end
        object frxDBDataset1anopublicacao: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'anopublicacao'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."anopublicacao"]')
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
        Condition = 'frxDBDataset1."nomecategoria"'
        object frxDBDataset1nomecategoria: TfrxMemoView
          Width = 714.331096770000000000
          Height = 18.897650000000000000
          DataField = 'nomecategoria'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."nomecategoria"]')
          ParentFont = False
        end
      end
    end
  end
  inherited FDQuery: TFDQuery
    SQL.Strings = (
      '  SELECT * '
      '    FROM LIVRO'
      '    JOIN CATEGORIA'
      '      ON CATEGORIA.IDCATEGORIA = LIVRO.IDCATEGORIA'
      'ORDER BY CATEGORIA.NOMECATEGORIA'
      '       , LIVRO.TITULO')
  end
end
