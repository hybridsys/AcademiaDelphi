unit Controller.Entities;

interface

uses
  Model.Entity.Factory.Interfaces, Controller.Interfaces;
  type
    TController = class(TInterfacedObject, IController)
    private
      FModelEntity: IEntityFactory;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: IController;
      function Entities: IEntityFactory;

    end;

implementation

uses
  Model.Entity.Factory;

{ TController }

constructor TController.Create;
begin
  FModelEntity := TEntityFactory.New;
end;

destructor TController.Destroy;
begin

  inherited;
end;

function TController.Entities: IEntityFactory;
begin
  Result := FModelEntity;
end;

class function TController.New: IController;
begin
  Result := Self.Create;
end;

end.
