unit Controller.Interfaces;

interface

uses
  Model.Entity.Factory.Interfaces;
  type
    IController = interface
      ['{AEBC144B-1B6D-4132-8D2C-677BF5770CBA}']
      function Entities: IEntityFactory;
    end;
implementation

end.
