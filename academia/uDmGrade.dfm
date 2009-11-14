object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 238
  Top = 249
  Height = 150
  Width = 215
  object sconn: TSQLConnection
    ConnectionName = 'sisAdmin'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=192.168.1.100:sge_academia'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=xl04pq'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=sysdba'
      'WaitOnLocks=True'
      'str_relatorio=z:\home\sisadminAts\relatorio\')
    VendorLib = 'fbclient.dll'
    Left = 56
    Top = 8
  end
end
