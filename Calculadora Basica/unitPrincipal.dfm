object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora b'#225'sica'
  ClientHeight = 142
  ClientWidth = 563
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
    Left = 24
    Top = 21
    Width = 83
    Height = 13
    Caption = 'Digite um n'#250'mero'
  end
  object Label2: TLabel
    Left = 208
    Top = 21
    Width = 83
    Height = 13
    Caption = 'Digite um n'#250'mero'
  end
  object Label3: TLabel
    Left = 392
    Top = 21
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object Label4: TLabel
    Left = 169
    Top = 33
    Width = 17
    Height = 25
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 353
    Top = 33
    Width = 17
    Height = 25
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtNumero1: TEdit
    Left = 24
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object txtNumero2: TEdit
    Left = 208
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object txtResultado: TEdit
    Left = 392
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 24
    Top = 80
    Width = 489
    Height = 25
    Caption = 'Somar'
    TabOrder = 3
    OnClick = Button1Click
  end
end
