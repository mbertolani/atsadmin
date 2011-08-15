unit uEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, TFlatGaugeUnit, Buttons,
  IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, FMTBcd, DB, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, JvDBUltimGrid, Provider, DBClient, SqlExpr,IdSSLOpenSSL, dateutils;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Label86: TLabel;
    Label73: TLabel;
    FlatGauge1: TFlatGauge;
    edtAssunto: TEdit;
    Memo1: TMemo;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
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
  SSL : TIdSSLIOHandlerSocket;

begin
  Cursor := crHourGlass;

  if (not cdsEnvia.Active) then
    cdsEnvia.Open;

  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;

  FlatGauge1.MaxValue := cdsEnvia.RecordCount;



  SSL := TIdSSLIOHandlerSocket.Create(nil);

  SSL.SSLOptions.Method := sslvSSLv2;
  SSL.SSLOptions.Mode := sslmClient;

{ seta as propriedades do componente IdSMTP }

  IdSMTP1.IOHandler := SSL;

  //IdSmtp1.AuthenticationType := utUseImplicitTLS;
  //IdSMTP1.Host := 'smtp.gmail.com';
  //IdSMTP1.Port := 465;

  IdSMTP1.AuthenticationType := atLogin;


  if (cdsEnvia.RecordCount > 0) then
  begin
    cdsEnvia.DisableControls;
    cdsEnvia.First;
    while not cdsEnvia.Eof do
    begin
      // dados da mensagem
      // e-mail do remetente
      IdMessage1.From.Address := dm.cds_empresaE_MAIL.AsString;

      // e-mail do destinatário
      IdMessage1.Recipients.EMailAddresses := 'comercial@atsti.com.br';// cdsEnviaEMAIL.AsString;
      // Assunto
      IdMessage1.Subject := edtAssunto.Text;
      // Cabeçalho da mensagem
      IdMessage1.Body.Add(('Senhores Pais :'));
      IdMessage1.Body.Add('');//linha em branco espaço
      IdMessage1.Body.Add('');//linha em branco espaço
      // Corpo da mensagem
      IdMessage1.Body.Add(Memo1.Text);
      //fim da mensagem
      //Configuração do IdSMTP SMTP
      IdSMTP1.Host := dm.cds_empresaSMTP.AsString;
      // Port do Provedor =  25
      IdSMTP1.Port := dm.cds_empresaPORTA.AsInteger;
      // Login do usuário
      IdSMTP1.Username := dm.cds_empresaE_MAIL.AsString;
      // Password Senha do usuário
      IdSMTP1.Password := dm.cds_empresaSENHA.AsString;
      try
        IdSMTP1.Connect;
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
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  if (not cdsEnvia.Active) then
    cdsEnvia.Open;

end;

end.
