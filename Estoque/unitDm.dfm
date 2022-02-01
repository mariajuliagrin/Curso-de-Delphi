object DM: TDM
  OldCreateOrder = False
  Height = 415
  Width = 474
  object conexao: TFDConnection
    Params.Strings = (
      'Database=Estoque'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 40
  end
  object tbProdutos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'Estoque.produtos'
    Left = 128
    Top = 40
    object tbProdutosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbProdutosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tbProdutosfabricante: TStringField
      FieldName = 'fabricante'
      Origin = 'fabricante'
      Required = True
      Size = 50
    end
    object tbProdutosvalidade: TDateField
      FieldName = 'validade'
      Origin = 'validade'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tbProdutosestoqueAtual: TIntegerField
      FieldName = 'estoqueAtual'
      Origin = 'estoqueAtual'
    end
  end
  object tbMovProdutos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'Estoque.movimentacoes_produtos'
    Left = 296
    Top = 40
  end
  object tbMovimentacoes: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'Estoque.movimentacoes'
    Left = 208
    Top = 40
  end
  object dsMovimentacoes: TDataSource
    DataSet = tbMovimentacoes
    Left = 208
    Top = 112
  end
  object dsProdutos: TDataSource
    DataSet = tbProdutos
    Left = 128
    Top = 112
  end
  object dsMovProdutos: TDataSource
    DataSet = tbMovProdutos
    Left = 296
    Top = 112
  end
  object sqlAumentaEstoque: TFDCommand
    Connection = conexao
    ParamData = <
      item
        Name = 'pId'
      end
      item
        Name = 'pQtd'
      end>
    Left = 120
    Top = 192
  end
  object sqlDiminuiEstoque: TFDCommand
    Connection = conexao
    ParamData = <
      item
        Name = 'pId'
      end
      item
        Name = 'pQtd'
      end>
    Left = 120
    Top = 264
  end
  object sqlMovimentacoes: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM movimentacoes')
    Left = 248
    Top = 200
  end
  object dsSqlMovimentacoes: TDataSource
    DataSet = sqlMovimentacoes
    Left = 248
    Top = 272
  end
end
