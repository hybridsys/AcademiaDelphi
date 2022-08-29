unit Model.Person.Address.Interfaces;

interface

  uses
    Model.City.Interfaces,
    Model.Person.Address.AddressType;
  type
    IPersonAddress = interface
      ['{6789C762-C65E-4321-BFB5-BAB9E877D0AE}']

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

    end;
implementation

end.
