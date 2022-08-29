unit Model.Person.AddressClass;

interface

uses
  Model.Person.Address.Interfaces, Model.City.Interfaces,
  Model.Person.Address.AddressType;
  type
    TPersonAddress = class(TInterfacedObject, IPersonAddress)
    private
      FStreet: string;
      FStreetNumber: string;
      FStreetComplettition: string;
      FNeighborhood: string;
      FCity: ICity;
      FZipCode: string;
      FAddressType: AddressType;
    public
      function Street(AStreet: string): IPersonAddress; overload;
      function Street: string; overload;

      function StreetNumber(AStreetNumber: string): IPersonAddress; overload;
      function StreetNumber: string; overload;

      function StreetCompletition(AStreetCompletition: string): IPersonAddress; overload;
      function StreetCompletition: string; overload;

      function Neighborhood(ANeighborhood: string): IPersonAddress; overload;
      function Neighborhood: string; overload;

      function City(ACity: ICity): IPersonAddress; overload;
      function City: ICity; overload;

      function ZipCode(AZipCode: string): IPersonAddress; overload;
      function ZipCode: string; overload;

      function AddressType( AAddressType: AddressType ):IPersonAddress; overload;
      function AddressType: AddressType; overload;
      class function New: IPersonAddress;

    end;
implementation

{ TPersonAddress }

function TPersonAddress.AddressType(AAddressType: AddressType): IPersonAddress;
begin

end;

function TPersonAddress.AddressType: AddressType;
begin
  Result := FAddressType;
end;

function TPersonAddress.City: ICity;
begin
  Result := FCity;
end;

function TPersonAddress.City(ACity: ICity): IPersonAddress;
begin
  Result := Self;
  FCity := ACity;
end;

function TPersonAddress.Neighborhood: string;
begin
  Result := FNeighborhood;
end;

class function TPersonAddress.New: IPersonAddress;
begin
  Result := Self.Create;
end;

function TPersonAddress.Neighborhood(ANeighborhood: string): IPersonAddress;
begin
  Result := Self;
  FNeighborhood := ANeighborhood;
end;

function TPersonAddress.Street: string;
begin
  Result := FStreet;
end;

function TPersonAddress.Street(AStreet: string): IPersonAddress;
begin
  FStreet := AStreet;
end;

function TPersonAddress.StreetCompletition( AStreetCompletition: string): IPersonAddress;
begin
  Result := Self;
  FStreetComplettition := AStreetCompletition;
end;

function TPersonAddress.StreetCompletition: string;
begin
  Result := FStreetComplettition;
end;

function TPersonAddress.StreetNumber(AStreetNumber: string): IPersonAddress;
begin
  Result := Self;
  FStreetNumber := AStreetNumber;
end;

function TPersonAddress.StreetNumber: string;
begin
  Result := FStreetNumber;
end;

function TPersonAddress.ZipCode(AZipCode: string): IPersonAddress;
begin
  Result := Self;
  FZipCode := AZipCode;
end;

function TPersonAddress.ZipCode: string;
begin
  FZipCode := FZipCode;
end;

end.
