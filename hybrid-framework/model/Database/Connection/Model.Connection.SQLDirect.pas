unit Model.Connection.SQLDirect;

interface

uses
  Model.Connection.Interfaces, SDEngine, Data.DB;

  type
    TConnectionSQLDirect = class(TInterfacedObject, IDBConnection)
    private
      FDBConnection: TSDDatabase;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: IDBConnection;
      procedure loadParams;
      function DBConnection: TCustomConnection;
      function UserName: string;
      function Password: string;
      function database: string;

    end;
implementation

uses
  System.SysUtils;

{ TConnectionSQLDirect }

constructor TConnectionSQLDirect.Create;
begin
  FDBConnection := TSDDatabase.Create(nil);
  FDBConnection.LoginPrompt := False;
  FDBConnection.RemoteDatabase := 'smart';
  FDBConnection.DatabaseName := 'smart1';
  FDBConnection.ServerType := stFirebird;
  FDBConnection.Params.AddPair('USER NAME', 'SYSDBA');
  FDBConnection.Params.AddPair('Password', 'masterkey');
  FDBConnection.Params.AddPair('SQLDialect', '3');
  FDBConnection.Open;
end;

function TConnectionSQLDirect.DBConnection: TCustomConnection;
begin
  Result := FDBConnection;
end;

destructor TConnectionSQLDirect.Destroy;
begin
  FreeAndNil(FDBConnection);
  inherited;
end;

class function TConnectionSQLDirect.New: IDBConnection;
begin
  Result := Self.Create;
end;

function TConnectionSQLDirect.database: string;
begin
  result := '';
end;

function TConnectionSQLDirect.Password: string;
begin
  result := '';
end;

procedure TConnectionSQLDirect.loadParams;
begin
  //
end;

 function TConnectionSQLDirect.UserName: string;
begin
  Result := '';
end;

end.
