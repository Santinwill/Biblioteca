inherited FormEditora: TFormEditora
  Caption = 'Editoras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    inherited TabSheetCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 16
        Width = 85
        Height = 13
        Caption = 'C'#243'digo da Editora'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 59
        Width = 79
        Height = 13
        Caption = 'Nome da Editora'
        FocusControl = cxDBTextEdit1
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 16
        Top = 35
        DataBinding.DataField = 'ideditora'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        Properties.SpinButtons.Visible = False
        Style.BorderColor = clGray
        Style.Color = clScrollBar
        TabOrder = 1
        Width = 200
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 75
        DataBinding.DataField = 'nomeeditora'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 200
      end
    end
  end
  inherited FDQuery: TFDQuery
    Active = True
    SQL.Strings = (
      'Select * from EDITORA')
    object FDQueryideditora: TLargeintField
      DisplayLabel = 'C'#243'digo da Editora'
      FieldName = 'ideditora'
      Origin = 'ideditora'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuerynomeeditora: TWideStringField
      DisplayLabel = 'Nome da Editora'
      FieldName = 'nomeeditora'
      Origin = 'nomeeditora'
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
            'LISTA DE EDITORAS')
        end
        object Memo4: TfrxMemoView
          Top = 34.015770000000000000
          Width = 56.692913385826770000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'C'#243'digo')
        end
        object Memo5: TfrxMemoView
          Left = 60.472480000000000000
          Top = 34.015770000000000000
          Width = 657.638220000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Nome da Editora')
        end
      end
      inherited MasterData1: TfrxMasterData
        object frxDBDataset1ideditora: TfrxMemoView
          Top = 3.779530000000000000
          Width = 56.692913385826770000
          Height = 18.897650000000000000
          DataField = 'ideditora'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."ideditora"]')
        end
        object frxDBDataset1nomeeditora: TfrxMemoView
          Left = 56.692950000000000000
          Top = 3.779530000000000000
          Width = 661.417750000000000000
          Height = 18.897650000000000000
          DataField = 'nomeeditora'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."nomeeditora"]')
        end
      end
    end
  end
end
