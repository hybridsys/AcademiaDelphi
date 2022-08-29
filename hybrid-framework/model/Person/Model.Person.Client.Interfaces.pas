unit Model.Person.Client.Interfaces;

interface
  uses Model.Person.Address.Interfaces, System.Generics.Collections,
       Model.Person.Phone.Interfaces, Model.Person.Web.Interfaces, Model.Person.Document.Interfaces,
  Model.Person.Interfaces;
  type

    IPersonClient = interface(IPerson)
    ['{F161D2AD-F126-4C58-816F-3A3727AD785A}']
      function Addresses(AAddresses: TList<IPersonAddress>): IPersonClient; overload;
      function Addresses: TList<IPersonAddress>; overload;

      function Phones(APhones: TList<IPersonPhone>): IPersonClient; overload;
      function Phones: TList<IPersonPhone>; overload;

      function WebAddresses(AWebAddresses: TList<IPersonWeb>): IPersonClient; overload;
      function WebAddresses: TList<IPersonWeb>; overload;

      function Documents(ADocuments: TList<IPersonDocument>): IPersonClient; overload;
      function Documents: TList<IPersonDocument>; overload;

    end;
implementation

end.
