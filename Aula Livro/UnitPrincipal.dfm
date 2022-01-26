object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Livros'
  ClientHeight = 493
  ClientWidth = 690
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
    Top = 8
    Width = 195
    Height = 25
    Caption = 'Cadastro de Livros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 61
    Width = 87
    Height = 16
    Caption = 'T'#237'tulo do livro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 48
    Top = 125
    Width = 38
    Height = 16
    Caption = 'Autor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 189
    Width = 46
    Height = 16
    Caption = 'G'#234'nero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 43
    Top = 274
    Width = 43
    Height = 16
    Caption = 'Idioma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 416
    Top = 125
    Width = 51
    Height = 16
    Caption = 'Resumo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 416
    Top = 274
    Width = 107
    Height = 16
    Caption = 'Canais de Venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 48
    Top = 83
    Width = 297
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 48
    Top = 147
    Width = 265
    Height = 21
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 48
    Top = 211
    Width = 193
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Romance'
      'AutoAjuda'
      'Autobiografia'
      'Policial')
  end
  object RadioButton1: TRadioButton
    Left = 59
    Top = 296
    Width = 113
    Height = 17
    Caption = 'Portugu'#234's'
    TabOrder = 3
  end
  object RadioButton2: TRadioButton
    Left = 59
    Top = 319
    Width = 113
    Height = 17
    Caption = 'Ingl'#234's'
    TabOrder = 4
  end
  object RadioButton3: TRadioButton
    Left = 59
    Top = 342
    Width = 113
    Height = 17
    Caption = 'Espanhol'
    TabOrder = 5
  end
  object CheckBox1: TCheckBox
    Left = 416
    Top = 85
    Width = 153
    Height = 17
    Caption = 'Dispon'#237'vel em Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object Memo1: TMemo
    Left = 416
    Top = 147
    Width = 257
    Height = 85
    TabOrder = 7
  end
  object CheckBox2: TCheckBox
    Left = 440
    Top = 296
    Width = 97
    Height = 17
    Caption = 'Internet'
    TabOrder = 8
  end
  object CheckBox3: TCheckBox
    Left = 440
    Top = 319
    Width = 97
    Height = 17
    Caption = 'Telefone'
    TabOrder = 9
  end
  object CheckBox4: TCheckBox
    Left = 440
    Top = 342
    Width = 97
    Height = 17
    Caption = 'Loja F'#237'sica'
    TabOrder = 10
  end
  object Button1: TButton
    Left = 432
    Top = 448
    Width = 97
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 11
  end
  object Button2: TButton
    Left = 238
    Top = 448
    Width = 99
    Height = 25
    Caption = 'Excluir'
    TabOrder = 12
  end
  object Button3: TButton
    Left = 48
    Top = 448
    Width = 87
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 13
  end
end
