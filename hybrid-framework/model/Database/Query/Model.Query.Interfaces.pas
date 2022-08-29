unit Model.Query.Interfaces;

interface
  uses
    data.DB;
type

  IQuery = interface
    ['{F3DAB72A-482A-452E-9B27-E2DFC8837F1B}']

    function Open: IQuery;
    function Query: TDataset;
    function SQL(ATextSQL: string): IQuery;

  end;

implementation

end.
