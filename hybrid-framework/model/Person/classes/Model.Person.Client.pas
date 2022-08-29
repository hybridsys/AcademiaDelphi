unit Model.Person.Client;

interface
  uses Model.Person.Address.Interfaces;


  type
    IPersonClient = interface
      function clientAddresses(AAddresses: TList<T>): IPersonClient;

    end;
implementation


end.
