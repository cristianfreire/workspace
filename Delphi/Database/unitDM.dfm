object DM: TDM
  OldCreateOrder = False
  Height = 217
  Width = 322
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=dbaula'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 48
  end
  object sqlConsulta: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM clientes')
    Left = 136
    Top = 48
  end
  object dsSqlConsulta: TDataSource
    DataSet = sqlConsulta
    Left = 232
    Top = 48
  end
end
