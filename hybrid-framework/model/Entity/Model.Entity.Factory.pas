unit Model.Entity.Factory;

interface

uses
  Model.Entity.Factory.Interfaces, Model.Entity.Interfaces;
  type
    TEntityFactory = class(TInterfacedObject, IEntityFactory)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New: IEntityFactory;
      function Client: IModelEntity;

    end;
implementation

uses
  Model.Client.Entity;

{ TEntityFactory }

function TEntityFactory.Client: IModelEntity;
begin
  Result := TClientEntity.New;
end;

constructor TEntityFactory.Create;
begin

end;

destructor TEntityFactory.Destroy;
begin

  inherited;
end;

class function TEntityFactory.New: IEntityFactory;
begin
  Result := Self.Create;
end;

end.
