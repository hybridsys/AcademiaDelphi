unit Model.City.Interfaces;

interface
  type
    ICity = interface
      ['{4BA5F1FC-53B9-40FA-BE7E-1FD41371C2E4}']
      function CityName(ACityName: string): ICity; overload;
      function CityName: string; overload;

      function CityIBGE( ACityIBGE: string): ICity; overload;
      function CityIBGE: string; overload;

      function CityEnrollDate(ACityEnrollDate: TDateTime): ICity; overload;
      function CityEnrollDate: TDateTime; overload;

      function CityState(ACityState: string): ICity; overload;
      function CityState:string; overload;

    end;

implementation

end.
