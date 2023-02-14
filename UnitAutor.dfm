inherited FormAutor: TFormAutor
  Caption = 'Autores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    inherited TabSheetCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 16
        Width = 63
        Height = 13
        Caption = 'C'#243'digo Autor'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 56
        Width = 120
        Height = 13
        Caption = 'Nome Completo do Autor'
        FocusControl = cxDBTextEdit1
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'idautor'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        Properties.SpinButtons.Visible = False
        Style.Color = clSilver
        TabOrder = 1
        Width = 200
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'nomeautor'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 200
      end
    end
  end
  inherited FDQuery: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT * FROM AUTOR')
    object FDQueryidautor: TLargeintField
      DisplayLabel = 'C'#243'digo Autor'
      FieldName = 'idautor'
      Origin = 'idautor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuerynomeautor: TWideStringField
      DisplayLabel = 'Nome Completo do Autor'
      FieldName = 'nomeautor'
      Origin = 'nomeautor'
      Size = 60
    end
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
            'LISTA DE AUTORES')
        end
        object Memo4: TfrxMemoView
          Top = 34.015770000000000000
          Width = 56.692913385826770000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 56.692950000000000000
          Top = 34.015770000000000000
          Width = 661.417750000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Autor')
          ParentFont = False
        end
      end
      inherited MasterData1: TfrxMasterData
        object frxDBDataset1idautor: TfrxMemoView
          Top = 3.779530000000000000
          Width = 56.692913385826770000
          Height = 18.897650000000000000
          DataField = 'idautor'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."idautor"]')
          ParentFont = False
        end
        object frxDBDataset1nomeautor: TfrxMemoView
          Left = 56.692950000000000000
          Top = 3.779530000000000000
          Width = 661.417750000000000000
          Height = 18.897650000000000000
          DataField = 'nomeautor'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."nomeautor"]')
        end
      end
    end
  end
end
