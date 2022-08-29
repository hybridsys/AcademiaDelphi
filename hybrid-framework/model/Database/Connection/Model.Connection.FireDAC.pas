unit Model.Connection.FireDAC;

interface

uses
  Model.Connection.Interfaces, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;
  type
    TConnectionFireDAC = class(TInterfacedObject, IDBConnection)
    private
      FDBConnection: TFDConnection;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: IDBConnection;
      procedure loadParams;
      function DBConnection: TCustomConnection;
      function UserName: string;
      function Password: string;
      function database: string;

    end;
implementation

uses
  System.SysUtils;

{ TConnectionFireDAC }

constructor TConnectionFireDAC.Create;
begin
  FDBConnection := TFDConnection.Create(nil);
  FDBConnection.Params.DriverID := 'FB';
  FDBConnection.Params.Database := 'smart';
  FDBConnection.Params.UserName := 'SYSDBA';
  FDBConnection.Params.Password := 'masterkey';
  FDBConnection.Connected := true;
end;

function TConnectionFireDAC.database: string;
begin
  //
end;

function TConnectionFireDAC.DBConnection: TCustomConnection;
begin
  Result := FDBConnection;
end;

destructor TConnectionFireDAC.Destroy;
begin
  FreeAndNil(FDBConnection);
  inherited;
end;

procedure TConnectionFireDAC.loadParams;
begin
  //
end;

class function TConnectionFireDAC.New: IDBConnection;
begin
  Result := Self.Create;
end;

function TConnectionFireDAC.Password: string;
begin
  //
end;

function TConnectionFireDAC.UserName: string;
begin
//
end;

end.
