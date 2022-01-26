object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 451
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 24
    Top = 200
    Width = 85
    Height = 13
    Caption = 'Nome do C'#244'njuge'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 840
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitWidth = 826
    object Label1: TLabel
      Left = 24
      Top = 20
      Width = 299
      Height = 35
      Caption = 'Cadastro de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 376
      Top = 22
      Width = 75
      Height = 48
      Caption = 'Novo'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 457
      Top = 22
      Width = 75
      Height = 48
      Caption = 'Salvar'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 538
      Top = 22
      Width = 79
      Height = 48
      Caption = 'Cancelar'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 623
      Top = 22
      Width = 75
      Height = 48
      Caption = 'Excluir'
      TabOrder = 3
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 89
    Width = 840
    Height = 362
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 24
    ExplicitTop = 153
    ExplicitWidth = 834
    ExplicitHeight = 285
    object TabSheet1: TTabSheet
      Caption = 'Dados Pessoais'
      object Label2: TLabel
        Left = 20
        Top = 19
        Width = 84
        Height = 13
        Caption = 'C'#243'digo do Cliente'
      end
      object Label3: TLabel
        Left = 20
        Top = 83
        Width = 84
        Height = 13
        Caption = 'Nome do Cliente'
      end
      object Label4: TLabel
        Left = 200
        Top = 19
        Width = 71
        Height = 13
        Caption = 'Tipo de Cliente'
      end
      object Label5: TLabel
        Left = 400
        Top = 19
        Width = 14
        Height = 13
        Caption = 'RG'
      end
      object Label6: TLabel
        Left = 619
        Top = 19
        Width = 90
        Height = 13
        Caption = 'Data de Expedi'#231#227'o'
      end
      object Label7: TLabel
        Left = 20
        Top = 139
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label8: TLabel
        Left = 20
        Top = 195
        Width = 28
        Height = 13
        Caption = 'Bairro'
      end
      object Label9: TLabel
        Left = 200
        Top = 195
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label10: TLabel
        Left = 20
        Top = 259
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object Label11: TLabel
        Left = 124
        Top = 259
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label12: TLabel
        Left = 400
        Top = 83
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label13: TLabel
        Left = 619
        Top = 83
        Width = 33
        Height = 13
        Caption = 'Celular'
      end
      object Label14: TLabel
        Left = 400
        Top = 139
        Width = 28
        Height = 13
        Caption = 'E-mail'
      end
      object Edit1: TEdit
        Left = 20
        Top = 38
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 20
        Top = 102
        Width = 325
        Height = 21
        TabOrder = 1
      end
      object ComboBox1: TComboBox
        Left = 200
        Top = 38
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 2
        Items.Strings = (
          'Pessoa F'#237'sica'
          'Pessoa Jur'#237'dica')
      end
      object Edit3: TEdit
        Left = 400
        Top = 38
        Width = 173
        Height = 21
        TabOrder = 3
      end
      object Edit4: TEdit
        Left = 619
        Top = 38
        Width = 173
        Height = 21
        TabOrder = 4
      end
      object Edit5: TEdit
        Left = 20
        Top = 158
        Width = 325
        Height = 21
        TabOrder = 5
      end
      object Edit6: TEdit
        Left = 20
        Top = 214
        Width = 112
        Height = 21
        TabOrder = 6
      end
      object Edit7: TEdit
        Left = 200
        Top = 214
        Width = 145
        Height = 21
        TabOrder = 7
      end
      object Edit8: TEdit
        Left = 20
        Top = 278
        Width = 61
        Height = 21
        TabOrder = 8
      end
      object Edit9: TEdit
        Left = 124
        Top = 278
        Width = 109
        Height = 21
        TabOrder = 9
      end
      object Edit10: TEdit
        Left = 400
        Top = 102
        Width = 173
        Height = 21
        TabOrder = 10
      end
      object Edit11: TEdit
        Left = 619
        Top = 102
        Width = 173
        Height = 21
        TabOrder = 11
      end
      object Edit12: TEdit
        Left = 400
        Top = 158
        Width = 392
        Height = 21
        TabOrder = 12
      end
      object CheckBox1: TCheckBox
        Left = 400
        Top = 216
        Width = 128
        Height = 19
        Caption = 'Cliente Negativado'
        TabOrder = 13
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados do C'#244'njuge'
      ImageIndex = 1
      object Label15: TLabel
        Left = 20
        Top = 24
        Width = 85
        Height = 13
        Caption = 'Nome do C'#244'njuge'
      end
      object Label16: TLabel
        Left = 340
        Top = 24
        Width = 19
        Height = 13
        Caption = 'CPF'
      end
      object Label18: TLabel
        Left = 20
        Top = 87
        Width = 96
        Height = 13
        Caption = 'Data de Nascimento'
      end
      object Edit13: TEdit
        Left = 20
        Top = 43
        Width = 261
        Height = 21
        TabOrder = 0
      end
      object Edit14: TEdit
        Left = 340
        Top = 43
        Width = 261
        Height = 21
        TabOrder = 1
      end
      object Edit15: TEdit
        Left = 20
        Top = 106
        Width = 125
        Height = 21
        TabOrder = 2
      end
      object GroupBox1: TGroupBox
        Left = 340
        Top = 87
        Width = 354
        Height = 178
        Caption = 'Contatos do C'#244'njuge'
        TabOrder = 3
        object Label19: TLabel
          Left = 32
          Top = 32
          Width = 33
          Height = 13
          Caption = 'Celular'
        end
        object Label20: TLabel
          Left = 32
          Top = 94
          Width = 28
          Height = 13
          Caption = 'E-mail'
        end
        object Label21: TLabel
          Left = 208
          Top = 32
          Width = 52
          Height = 13
          Caption = 'Operadora'
        end
        object Edit16: TEdit
          Left = 32
          Top = 51
          Width = 129
          Height = 21
          TabOrder = 0
        end
        object Edit17: TEdit
          Left = 32
          Top = 113
          Width = 225
          Height = 21
          TabOrder = 1
        end
        object ComboBox2: TComboBox
          Left = 206
          Top = 51
          Width = 123
          Height = 21
          Style = csDropDownList
          TabOrder = 2
          Items.Strings = (
            'Tim'
            'Claro'
            'Vivo'
            'Oi')
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Dados do Trabalho'
      ImageIndex = 2
      object Label22: TLabel
        Left = 20
        Top = 24
        Width = 44
        Height = 13
        Caption = 'Profiss'#227'o'
      end
      object Label23: TLabel
        Left = 20
        Top = 87
        Width = 41
        Height = 13
        Caption = 'Empresa'
      end
      object Label24: TLabel
        Left = 20
        Top = 152
        Width = 149
        Height = 13
        Caption = 'Endere'#231'o completo do trabalho'
      end
      object Label25: TLabel
        Left = 20
        Top = 216
        Width = 100
        Height = 13
        Caption = 'Telefone do trabalho'
      end
      object Label26: TLabel
        Left = 252
        Top = 216
        Width = 91
        Height = 13
        Caption = 'Celular do trabalho'
      end
      object Edit18: TEdit
        Left = 20
        Top = 43
        Width = 253
        Height = 21
        TabOrder = 0
      end
      object Edit19: TEdit
        Left = 20
        Top = 106
        Width = 253
        Height = 21
        TabOrder = 1
      end
      object Edit20: TEdit
        Left = 20
        Top = 171
        Width = 381
        Height = 21
        TabOrder = 2
      end
      object Edit21: TEdit
        Left = 20
        Top = 235
        Width = 181
        Height = 21
        TabOrder = 3
      end
      object Edit22: TEdit
        Left = 252
        Top = 235
        Width = 181
        Height = 21
        TabOrder = 4
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'An'#225'lise de Cr'#233'dito'
      ImageIndex = 3
      object Label27: TLabel
        Left = 20
        Top = 24
        Width = 83
        Height = 13
        Caption = 'Sal'#225'rio do Cliente'
      end
      object Label28: TLabel
        Left = 20
        Top = 87
        Width = 90
        Height = 13
        Caption = 'Sal'#225'rio do C'#244'njuge'
      end
      object Label29: TLabel
        Left = 20
        Top = 144
        Width = 80
        Height = 13
        Caption = 'Limite de Cr'#233'dito'
      end
      object Label30: TLabel
        Left = 18
        Top = 208
        Width = 70
        Height = 13
        Caption = 'Limite Utilizado'
      end
      object Label31: TLabel
        Left = 18
        Top = 264
        Width = 74
        Height = 13
        Caption = 'Limite Restante'
      end
      object Label32: TLabel
        Left = 240
        Top = 24
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
      end
      object Edit23: TEdit
        Left = 20
        Top = 43
        Width = 141
        Height = 21
        TabOrder = 0
      end
      object Edit24: TEdit
        Left = 20
        Top = 106
        Width = 141
        Height = 21
        TabOrder = 1
      end
      object Edit25: TEdit
        Left = 20
        Top = 163
        Width = 139
        Height = 21
        TabOrder = 2
      end
      object Edit26: TEdit
        Left = 20
        Top = 227
        Width = 139
        Height = 21
        TabOrder = 3
      end
      object Edit27: TEdit
        Left = 20
        Top = 283
        Width = 139
        Height = 21
        TabOrder = 4
      end
      object Memo1: TMemo
        Left = 240
        Top = 43
        Width = 433
        Height = 134
        Lines.Strings = (
          '')
        TabOrder = 5
      end
    end
  end
end
