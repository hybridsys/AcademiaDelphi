program testfw;

uses
  Vcl.Forms,
  ufrmmain in 'ufrmmain.pas' {Form1},
  Model.Person.Interfaces in 'hybrid-framework\model\Person\Model.Person.Interfaces.pas',
  Model.Person.Address.Interfaces in 'hybrid-framework\model\Person\Model.Person.Address.Interfaces.pas',
  Model.Person.Phone.Interfaces in 'hybrid-framework\model\Person\Model.Person.Phone.Interfaces.pas',
  Model.Phone.Types in 'hybrid-framework\model\Person\Model.Phone.Types.pas',
  Model.City.Interfaces in 'hybrid-framework\model\Person\Model.City.Interfaces.pas',
  Model.Person.Address.AddressType in 'hybrid-framework\model\Person\Model.Person.Address.AddressType.pas',
  Model.Person.Document.Interfaces in 'hybrid-framework\model\Person\Model.Person.Document.Interfaces.pas',
  Model.Person.Web.Interfaces in 'hybrid-framework\model\Person\Model.Person.Web.Interfaces.pas',
  Model.Person.Web.WebType in 'hybrid-framework\model\Person\Model.Person.Web.WebType.pas',
  Model.Util.ActiveStatus in 'hybrid-framework\model\Util\Model.Util.ActiveStatus.pas',
  Model.Person.Client.Interfaces in 'hybrid-framework\model\Person\Model.Person.Client.Interfaces.pas',
  Model.Person.ClientClass in 'hybrid-framework\model\Person\Model.Person.ClientClass.pas',
  Model.Person.AddressClass in 'hybrid-framework\model\Person\Model.Person.AddressClass.pas',
  Model.Person.Types in 'hybrid-framework\model\Person\Model.Person.Types.pas',
  Model.CityClass in 'hybrid-framework\model\Person\Model.CityClass.pas',
  Model.Person.DocumentClass in 'hybrid-framework\model\Person\Model.Person.DocumentClass.pas',
  Model.Person.PhoneClass in 'hybrid-framework\model\Person\Model.Person.PhoneClass.pas',
  Model.Person.WebClass in 'hybrid-framework\model\Person\Model.Person.WebClass.pas',
  Model.Connection.SQLDirect in 'hybrid-framework\model\Database\Connection\Model.Connection.SQLDirect.pas',
  Model.Connection.Interfaces in 'hybrid-framework\model\Database\Connection\Model.Connection.Interfaces.pas',
  Model.Query.SQLDirect in 'hybrid-framework\model\Database\Query\Model.Query.SQLDirect.pas',
  Model.Query.Interfaces in 'hybrid-framework\model\Database\Query\Model.Query.Interfaces.pas',
  Model.Factory.Connection.Interfaces in 'hybrid-framework\model\Database\Connection\Model.Factory.Connection.Interfaces.pas',
  Model.Connection.Factory in 'hybrid-framework\model\Database\Connection\Model.Connection.Factory.pas',
  Model.Entity.Interfaces in 'hybrid-framework\model\Entity\Model.Entity.Interfaces.pas',
  Model.Client.Entity in 'hybrid-framework\model\Entity\Model.Client.Entity.pas',
  Model.Entity.Factory.Interfaces in 'hybrid-framework\model\Entity\Model.Entity.Factory.Interfaces.pas',
  Model.Entity.Factory in 'hybrid-framework\model\Entity\Model.Entity.Factory.pas',
  Controller.Entities in 'hybrid-framework\controller\Controller.Entities.pas',
  Controller.Interfaces in 'hybrid-framework\controller\Controller.Interfaces.pas',
  Model.Connection.FireDAC in 'hybrid-framework\model\Database\Connection\Model.Connection.FireDAC.pas',
  Model.Query.FireDAC in 'hybrid-framework\model\Database\Query\Model.Query.FireDAC.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
