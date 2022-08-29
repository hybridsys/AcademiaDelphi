unit Model.Query.SQLDirect;

interface

uses
  Data.DB, SDEngine, Model.Query.Interfaces, Model.Connection.Interfaces;

type

  TQuerySQLDirect = class(TInterfacedObject, IQuery)
    private
      FQuery: TSDQuery;
      FParent: IDBConnection;
    public
      constructor Create(Parent: IDBConnection);
      destructor Destroy; override;
      class function New(Parent: IDBConnection): IQuery;

      function SQL(ATextSQL: string): IQuery;
      function Open:IQuery;
      function Query: TDataset;

  end;
implementation

uses
  System.SysUtils, Vcl.Forms;

{ TQuerySQLDirect }

constructor TQuerySQLDirect.Create(Parent: IDBConnection);
begin
  FParent := Parent;
  FQuery := TSDQuery.Create(nil);
  FQuery.DatabaseName := TSDDatabase(FParent.DBConnection).DatabaseName;
end;

destructor TQuerySQLDirect.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

class function TQuerySQLDirect.New(Parent: IDBConnection): IQuery;
begin
  Result := Self.Create(Parent);
end;

function TQuerySQLDirect.Open: IQuery;
begin
  Result := Self;
  FQuery.Open;
end;

function TQuerySQLDirect.Query: TDataset;
begin
  Result := FQuery;
end;

function TQuerySQLDirect.SQL(ATextSQL: string): IQuery;
begin
  Result := Self;
  FQuery.SQL.Clear;
  FQuery.SQL.Text := ATextSQL;
end;

end.
