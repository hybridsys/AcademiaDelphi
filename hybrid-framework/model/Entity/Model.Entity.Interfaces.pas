unit Model.Entity.Interfaces;

interface

uses
  Data.DB;
  type
    IModelEntity = interface
      ['{C897A8C0-BCE7-43B1-B457-81F6897D9B5E}']
      function DataSet(AValue: TDataSource): IModelEntity;
      function Open: IModelEntity;
    end;
implementation

end.
