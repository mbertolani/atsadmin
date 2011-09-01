unit uEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, TFlatGaugeUnit, Buttons,
  IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, FMTBcd, DB, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, JvDBUltimGrid, Provider, DBClient, SqlExpr,IdSSLOpenSSL, dateutils,
  JvExStdCtrls, JvRichEdit, RXCtrls, ComCtrls,dbxpress, DBCtrls ;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Label86: TLabel;
    Label73: TLabel;
    FlatGauge1: TFlatGauge;
    edtAssunto: TEdit;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    SQLDataSet1: TSQLDataSet;
    cdsEnvia: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    dsEnvia: TDataSource;
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsEnviaCODEMAIL: TIntegerField;
    cdsEnviaEMAIL: TStringField;
    cdsEnviaASSUNTO: TStringField;
    cdsEnviaDATAENVIO: TDateField;
    lbxAnexos: TTextListBox;
    BitBtn2: TBitBtn;
    dlgOpenAnexos: TOpenDialog;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    btnAdiconar: TBitBtn;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    edText: TJvRichEdit;
    lbl1: TLabel;
    dbedtCODEMAIL: TDBEdit;
    lbl2: TLabel;
    dbedtEMAIL: TDBEdit;
    lbl3: TLabel;
    dbedtDATAENVIO: TDBEdit;
    dbgrd1: TDBGrid;
    lbl4: TLabel;
    dbedtASSUNTO: TDBEdit;
    sqldtst1: TSQLDataSet;
    ds1: TClientDataSet;
    DataSetProvider2: TDataSetProvider;
    ds2: TDataSource;
    ds1CODEMAIL: TIntegerField;
    ds1EMAIL: TStringField;
    ds1ASSUNTO: TStringField;
    ds1DATAENVIO: TDateField;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnAdiconarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure pgc1Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
        TD: TTransactionDesc;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UDm;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var email,responsavel:string;
   Anexo : Integer;   
