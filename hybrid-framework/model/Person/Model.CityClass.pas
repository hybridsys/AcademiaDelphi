unit Model.CityClass;

interface

uses
  Model.City.Interfaces;
  type
    TCity = class(TInterfacedObject, ICity)
    private
      FCityEnrollDate: TDateTime;
      FCityIBGE: string;
      FCityName: string;
      FCityState: string;

    public
      function CityName(ACityName: string): ICity; overload;
      function CityName: string; overload;

      function CityIBGE( ACityIBGE: string): ICity; overload;
      function CityIBGE: string; overload;

      function CityEnrollDate(ACityEnrollDate: TDateTime): ICity; overload;
      function CityEnrollDate: TDateTime; overload;

      function CityState(ACityState: string): ICity; overload;
      function CityState:string; overload;

      class function New: ICity;
    end;
implementation

{ TCity }

function TCity.CityEnrollDate(ACityEnrollDate: TDateTime): ICity;
begin
  Result := Self;
  FCityEnrollDate := ACityEnrollDate;
end;

function TCity.CityEnrollDate: TDateTime;
begin
  Result := FCityEnrollDate;
end;

function TCity.CityIBGE: string;
begin
  Result := FCityIBGE;
end;

function TCity.CityIBGE(ACityIBGE: string): ICity;
begin
  Result := Self;
  FCityIBGE := ACityIBGE;
end;

function TCity.CityName(ACityName: string): ICity;
begin
  Result := Self;
  FCityName := ACityName;
end;

function TCity.CityName: string;
begin
  Result := FCityName;
end;

function TCity.CityState(ACityState: string): ICity;
begin
  Result := Self;
  FCityState := ACityState;
end;

function TCity.CityState: string;
begin
  Result := FCityState;
end;

class function TCity.New: ICity;
begin
  Result := Self.Create;
end;

end.
