unit Model.Connection.Factory.Interfaces;

interface

uses
  Model.Connection.Interfaces, Model.Query.Interfaces;
  type
    IFactoryConnection = interface
      ['{48DF33B6-2723-4422-90E0-E3D613363C5E}']
      function Connection: IDBConnection;
      function Query: IQuery;
    end;
implementation

end.
