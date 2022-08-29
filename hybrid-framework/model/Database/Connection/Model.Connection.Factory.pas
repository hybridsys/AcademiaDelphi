unit Model.Connection.Factory;

interface

uses
  Model.Factory.Connection.Interfaces, Model.Connection.Interfaces,
  Model.Query.Interfaces;
  type
    TFactoryConnection = class(TInterfacedObject, IFactoryConnection)
    private
    public
      constructor Create;
      destructor Destroy; override;
      function Connection: IDBConnection;
      function Query: IQuery;
      class function New: IFactoryConnection;
    end;
implementation

uses
  Model.Query.SQLDirect, Model.Connection.FireDAC, Model.Query.FireDAC;

{ TFactoryConnection }

function TFactoryConnection.Connection: IDBConnection;
begin
//   Result := TConnectionSQLDirect.New;
  Result := TConnectionFireDac.New;
end;

constructor TFactoryConnection.Create;
begin

end;

destructor TFactoryConnection.Destroy;
begin

  inherited;
end;

class function TFactoryConnection.New: IFactoryConnection;
begin
  Result := Self.Create;
end;

function TFactoryConnection.Query: IQuery;
begin
//  Result := TQuerySQLDirect.New(Self.Connection);
  // Result := TQueryFireDAC.New(Self.Connection);
  Result := TQueryFireDAC.New(Self.Connection);
end;

end.
