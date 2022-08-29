unit Model.Query.FireDAC;

interface

uses
  Model.Query.Interfaces, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  Model.Connection.Interfaces;

  type
    TQueryFireDAC = class(TInterfacedObject, IQuery)
      private
        FQuery: TFDQuery;
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
  System.SysUtils;

{ TQueryFireDAC }

constructor TQueryFireDAC.Create(Parent: IDBConnection);
begin
  FParent := Parent;
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := TFDConnection(FParent.DBConnection);

end;

destructor TQueryFireDAC.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

class function TQueryFireDAC.New(Parent: IDBConnection): IQuery;
begin
  Result := Self.Create(Parent);
end;

function TQueryFireDAC.Open: IQuery;
begin
  FQuery.Open;
end;

function TQueryFireDAC.Query: TDataset;
begin
  Result := FQuery;
end;

function TQueryFireDAC.SQL(ATextSQL: string): IQuery;
begin
  Result := Self;
  FQuery.SQL.Clear;
  FQuery.SQL.Text := ATextSQL;
end;

end.
