unit Model.Entity.Factory.Interfaces;

interface

uses
  Model.Entity.Interfaces;
  type
    IEntityFactory = interface
    ['{9A0206F6-F719-4888-AF17-FCB354109ECC}']
      function Client: IModelEntity;
    end;
implementation

end.
