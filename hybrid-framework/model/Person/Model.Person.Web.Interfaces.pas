unit Model.Person.Web.Interfaces;

interface
  uses Model.Person.Web.WebType;

  type
    IPersonWeb = interface
    ['{2DE26AA2-03A0-48CB-884F-2E492A00B915}']
      function webAddress(AWebAddress: string):IPersonWeb; overload;
      function webAddress: string; overload;

      function webType: TWebType; overload;
      function webType(AWebType: TWebType): IPersonWeb;overload;

    end;
implementation



end.
