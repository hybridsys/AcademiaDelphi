unit Model.Person.Phone.Interfaces;

interface

  uses Model.Phone.Types;

  type
    IPersonPhone = interface
    ['{78599B33-D228-4228-99DD-361F947DE5C2}']
      function PhoneCountry(APhoneCountry: String): IPersonPhone; overload;
      function PhoneCountry: string; overload;
      function PhoneNumber(APhoneNumber: String): IPersonPhone; overload;
      function PhoneNumber: string; overload;
      function PhoneType(APhoneType: PhoneType): IPersonPhone; overload;
      function PhoneType: PhoneType; overload;
      function PhoneBrand(APhoneBrand: PhoneBrand): IPersonPhone; overload;
      function PhoneBrand: PhoneBrand; overload;

    end;
implementation

end.
