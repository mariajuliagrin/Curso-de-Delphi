object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'L'#243'gica de Programa'#231#227'o'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 78
    Height = 13
    Caption = 'Digite Seu Nome'
  end
  object lblIdade: TLabel
    Left = 32
    Top = 64
    Width = 76
    Height = 13
    Caption = 'Digite sua idade'
  end
  object txtNome: TEdit
    Left = 32
    Top = 35
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 216
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 1
    OnClick = Button1Click
  end
  object txtIdade: TEdit
    Left = 32
    Top = 83
    Width = 273
    Height = 21
    TabOrder = 2
  end
end
