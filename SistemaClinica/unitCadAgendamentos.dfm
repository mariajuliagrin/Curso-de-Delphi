object FormCadAgendamentos: TFormCadAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Agendamentos'
  ClientHeight = 341
  ClientWidth = 856
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 24
    Top = 69
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label4: TLabel
    Left = 144
    Top = 69
    Width = 86
    Height = 13
    Caption = 'Nome do Paciente'
  end
  object Label2: TLabel
    Left = 24
    Top = 125
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label5: TLabel
    Left = 160
    Top = 125
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object Label6: TLabel
    Left = 24
    Top = 189
    Width = 64
    Height = 13
    Caption = 'Especialidade'
  end
  object Label7: TLabel
    Left = 24
    Top = 245
    Width = 78
    Height = 13
    Caption = 'Nome do M'#233'dico'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 856
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -104
    ExplicitWidth = 619
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 288
      Height = 25
      Caption = 'Cadastro de Agendamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 347
      Top = 12
      Width = 240
      Height = 25
      DataSource = DM.dsPaciente
      TabOrder = 0
    end
  end
  object DBNavigator2: TDBNavigator
    Left = 320
    Top = 8
    Width = 240
    Height = 25
    DataSource = DM.dsAgendamento
    TabOrder = 1
  end
  object txtId: TDBEdit
    Left = 24
    Top = 88
    Width = 97
    Height = 21
    DataField = 'id'
    DataSource = DM.dsAgendamento
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 144
    Top = 88
    Width = 305
    Height = 21
    DataField = 'id_paciente'
    DataSource = DM.dsAgendamento
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsPaciente
    TabOrder = 3
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 144
    Width = 93
    Height = 21
    DataField = 'data'
    DataSource = DM.dsAgendamento
    MaxLength = 10
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 160
    Top = 144
    Width = 97
    Height = 21
    DataField = 'hora'
    DataSource = DM.dsAgendamento
    MaxLength = 5
    TabOrder = 5
  end
  object DBComboBox1: TDBComboBox
    Left = 24
    Top = 208
    Width = 217
    Height = 21
    DataField = 'especialidade'
    DataSource = DM.dsAgendamento
    Items.Strings = (
      'Cardiologista'
      'Nutricionista'
      'Ortopedista'
      'Dermatologista')
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 264
    Width = 217
    Height = 21
    DataField = 'medico'
    DataSource = DM.dsAgendamento
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 347
    Top = 125
    Width = 311
    Height = 185
    DataSource = DM.dsAgendamento
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hora'
        Title.Caption = 'Hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Title.Caption = 'Especialidade'
        Visible = True
      end>
  end
end
