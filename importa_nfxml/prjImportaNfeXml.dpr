program prjImportaNfeXml;

uses
  Forms,
  uimporta_nfxml in 'uimporta_nfxml.pas' {fImporta_XML},
  uProdutoFornecedor in 'uProdutoFornecedor.pas' {fProdutoFornec},
  uProdutoProc in 'uProdutoProc.pas' {fProdutoProc};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfImporta_XML, fImporta_XML);
  Application.CreateForm(TfProdutoFornec, fProdutoFornec);
  Application.CreateForm(TfProdutoProc, fProdutoProc);
  Application.Run;
end.
