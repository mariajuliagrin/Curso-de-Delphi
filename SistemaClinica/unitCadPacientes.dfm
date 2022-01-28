object FormCadPacientes: TFormCadPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 361
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 208
    Top = 195
    Width = 85
    Height = 13
    Caption = 'Data de Cadastro'
  end
  object Label3: TLabel
    Left = 24
    Top = 69
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label4: TLabel
    Left = 24
    Top = 133
    Width = 75
    Height = 13
    Caption = 'Nome Completo'
  end
  object Label5: TLabel
    Left = 24
    Top = 196
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label6: TLabel
    Left = 208
    Top = 69
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label7: TLabel
    Left = 360
    Top = 69
    Width = 76
    Height = 13
    Caption = 'Buscar Paciente'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 619
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 233
      Height = 25
      Caption = 'Cadastro de Pacientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object txtId: TDBEdit
    Left = 24
    Top = 88
    Width = 97
    Height = 21
    DataField = 'id'
    DataSource = DM.dsPaciente
    TabOrder = 1
  end
  object txtNome: TDBEdit
    Left = 24
    Top = 152
    Width = 305
    Height = 21
    DataField = 'nome'
    DataSource = DM.dsPaciente
    TabOrder = 3
  end
  object txtCelular: TDBEdit
    Left = 24
    Top = 216
    Width = 137
    Height = 21
    DataField = 'celular'
    DataSource = DM.dsPaciente
    MaxLength = 15
    TabOrder = 4
  end
  object txtCpf: TDBEdit
    Left = 208
    Top = 88
    Width = 121
    Height = 21
    DataField = 'cpf'
    DataSource = DM.dsPaciente
    MaxLength = 14
    TabOrder = 2
  end
  object txtData: TDBEdit
    Left = 208
    Top = 214
    Width = 121
    Height = 21
    DataField = 'data_cadastro'
    DataSource = DM.dsPaciente
    ReadOnly = True
    TabOrder = 5
  end
  object txtGridPaciente: TDBGrid
    Left = 360
    Top = 112
    Width = 225
    Height = 217
    DataSource = DM.dsPaciente
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Pacientes Cadastrados'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 320
    Top = 8
    Width = 240
    Height = 25
    DataSource = DM.dsPaciente
    TabOrder = 8
  end
  object txtBusca: TEdit
    Left = 360
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 6
    OnChange = txtBuscaChange
  end
end
