unit Model.Person.Document.Interfaces;

interface
  type
    IPersonDocument = interface
      ['{36057396-20A6-4725-A674-C7AE73680451}']
      function Id(AId: string): IPersonDocument; overload;
      function Id: string; overload;

      function dateExpedition: TdateTime; overload;
      function dateExpedition(ADateExpedition: TDateTime): IPersonDocument;overload;

      function departamentExpedition(ADepartamentExpedition: string): IPersonDocument; overload;
      function departamentExpedition: string; overload;

  end;
implementation

end.
