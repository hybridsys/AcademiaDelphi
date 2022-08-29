unit Model.Person.DocumentClass;

interface

uses
  Model.Person.Document.Interfaces;

  type
    TPersonDocument = class(TInterfacedObject, IPersonDocument)
    private
      FDateExpedition: TDateTime;
    FDepartamentExpedition: string;
    FId: string;

    public

      function Id(AId: string): IPersonDocument; overload;
      function Id: string; overload;

      function dateExpedition: TdateTime; overload;
      function dateExpedition(ADateExpedition: TDateTime): IPersonDocument;overload;

      function departamentExpedition(ADepartamentExpedition: string): IPersonDocument; overload;
      function departamentExpedition: string; overload;

    end;
implementation

{ TPersonDocument }

function TPersonDocument.dateExpedition(ADateExpedition: TDateTime): IPersonDocument;
begin
  Result := Self;
  FDateExpedition := ADateExpedition;
end;

function TPersonDocument.dateExpedition: TdateTime;
begin
  Result := FDateExpedition;
end;

function TPersonDocument.departamentExpedition(ADepartamentExpedition: string): IPersonDocument;
begin
  Result := Self;
  FDepartamentExpedition := ADepartamentExpedition;
end;

function TPersonDocument.departamentExpedition: string;
begin
  Result := FDepartamentExpedition;
end;

function TPersonDocument.Id(AId: string): IPersonDocument;
begin
  Result := Self;
  FId := AId;
end;

function TPersonDocument.Id: string;
begin
  Result := FId;
end;

end.
