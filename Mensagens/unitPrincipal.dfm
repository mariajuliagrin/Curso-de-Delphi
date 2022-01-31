object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Exemplo Caixas de Mensagens'
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
  object Button1: TButton
    Left = 8
    Top = 16
    Width = 121
    Height = 25
    Caption = 'Mensagem Simples'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 56
    Width = 121
    Height = 25
    Caption = 'Alerta'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 96
    Width = 121
    Height = 25
    Caption = 'Informa'#231#227'o'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 135
    Width = 121
    Height = 25
    Caption = 'Erro'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 175
    Width = 121
    Height = 25
    Caption = 'Pergunta'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 200
    Top = 56
    Width = 121
    Height = 25
    Caption = 'Ok'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 200
    Top = 96
    Width = 121
    Height = 25
    Caption = 'Ok / Cancelar'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 200
    Top = 135
    Width = 121
    Height = 25
    Caption = 'Sim / N'#227'o'
    TabOrder = 7
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 200
    Top = 191
    Width = 121
    Height = 25
    Caption = 'Sair'
    TabOrder = 8
    OnClick = Button5Click
  end
end
