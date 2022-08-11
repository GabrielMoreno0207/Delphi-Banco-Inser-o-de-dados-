﻿object Form2: TForm2
  Left = 0
  Top = 0
  Caption = ' '
  ClientHeight = 503
  ClientWidth = 743
  Color = clBtnHighlight
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI Semibold'
  Font.Style = [fsBold]
  OldCreateOrder = False
  DesignSize = (
    743
    503)
  PixelsPerInch = 96
  TextHeight = 20
  object Label3: TLabel
    Left = 112
    Top = 423
    Width = 79
    Height = 20
    Anchors = []
    Caption = 'HABITANTE'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 112
    Top = 337
    Width = 56
    Height = 20
    Anchors = []
    Caption = 'CODIGO'
    FocusControl = DBEdit3
  end
  object Label5: TLabel
    Left = 112
    Top = 468
    Width = 55
    Height = 20
    Anchors = []
    Caption = 'ESTADO'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 112
    Top = 379
    Width = 53
    Height = 20
    Anchors = []
    Caption = 'CIDADE'
    FocusControl = DBEdit1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Padding.Top = 10
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 10
      Width = 743
      Height = 25
      Align = alClient
      Alignment = taCenter
      Caption = 'inserindo Dados no Banco'
      Color = clWhite
      ParentColor = False
      ExplicitWidth = 179
      ExplicitHeight = 20
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 35
    Width = 743
    Height = 278
    Align = alTop
    BiDiMode = bdRightToLeftReadingOnly
    DataSource = Link
    ParentBiDiMode = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Segoe UI Semibold'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODIGO'
        Title.Alignment = taCenter
        Width = 108
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CIDADE'
        Title.Alignment = taCenter
        Width = 358
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HABITANTE'
        Title.Alignment = taCenter
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTADO'
        Title.Alignment = taCenter
        Width = 124
        Visible = True
      end>
  end
  object DBEdit3: TDBEdit
    Left = 200
    Top = 334
    Width = 100
    Height = 28
    Anchors = []
    AutoSelect = False
    AutoSize = False
    DataField = 'CODIGO'
    DataSource = Link
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 200
    Top = 420
    Width = 204
    Height = 28
    Anchors = []
    DataField = 'HABITANTE'
    DataSource = Link
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 200
    Top = 465
    Width = 65
    Height = 28
    Anchors = []
    DataField = 'ESTADO'
    DataSource = Link
    TabOrder = 4
  end
  object DBEdit1: TDBEdit
    Left = 200
    Top = 376
    Width = 240
    Height = 28
    Anchors = []
    DataField = 'CIDADE'
    DataSource = Link
    TabOrder = 5
  end
  object Button3: TButton
    Left = 455
    Top = 355
    Width = 90
    Height = 50
    Anchors = []
    Caption = 'Gravar'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 455
    Top = 419
    Width = 90
    Height = 50
    Anchors = []
    Caption = 'Incluir'
    TabOrder = 7
  end
  object Button5: TButton
    Left = 559
    Top = 390
    Width = 90
    Height = 50
    Anchors = []
    Caption = 'Excluir'
    TabOrder = 8
    OnClick = Button5Click
  end
  object conexão: TFDConnection
    Params.Strings = (
      'Database=D:\dados\SoDanca.fdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=fB')
    Connected = True
    LoginPrompt = False
    Left = 53
    Top = 335
  end
  object qryTable: TFDQuery
    Active = True
    Connection = conexão
    SQL.Strings = (
      
        'select ci.codigo,ci.nome cidade, ci.estado, cli.cep, ci.habitant' +
        'e '
      'from cidade ci '
      'inner join cliente cli on (ci.codigo = cli.codigo)'
      'order by ci.codigo asc')
    Left = 56
    Top = 439
    object qryTableCIDADE: TStringField
      DisplayWidth = 40
      FieldName = 'CIDADE'
      Origin = 'NOME'
      Required = True
      Size = 40
    end
    object qryTableESTADO: TStringField
      DisplayWidth = 7
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      Size = 2
    end
    object qryTableCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTableCEP: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'CEP'
      Origin = 'CEP'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qryTableHABITANTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'HABITANTE'
      Origin = 'HABITANTE'
    end
  end
  object Link: TDataSource
    DataSet = qryTable
    Left = 56
    Top = 383
  end
end
