unit Model.Person.ClientClass;

interface

uses
  Model.Person.Interfaces, Model.Util.ActiveStatus,
  Model.Person.Client.Interfaces, Model.Person.Address.Interfaces,
  Model.Person.Phone.Interfaces, Model.Person.Web.Interfaces,
  Model.Person.Document.Interfaces, System.Generics.Collections,
  Model.Person.Types;

  type
    TPersonClient = class(TInterfacedObject, IPersonClient)
    private
      FId: Integer;
      FPersonName: string;
      FPersonEnrollDate: TDateTime;
      FPersonActiveStatus: TActiveStatus;
      FPersonNotes: string;
      FPhones: TList<IPersonPhone>;
      FWebAddresses: TList<IPersonWeb>;
      FAddresses: TList<IPersonAddress>;
      FDocuments: TList<IPersonDocument>;
      FPersonType: PersonType;
    public
      function Id(AId: Integer):IPerson; overload;
      function Id: Integer; overload;

      function PersonName(APersonName: string): IPerson; overload;
      function PersonName: string; overload;

      function PersonEnrollDateTime( APersonEnrollDateTime: TDateTime): IPerson; overload;
      function PersonEnrollDateTime: TDateTime; overload;

      function PersonNotes(APersonNotes: string): IPerson; overload;
      function PersonNotes: string; overload;

      function PersonStatus(AStatus: TActiveStatus): IPerson; overload;
      function PersonStatus: TActiveStatus; overload;

      function PersonType(APersonType: PersonType): IPerson; overload;
      function PersonType: PersonType; overload;

      function Addresses(AAddresses: TList<IPersonAddress>): IPersonClient; overload;
      function Addresses: TList<IPersonAddress>; overload;

      function Phones(APhones: TList<IPersonPhone>): IPersonClient; overload;
      function Phones: TList<IPersonPhone>; overload;

      function WebAddresses(AWebAddresses: TList<IPersonWeb>): IPersonClient; overload;
      function WebAddresses: TList<IPersonWeb>; overload;

      function Documents(ADocuments: TList<IPersonDocument>): IPersonClient; overload;
      function Documents: TList<IPersonDocument>; overload;

      constructor Create;

      class function New: IPersonClient;

    end;
implementation

{ TPersonClient }

constructor TPersonClient.Create;
begin
  FAddresses := TList<IPersonAddress>.Create;
  FDocuments := TList<IPersonDocument>.Create;
  FPhones := TList<IPersonPhone>.Create;
  FWebAddresses := TList<IPersonWeb>.Create;
end;

function TPersonClient.Addresses: TList<IPersonAddress>;
begin
  Result := FAddresses;
end;

function TPersonClient.Addresses(AAddresses: TList<IPersonAddress>): IPersonClient;
begin
  Result := Self;
  FAddresses := AAddresses;
end;

function TPersonClient.Documents(ADocuments: TList<IPersonDocument>): IPersonClient;
begin
  Result := Self;
  FDocuments := ADocuments;
end;

function TPersonClient.Documents: TList<IPersonDocument>;
begin
  Result := FDocuments;
end;

function TPersonClient.Id: Integer;
begin
  Result := FId;
end;

class function TPersonClient.New: IPersonClient;
begin
  Result := Self.Create;
end;

function TPersonClient.Id(AId: Integer): IPerson;
begin
  Result := Self as IPerson;
  FId := AId;
end;

function TPersonClient.PersonEnrollDateTime(APersonEnrollDateTime: TDateTime): IPerson;
begin
  Result := Self as IPerson;
  FPersonEnrollDate := APersonEnrollDateTime;
end;

function TPersonClient.PersonEnrollDateTime: TDateTime;
begin
  Result := FPersonEnrollDate;
end;

function TPersonClient.PersonName: string;
begin
  Result := FPersonName;
end;

function TPersonClient.PersonName(APersonName: string): IPerson;
begin
  Result := Self as IPerson;
  FPersonName := APersonName;
end;

function TPersonClient.PersonNotes: string;
begin
  Result := FPersonNotes;
end;

function TPersonClient.PersonNotes(APersonNotes: string): IPerson;
begin
  Result := Self as IPerson;
  FPersonNotes := APersonNotes;
end;

function TPersonClient.PersonStatus(AStatus: TActiveStatus): IPerson;
begin
  Result := Self as IPerson;
  FPersonActiveStatus := AStatus;
end;

function TPersonClient.PersonStatus: TActiveStatus;
begin
  Result := FPersonActiveStatus;
end;

function TPersonClient.PersonType: PersonType;
begin
  Result := FPersonType;
end;

function TPersonClient.PersonType(APersonType: PersonType): IPerson;
begin
  Result := Self as IPerson;
  FPersonType := APersonType;
end;

function TPersonClient.Phones: TList<IPersonPhone>;
begin
  Result := FPhones
end;

function TPersonClient.Phones(APhones: TList<IPersonPhone>): IPersonClient;
begin
  FPhones := APhones;
end;

function TPersonClient.WebAddresses(AWebAddresses: TList<IPersonWeb>): IPersonClient;
begin
  FWebAddresses := AWebAddresses;
  Result := Self;
end;

function TPersonClient.WebAddresses: TList<IPersonWeb>;
begin
  Result := FWebAddresses;
end;

end.
