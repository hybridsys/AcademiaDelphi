unit Model.Person.PhoneClass;

interface

uses
  Model.Person.Phone.Interfaces, Model.Phone.Types;
  type
    TPhone = class(TInterfacedObject, IPersonPhone)
    private
      FPhoneBrand: PhoneBrand;
      FPhoneCountry: string;
      FPhoneNumber: string;
      FPhoneType: PhoneType;
    public
      function PhoneCountry(APhoneCountry: String): IPersonPhone; overload;
      function PhoneCountry: string; overload;
      function PhoneNumber(APhoneNumber: String): IPersonPhone; overload;
      function PhoneNumber: string; overload;
      function PhoneType(APhoneType: PhoneType): IPersonPhone; overload;
      function PhoneType: PhoneType; overload;
      function PhoneBrand(APhoneBrand: PhoneBrand): IPersonPhone; overload;
      function PhoneBrand: PhoneBrand; overload;
      class function New: IPersonPhone;
   end;

implementation

{ TPhone }

class function TPhone.New: IPersonPhone;
begin
  Result := Self.Create;
end;

function TPhone.PhoneBrand: PhoneBrand;
begin
  Result := FPhoneBrand;
end;

function TPhone.PhoneBrand(APhoneBrand: PhoneBrand): IPersonPhone;
begin
  Result := Self;
  FPhoneBrand := APhoneBrand;
end;

function TPhone.PhoneCountry(APhoneCountry: String): IPersonPhone;
begin
  Result := Self;
  FPhoneCountry := APhoneCountry;
end;

function TPhone.PhoneCountry: string;
begin
  Result := FPhoneCountry;
end;

function TPhone.PhoneNumber(APhoneNumber: String): IPersonPhone;
begin
  Result := Self;
  FPhoneNumber := APhoneNumber;
end;

function TPhone.PhoneNumber: string;
begin
  Result := FPhoneNumber;
end;

function TPhone.PhoneType(APhoneType: PhoneType): IPersonPhone;
begin
  Result := Self;
  FPhoneType := APhoneType;
end;

function TPhone.PhoneType: PhoneType;
begin
  Result := FPhoneType;
end;

end.
