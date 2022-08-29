unit Model.Person.WebClass;

interface

uses
  Model.Person.Web.Interfaces, Model.Person.Web.WebType;
  type
    TWeb = class(TInterfacedObject, IPersonWeb)
      function webAddress(AWebAddress: string):IPersonWeb; overload;
      function webAddress: string; overload;

      function webType: TWebType; overload;
      function webType(AWebType: TWebType): IPersonWeb;overload;

      class function New: IPersonWeb;
  private
    FWebAddress: string;
    FWebType: TWebType;
    end;
implementation

{ TWeb }

class function TWeb.New: IPersonWeb;
begin
  Result := Self.Create;
end;

function TWeb.webAddress(AWebAddress: string): IPersonWeb;
begin
  Result := Self;
  FWebAddress := AWebAddress;
end;

function TWeb.webAddress: string;
begin
  Result := FWebAddress;
end;

function TWeb.webType: TWebType;
begin
  Result := FWebType;
end;

function TWeb.webType(AWebType: TWebType): IPersonWeb;
begin
  Result := Self;
  FWebType := AWebType;
end;

end.
