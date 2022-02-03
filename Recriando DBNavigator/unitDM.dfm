object DM: TDM
  OldCreateOrder = False
  Height = 195
  Width = 507
  object conexao: TFDConnection
    Params.Strings = (
      'Database=aula03'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 48
  end
  object tbUsuarios: TFDTable
    Active = True
    AfterScroll = tbUsuariosAfterScroll
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'aula03.usuarios'
    Left = 176
    Top = 48
  end
  object dsUsuarios: TDataSource
    DataSet = tbUsuarios
    Left = 176
    Top = 120
  end
end
