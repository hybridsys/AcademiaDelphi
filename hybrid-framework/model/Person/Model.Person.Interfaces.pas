unit Model.Person.Interfaces;

interface
  uses Model.Util.ActiveStatus, Model.Person.Types;

  type
    IPerson = interface
    ['{6D638831-E31A-4B1D-9215-0FB819C72FA2}']
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



    end;


implementation


end.
