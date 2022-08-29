unit Model.Client.Entity;

interface

uses
  Model.Entity.Interfaces, Data.DB, Model.Query.Interfaces,
  Model.Connection.Factory;
  type
    TClientEntity = class(TInterfacedObject, IModelEntity)
    private
      FQuery: IQuery;
    public
      constructor Create;
      destructor Destroy; override;
      function DataSet(AValue: TDataSource): IModelEntity;
      function Open: IModelEntity;
      class function New: IModelEntity;
    end;
implementation

{ TClientEntity }

constructor TClientEntity.Create;
begin
  FQuery := TFactoryConnection.New.Query;
end;

function TClientEntity.DataSet(AValue: TDataSource): IModelEntity;
begin
  Result := Self;
  AValue.DataSet := TDataSet(FQuery.Query);
  AValue.DataSet.Name := 'ClientEntity';
end;

destructor TClientEntity.Destroy;
begin

  inherited;
end;

class function TClientEntity.New: IModelEntity;
begin
  Result := Self.Create;
end;

function TClientEntity.Open: IModelEntity;
begin
  FQuery.SQL('select * from client');
  FQuery.Open;
end;

end.
