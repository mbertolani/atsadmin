program prjImportaNfeXml;

uses
  Forms,
  uimporta_nfxml in 'uimporta_nfxml.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
