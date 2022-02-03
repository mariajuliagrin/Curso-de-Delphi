object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'DbNavigator'
  ClientHeight = 546
  ClientWidth = 623
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 208
    Width = 544
    Height = 49
    DataSource = DM.dsUsuarios
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 0
  end
  object btCancelar: TButton
    Left = 495
    Top = 153
    Width = 62
    Height = 49
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 1
    OnClick = btCancelarClick
  end
  object tbAbrir: TButton
    Left = 359
    Top = 104
    Width = 91
    Height = 33
    Caption = 'Abrir Tabela'
    TabOrder = 2
    OnClick = tbAbrirClick
  end
  object tbFechar: TButton
    Left = 456
    Top = 104
    Width = 101
    Height = 33
    Caption = 'Fechar Tabela'
    TabOrder = 3
    OnClick = tbFecharClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 280
    Width = 544
    Height = 241
    DataSource = DM.dsUsuarios
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btSalvar: TButton
    Left = 427
    Top = 153
    Width = 62
    Height = 49
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 5
    OnClick = btSalvarClick
  end
  object btDeletar: TButton
    Left = 359
    Top = 153
    Width = 62
    Height = 49
    Caption = 'Delete'
    TabOrder = 6
    OnClick = btDeletarClick
  end
  object btInserir: TButton
    Left = 286
    Top = 153
    Width = 67
    Height = 49
    Caption = 'Insert'
    TabOrder = 7
    OnClick = btInserirClick
  end
  object BtUltimo: TButton
    Left = 218
    Top = 153
    Width = 62
    Height = 49
    Caption = '>>'
    TabOrder = 8
    OnClick = BtUltimoClick
  end
  object btProximo: TButton
    Left = 150
    Top = 153
    Width = 62
    Height = 49
    Caption = '>'
    TabOrder = 9
    OnClick = btProximoClick
  end
  object btAnterior: TButton
    Left = 82
    Top = 153
    Width = 62
    Height = 49
    Caption = '<'
    TabOrder = 10
    OnClick = btAnteriorClick
  end
  object btPrimeiro: TButton
    Left = 14
    Top = 153
    Width = 62
    Height = 49
    Caption = '<<'
    TabOrder = 11
    OnClick = btPrimeiroClick
  end
end
