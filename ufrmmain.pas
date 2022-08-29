unit ufrmmain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Controller.Interfaces, Vcl.ExtCtrls, Vcl.DBCtrls, RxDBCtrl, Controller.Entities, Model.Entity.Interfaces,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    dsClient: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FController: IController;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
  FController.Entities.Client.DataSet(dsClient).Open;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  ReportMemoryLeaksOnShutdown := true;
end;

end.
