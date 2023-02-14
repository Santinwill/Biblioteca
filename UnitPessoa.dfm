inherited FormPessoa: TFormPessoa
  Caption = 'Pessoas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    inherited TabSheetConsulta: TTabSheet
      inherited DBGrid1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'idpessoa'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomepessoa'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone'
            Visible = True
          end>
      end
    end
    inherited TabSheetCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 16
        Width = 70
        Height = 13
        Caption = 'C'#243'digo Pessoa'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 59
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel [2]
        Left = 16
        Top = 99
        Width = 19
        Height = 13
        Caption = 'CPF'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel [3]
        Left = 16
        Top = 139
        Width = 28
        Height = 13
        Caption = 'E-mail'
        FocusControl = cxDBTextEdit3
      end
      object Label5: TLabel [4]
        Left = 16
        Top = 179
        Width = 97
        Height = 13
        Caption = 'Numero de Telefone'
        FocusControl = cxDBTextEdit4
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 16
        Top = 35
        DataBinding.DataField = 'idpessoa'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        Properties.SpinButtons.Visible = False
        Style.Color = clSilver
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 75
        DataBinding.DataField = 'nomepessoa'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 115
        DataBinding.DataField = 'cpf'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 16
        Top = 155
        DataBinding.DataField = 'email'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 16
        Top = 195
        DataBinding.DataField = 'telefone'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
    end
  end
  inherited FDQuery: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT * FROM PESSOA')
    object FDQueryidpessoa: TLargeintField
      DisplayLabel = 'C'#243'digo Pessoa'
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuerynomepessoa: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nomepessoa'
      Origin = 'nomepessoa'
      Size = 60
    end
    object FDQuerycpf: TWideStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '999.999.999-99;0'
      Size = 15
    end
    object FDQueryemail: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object FDQuerytelefone: TWideStringField
      DisplayLabel = 'Numero de Telefone'
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '(99)99999-9999;0'
      Size = 30
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
            'LISTA DE PESSOAS')
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
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 37.795300000000000000
          Top = 34.015770000000000000
          Width = 249.448980000000000000
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
        object Memo6: TfrxMemoView
          Left = 287.244280000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 381.732530000000000000
          Top = 34.015770000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 616.063390000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
      end
      inherited MasterData1: TfrxMasterData
        object frxDBDataset1idpessoa: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'idpessoa'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."idpessoa"]')
          ParentFont = False
        end
        object frxDBDataset1nomepessoa: TfrxMemoView
          Left = 37.795300000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataField = 'nomepessoa'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."nomepessoa"]')
          ParentFont = False
        end
        object frxDBDataset1cpf: TfrxMemoView
          Left = 287.244280000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'cpf'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."cpf"]')
          ParentFont = False
        end
        object frxDBDataset1email: TfrxMemoView
          Left = 374.173470000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'email'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."email"]')
          ParentFont = False
        end
        object frxDBDataset1telefone: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'telefone'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."telefone"]')
          ParentFont = False
        end
      end
    end
  end
end