begin
  Cursor := crHourGlass;

  if (not cdsEnvia.Active) then
    cdsEnvia.Open;

  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;

  FlatGauge1.MaxValue := cdsEnvia.RecordCount;


  if (cdsEnvia.RecordCount > 0) then
  begin
    cdsEnvia.DisableControls;
    cdsEnvia.First;
    while not cdsEnvia.Eof do
    begin
     // cria a parte HTML
      //Html := TIdText.Create(IdMessage1.MessageParts);
       //Coloca o Logotipo da Empresa
             {                       Html.Body.Text := '<html><body>' + '<img src="cid:imagem.jpg" >' + '</p>';
                                    Html.Body.Text := Html.Body.Text + '<font color="#000080"><b><u>REMESSA DE ARQUIVO DE FATURA</u></b><br>';
                                    Html.Body.Text := Html.Body.Text + 'Data Fechamento da Fatura = ' + StrDataFechamento + '<br>';
                                    Html.Body.Text := Html.Body.Text + 'Número da Fatura = ' + StrCodigoFatura + '<br>';
                                    Html.Body.Text := Html.Body.Text + 'Valor da Fatura = R$'+ StrValorFatura + '<br>';
                                    Html.Body.Text := Html.Body.Text + '</body></html>';
                                    Html.ContentType := 'text/html';                 //
              }

      //Html.Body.Text := edText.Lines.GetText;
      //Html.ContentType := 'text/html';
      //IdMessage1.Body.Add(edText.Lines.GetText);

                                            //
                                   { Anexo := TIdAttachment.Create(idmessage1.MessageParts, 'c:\imagem.jpg');
                                    Anexo.ContentType := 'image/jpg';
                                     Anexo.Headers.Add('Content-ID: <imagem.jpg>');


      TIdAttachment.Create(IdMessage1.MessageParts,imagem.jpg);}



      // dados da mensagem
      // e-mail do remetente
      IdMessage1.From.Address := 'atsti@bol.com.br' ; //
      // e-mail do destinatário
      IdMessage1.Recipients.EMailAddresses := cdsEnviaEMAIL.AsString;
      // Assunto

      IdMessage1.Subject := edtAssunto.Text;


      // Cabeçalho da mensagem
     // IdMessage1.Body.Add('<TR>');
     // IdMessage1.Body.Add('<TD><A href="http://www.atsti.com.br/publicidade/" target=_blank><IMG style="DISPLAY: block" border=0 alt="Gerenciador Comercial Nota Fiscal Eletronica"');
     // IdMessage1.Body.Add('src="http://www.atsti.com.br/publicidade/images/index_01.jpg"');
     // IdMessage1.Body.Add('width=670></A></TD>');
     // IdMessage1.Body.Add('</TR>');
     // IdMessage1.Body.Add('<TR>');
     //IdMessage1.Body.Add('<TD><A href="http://www.atsti.com.br/publicidade/" target=_blank><IMG src="http://www.atsti.com.br/publicidade/images/index_02.jpg" alt="Gerenciador Comercial Nota Fiscal Eletronica"');
     // IdMessage1.Body.Add('width=670 border=0 style="DISPLAY: block"></A></TD>');
     // IdMessage1.Body.Add('</TR>');
      //IdMessage1.Body.Add('dedede');//linha em branco espaço
      //IdMessage1.Body.Add('ggsgsg');//linha em branco espaço
      // Corpo da mensagem
      IdMessage1.Body.Add(edText.Text);

      IdMessage1.ContentType := 'text/html';

     // TIdAttachment.Create(IdMessage1.MessageParts, TFileName('C:\home\avisos\gerenciador.jpg'));
      for Anexo := 0 to lbxAnexos.Items.Count-1 do
      TIdAttachment.Create(idmessage1.MessageParts, TFileName(lbxAnexos.Items.Strings[Anexo]));


      //fim da mensagem
      //Configuração do IdSMTP SMTP
      IdSMTP1.Host := 'smtps.bol.com.br';
      // Port do Provedor
      IdSMTP1.Port := 587;
      // Login do usuário
      IdSMTP1.Username := 'atsti@bol.com.br' ;
      // Password Senha do usuário
      IdSMTP1.Password := 'a2t00s7' ;
      try
        IdSMTP1.Connect ;
        IdSMTP1.Authenticate; //Faz a autenticação
        IdSMTP1.Send(IdMessage1); //Envia a mensagem
        dm.sqlsisAdimin.ExecuteDirect('UPDATE EMAIL_ENVIAR SET DATAENVIO = ' +
        QuotedStr(Formatdatetime('mm/dd/yyyy', today)) +
        ' WHERE CODEMAIL = ' + IntToStr(cdsEnviaCODEMAIL.AsInteger));
        //MessageDlg('Email enviado com sucesso para, ' + FormCadastroAlunoConsulta.scdsAlunoNOME.AsString, mtWarning, [mbOK], 0);
      finally
        IdSMTP1.Disconnect;
        IdMessage1.Clear;
      end;
      FlatGauge1.Progress := cdsEnvia.recNo;
      cdsEnvia.Next;
    end;
  end;
  cdsEnvia.EnableControls;
  FlatGauge1.Progress := 0;
  Cursor := crDefault;
  Refresh;

  Application.MessageBox('Email enviado com sucesso!', 'Confirmação',
  MB_ICONINFORMATION +   MB_OK);

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  if (not cdsEnvia.Active) then
    cdsEnvia.Open;

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
if dlgOpenAnexos.Execute then
     lbxAnexos.Items.Add(dlgOpenAnexos.FileName);

end;

procedure TForm1.btnAdiconarClick(Sender: TObject);
begin
  if not(ds2.DataSet.Active) then
     ds2.DataSet.open;
  ds2.DataSet.Append;

end;

procedure TForm1.btnGravarClick(Sender: TObject);
begin
    if not(ds2.DataSet.Active) then
     ds2.DataSet.open;

    ds1CODEMAIL.AsInteger := StrToInt(dbedtCODEMAIL.Text);
    ds1EMAIL.AsString := dbedtEMAIL.Text;
    ds1ASSUNTO.AsString := edtAssunto.Text;
    ds1.ApplyUpdates(0) ;
    cdsEnvia.Close;
    cdsEnvia.Open
end;

procedure TForm1.btnExcluirClick(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  DM.sqlsisAdimin.StartTransaction(TD);
  try
    DM.sqlsisAdimin.ExecuteDirect('DELETE FROM EMAIL_ENVIAR WHERE CODEMAIL = ' +
      IntToStr(ds1CODEMAIL.AsInteger));
    DM.sqlsisAdimin.Commit(TD);
    MessageDlg('Item excluído com sucesso.', mtInformation, [mbOK], 0);
    ds1.Close;
    ds1.Open;
    cdsEnvia.Close;
    cdsEnvia.Open
  except
    DM.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para excluir Registro .', mtError, [mbOK], 0);
    exit;
  end;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TForm1.pgc1Change(Sender: TObject);
begin
    if not(ds1.Active) then
     ds1.open;
end;


procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  ds1.Cancel;
end;


procedure TForm1.BitBtn3Click(Sender: TObject);
begin
 lbxAnexos.Clear;
end;

end.

