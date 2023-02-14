inherited FormLivro: TFormLivro
  Caption = 'Livros'
  ClientWidth = 742
  ExplicitWidth = 758
  ExplicitHeight = 499
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 742
    ActivePage = TabSheetCadastro
    ExplicitWidth = 742
    inherited TabSheetConsulta: TTabSheet
      ExplicitWidth = 734
      inherited Panel2: TPanel
        Width = 734
        ExplicitWidth = 734
        inherited ButtonSelecionar: TButton
          Left = 569
          ExplicitLeft = 569
        end
        inherited ButtonFechar: TButton
          Left = 650
          ExplicitLeft = 650
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 734
        Columns = <
          item
            Expanded = False
            FieldName = 'idlivro'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'titulo'
            Width = 153
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'anopublicacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numeropaginas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numeroedicao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'emprestado'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'resumo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ideditora'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idcategoria'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'nomeeditora'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomecategoria'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeemprestado'
            Visible = True
          end>
      end
      inherited Panel1: TPanel
        Width = 734
        ExplicitWidth = 734
        inherited EditBusca: TEdit
          Width = 636
          ExplicitWidth = 636
        end
        inherited ButtonBusca: TButton
          Left = 650
          ExplicitLeft = 650
        end
      end
    end
    inherited TabSheetCadastro: TTabSheet
      ExplicitWidth = 734
      object Label1: TLabel [0]
        Left = 16
        Top = 16
        Width = 59
        Height = 13
        Caption = 'C'#243'digo Livro'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 56
        Width = 26
        Height = 13
        Caption = 'T'#237'tulo'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel [2]
        Left = 16
        Top = 96
        Width = 87
        Height = 13
        Caption = 'Ano da Publica'#231#227'o'
        FocusControl = cxDBSpinEdit2
      end
      object Label4: TLabel [3]
        Left = 16
        Top = 136
        Width = 92
        Height = 13
        Caption = 'N'#250'mero de Paginas'
        FocusControl = cxDBSpinEdit3
      end
      object Label5: TLabel [4]
        Left = 16
        Top = 176
        Width = 86
        Height = 13
        Caption = 'N'#250'mero da Edi'#231#227'o'
        FocusControl = cxDBSpinEdit4
      end
      object Label7: TLabel [5]
        Left = 176
        Top = 16
        Width = 38
        Height = 13
        Caption = 'Resumo'
        FocusControl = cxDBMemo1
      end
      object Label8: TLabel [6]
        Left = 16
        Top = 256
        Width = 85
        Height = 13
        Caption = 'C'#243'digo da Editora'
        FocusControl = cxDBSpinEdit6
      end
      object Label9: TLabel [7]
        Left = 16
        Top = 296
        Width = 98
        Height = 13
        Caption = 'C'#243'digo da Categoria'
        FocusControl = cxDBSpinEdit7
      end
      object Label6: TLabel [8]
        Left = 176
        Top = 256
        Width = 64
        Height = 13
        Caption = 'Nome Editora'
        FocusControl = cxDBTextEdit2
      end
      object Label10: TLabel [9]
        Left = 176
        Top = 296
        Width = 77
        Height = 13
        Caption = 'Nome Categoria'
        FocusControl = cxDBTextEdit3
      end
      object Label11: TLabel [10]
        Left = 16
        Top = 216
        Width = 57
        Height = 13
        Caption = 'Emprestado'
        FocusControl = cxDBTextEdit4
      end
      inherited Panel3: TPanel
        Width = 734
        ExplicitWidth = 734
        inherited Panel4: TPanel
          Width = 732
          ExplicitWidth = 732
          inherited ButtonFecharCadastro: TButton
            Left = 650
            ExplicitLeft = 650
          end
        end
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 16
        Top = 32
        BiDiMode = bdLeftToRight
        DataBinding.DataField = 'idlivro'
        DataBinding.DataSource = DataSource
        ParentBiDiMode = False
        Properties.ReadOnly = True
        Properties.SpinButtons.Visible = False
        Style.Color = clSilver
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'titulo'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 16
        Top = 112
        DataBinding.DataField = 'anopublicacao'
        DataBinding.DataSource = DataSource
        Properties.SpinButtons.Visible = False
        TabOrder = 3
        Width = 121
      end
      object cxDBSpinEdit3: TcxDBSpinEdit
        Left = 16
        Top = 152
        DataBinding.DataField = 'numeropaginas'
        DataBinding.DataSource = DataSource
        Properties.SpinButtons.Visible = False
        TabOrder = 4
        Width = 121
      end
      object cxDBSpinEdit4: TcxDBSpinEdit
        Left = 16
        Top = 192
        DataBinding.DataField = 'numeroedicao'
        DataBinding.DataSource = DataSource
        Properties.SpinButtons.Visible = False
        TabOrder = 5
        Width = 121
      end
      object cxDBMemo1: TcxDBMemo
        Left = 176
        Top = 32
        DataBinding.DataField = 'resumo'
        DataBinding.DataSource = DataSource
        Properties.ScrollBars = ssVertical
        TabOrder = 6
        Height = 181
        Width = 235
      end
      object cxDBSpinEdit6: TcxDBSpinEdit
        Left = 16
        Top = 272
        DataBinding.DataField = 'ideditora'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        Properties.SpinButtons.Visible = False
        Style.Color = clSilver
        TabOrder = 7
        Width = 121
      end
      object cxDBSpinEdit7: TcxDBSpinEdit
        Left = 16
        Top = 312
        DataBinding.DataField = 'idcategoria'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        Properties.SpinButtons.Visible = False
        Style.Color = clSilver
        TabOrder = 8
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 176
        Top = 272
        DataBinding.DataField = 'nomeeditora'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        Style.Color = clSilver
        TabOrder = 9
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 176
        Top = 312
        DataBinding.DataField = 'nomecategoria'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        Style.Color = clSilver
        TabOrder = 10
        Width = 121
      end
      object ButtonBuscarEditora: TButton
        Left = 336
        Top = 270
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 11
        OnClick = ButtonBuscarEditoraClick
      end
      object ButtonBuscarCategoria: TButton
        Left = 336
        Top = 310
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 12
        OnClick = ButtonBuscarCategoriaClick
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 16
        Top = 232
        BiDiMode = bdRightToLeft
        DataBinding.DataField = 'nomeemprestado'
        DataBinding.DataSource = DataSource
        ParentBiDiMode = False
        Properties.ReadOnly = True
        Style.Color = clSilver
        TabOrder = 13
        Width = 121
      end
      object PanelAutores: TPanel
        Left = 456
        Top = 32
        Width = 249
        Height = 313
        Color = clSilver
        ParentBackground = False
        TabOrder = 14
        object DBGrid2: TDBGrid
          Left = 1
          Top = 1
          Width = 247
          Height = 262
          Align = alTop
          DataSource = DataSourceAutor
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'nomeautor'
              Title.Caption = 'Nome do Autor'
              Visible = True
            end>
        end
        object ButtonAdicionarAutor: TButton
          Left = 9
          Top = 278
          Width = 112
          Height = 25
          Caption = 'Adicionar Autor'
          TabOrder = 1
          OnClick = ButtonAdicionarAutorClick
        end
        object ButtonExcluirAutor: TButton
          Left = 127
          Top = 278
          Width = 114
          Height = 25
          Caption = 'Excluir Autor'
          TabOrder = 2
          OnClick = ButtonExcluirAutorClick
        end
      end
    end
  end
  inherited FDQuery: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT LIVRO.*'
      '     , EDITORA.NOMEEDITORA'
      '     , CATEGORIA.NOMECATEGORIA'
      '     , CAST(CASE LIVRO.EMPRESTADO'
      '         WHEN 0 THEN '#39'N'#227'o'#39
      '         WHEN 1 THEN '#39'Sim'#39
      '       END AS VARCHAR) AS NOMEEMPRESTADO'
      '  FROM LIVRO'
      '  JOIN EDITORA'
      '    ON EDITORA.IDEDITORA = LIVRO.IDEDITORA'
      '  JOIN CATEGORIA'
      '    ON CATEGORIA.IDCATEGORIA = LIVRO.IDCATEGORIA')
    Left = 276
    Top = 120
    object FDQueryidlivro: TLargeintField
      DisplayLabel = 'C'#243'digo Livro'
      FieldName = 'idlivro'
      Origin = 'idlivro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuerytitulo: TWideStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'titulo'
      Origin = 'titulo'
      Size = 60
    end
    object FDQueryanopublicacao: TIntegerField
      DisplayLabel = 'Ano da Publica'#231#227'o'
      FieldName = 'anopublicacao'
      Origin = 'anopublicacao'
    end
    object FDQuerynumeropaginas: TIntegerField
      DisplayLabel = 'N'#250'mero de Paginas'
      FieldName = 'numeropaginas'
      Origin = 'numeropaginas'
    end
    object FDQuerynumeroedicao: TIntegerField
      DisplayLabel = 'N'#250'mero da Edi'#231#227'o'
      FieldName = 'numeroedicao'
      Origin = 'numeroedicao'
    end
    object FDQueryemprestado: TIntegerField
      DisplayLabel = 'Emprestado'
      FieldName = 'emprestado'
      Origin = 'emprestado'
    end
    object FDQueryresumo: TWideMemoField
      DisplayLabel = 'Resumo'
      FieldName = 'resumo'
      Origin = 'resumo'
      BlobType = ftWideMemo
    end
    object FDQueryideditora: TLargeintField
      DisplayLabel = 'C'#243'digo da Editora'
      FieldName = 'ideditora'
      Origin = 'ideditora'
    end
    object FDQueryidcategoria: TLargeintField
      DisplayLabel = 'C'#243'digo da Categoria'
      FieldName = 'idcategoria'
      Origin = 'idcategoria'
    end
    object FDQuerynomeeditora: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Editora'
      FieldName = 'nomeeditora'
      Origin = 'nomeeditora'
      Size = 60
    end
    object FDQuerynomecategoria: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Categoria'
      FieldName = 'nomecategoria'
      Origin = 'nomecategoria'
      Size = 60
    end
    object FDQuerynomeemprestado: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Emprestado'
      DisplayWidth = 3
      FieldName = 'nomeemprestado'
      Origin = 'nomeemprestado'
      ReadOnly = True
      Size = 8190
    end
  end
  inherited DataSource: TDataSource
    Left = 276
    Top = 184
  end
  inherited frxReport: TfrxReport
    ReportOptions.LastChange = 44943.397848692100000000
    Left = 376
    Top = 272
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
            'LISTA DE LIVROS')
        end
        object Memo4: TfrxMemoView
          Top = 34.015770000000000000
          Width = 30.236240000000000000
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
          Left = 30.236240000000000000
          Top = 34.015770000000000000
          Width = 449.764070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Livro')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 638.740570000000000000
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
        object Memo7: TfrxMemoView
          Left = 480.000310000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Pag.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 559.370440000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Edi'#231#227'o')
          ParentFont = False
        end
      end
      inherited MasterData1: TfrxMasterData
        object frxDBDataset1idlivro: TfrxMemoView
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'idlivro'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."idlivro"]')
          ParentFont = False
        end
        object frxDBDataset1titulo: TfrxMemoView
          Left = 30.236240000000000000
          Width = 449.764070000000000000
          Height = 18.897650000000000000
          DataField = 'titulo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."titulo"]')
        end
        object frxDBDataset1numeropaginas: TfrxMemoView
          Left = 480.000310000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'numeropaginas'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."numeropaginas"]')
        end
        object frxDBDataset1numeroedicao: TfrxMemoView
          Left = 559.370440000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'numeroedicao'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."numeroedicao"]')
        end
        object frxDBDataset1anopublicacao: TfrxMemoView
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'anopublicacao'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."anopublicacao"]')
        end
      end
    end
  end
  inherited frxDBDataset: TfrxDBDataset
    Left = 476
    Top = 272
  end
  object FDQueryAutor: TFDQuery
    Active = True
    IndexFieldNames = 'idlivro'
    MasterSource = DataSource
    MasterFields = 'idlivro'
    Connection = FormPrincipal.FDConnection
    SQL.Strings = (
      '  SELECT LIVROAUTOR.*'
      '       , AUTOR.NOMEAUTOR '
      '    FROM LIVROAUTOR'
      '    JOIN AUTOR'
      '      ON AUTOR.IDAUTOR = LIVROAUTOR.IDAUTOR'
      'ORDER BY AUTOR.NOMEAUTOR')
    Left = 588
    Top = 136
  end
  object DataSourceAutor: TDataSource
    DataSet = FDQueryAutor
    Left = 588
    Top = 200
  end
end
