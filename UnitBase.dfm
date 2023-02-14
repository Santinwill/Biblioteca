object FormBase: TFormBase
  Left = 0
  Top = 0
  Caption = 'FormBase'
  ClientHeight = 460
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 734
    Height = 460
    ActivePage = TabSheetConsulta
    Align = alClient
    TabOrder = 0
    object TabSheetConsulta: TTabSheet
      Caption = 'Consulta'
      object Panel2: TPanel
        Left = 0
        Top = 391
        Width = 726
        Height = 41
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          726
          41)
        object ButtonInserir: TButton
          Left = 8
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 0
          OnClick = ButtonInserirClick
        end
        object ButtonAlterar: TButton
          Left = 89
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = ButtonAlterarClick
        end
        object ButtonExcluir: TButton
          Left = 170
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = ButtonExcluirClick
        end
        object ButtonImprimir: TButton
          Left = 251
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          TabOrder = 3
          OnClick = ButtonImprimirClick
        end
        object ButtonSelecionar: TButton
          Left = 561
          Top = 6
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Selecionar'
          TabOrder = 4
          Visible = False
          OnClick = ButtonSelecionarClick
        end
        object ButtonFechar: TButton
          Left = 642
          Top = 6
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Cancel = True
          Caption = 'Fechar'
          TabOrder = 5
          OnClick = ButtonFecharClick
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 41
        Width = 726
        Height = 350
        Align = alClient
        DataSource = DataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 726
        Height = 41
        Align = alTop
        TabOrder = 2
        DesignSize = (
          726
          41)
        object EditBusca: TEdit
          Left = 8
          Top = 10
          Width = 628
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
        object ButtonBusca: TButton
          Left = 642
          Top = 10
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Buscar'
          Default = True
          TabOrder = 1
          OnClick = ButtonBuscaClick
        end
      end
    end
    object TabSheetCadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 391
        Width = 726
        Height = 41
        Align = alBottom
        TabOrder = 0
        object Panel4: TPanel
          Left = 1
          Top = -1
          Width = 724
          Height = 41
          Align = alBottom
          TabOrder = 0
          DesignSize = (
            724
            41)
          object ButtonSalvar: TButton
            Left = 8
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Salvar'
            TabOrder = 0
            OnClick = ButtonSalvarClick
          end
          object ButtonCancelar: TButton
            Left = 89
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 1
            OnClick = ButtonCancelarClick
          end
          object ButtonFecharCadastro: TButton
            Left = 642
            Top = 8
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Cancel = True
            Caption = 'Fechar'
            TabOrder = 2
            OnClick = ButtonFecharClick
          end
        end
      end
    end
  end
  object FDQuery: TFDQuery
    Connection = FormPrincipal.FDConnection
    Left = 324
    Top = 160
  end
  object DataSource: TDataSource
    DataSet = FDQuery
    Left = 380
    Top = 160
  end
  object frxReport: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44942.351597326400000000
    ReportOptions.LastChange = 44942.351597326400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 320
    Top = 216
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTA DE ')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 30.236240000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 56.692950000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset1'
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [Page#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Date] [Time]')
        end
      end
    end
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = FDQuery
    BCDToCurrency = False
    Left = 388
    Top = 216
  end
end
