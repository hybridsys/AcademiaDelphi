unit Model.Connection.Interfaces;

interface

uses
  Data.DB;
  type
    IDBConnection = interface
    ['{5B9B9E09-F0A1-48E6-B476-A66D8AAFE4CD}']
      function DBConnection: TCustomConnection;
      procedure loadParams;
      function UserName: string;
      function Password: string;
      function database: string;
    end;
implementation

end.
