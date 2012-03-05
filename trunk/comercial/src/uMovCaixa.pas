unit uMovCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvBaseEdits, Mask, JvExMask, JvToolEdit, Buttons,
  ExtCtrls, MMJPanel, FMTBcd, DB, SqlExpr, DBClient, Provider, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, DBxPress, Menus;

type
  TfMovCaixa = class(TForm)
    MMJPanel2: TMMJPanel;
    Label5: TLabel;
    Label4: TLabel;
    btnAbrir: TBitBtn;
    btnFechar: TBitBtn;
    btnSair: TBitBtn;
    btnSaida: TBitBtn;
    btnEntrada: TBitBtn;
    Consulta: TBitBtn;
    eddata3: TJvDateEdit;
    eddata2: TJvDateEdit;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edValor: TJvCalcEdit;
    edhist: TEdit;
    ComboBox1: TComboBox;
    Label6: TLabel;
    sdsPlano: TSQLDataSet;
    sdsPlanoCODIGO: TIntegerField;
    sdsPlanoCONTA: TStringField;
    sdsPlanoCONTAPAI: TStringField;
    sdsPlanoNOME: TStringField;
    sdsPlanoCONSOLIDA: TStringField;
    sdsPlanoDESCRICAO: TStringField;
    sdsPlanoRATEIO: TStringField;
    sdsPlanoCODREDUZIDO: TStringField;
    sdsPlanoREDUZRECEITA: TStringField;
    fmo: TJvDBGrid;
    sCaixa: TSQLDataSet;
    sCaixaDTAPAGTO: TDateField;
    sCaixaORDEM: TSmallintField;
    sCaixaDESCRICAO: TStringField;
    sCaixaVALORC: TFloatField;
    sCaixaVALORD: TFloatField;
    sCaixaVALOR: TFloatField;
    sCaixaCONTACONTABIL: TStringField;
    sCaixaCAIXA: TStringField;
    sCaixaCODCONTA: TStringField;
    sCaixaFORMA: TStringField;
    dCaixa: TDataSetProvider;
    cCaixa: TClientDataSet;
    cCaixaDTAPAGTO: TDateField;
    cCaixaORDEM: TSmallintField;
    cCaixaDESCRICAO: TStringField;
    cCaixaVALORC: TFloatField;
    cCaixaVALORD: TFloatField;
    cCaixaVALOR: TFloatField;
    cCaixaCONTACONTABIL: TStringField;
    cCaixaCAIXA: TStringField;
    cCaixaCODCONTA: TStringField;
    cCaixaFORMA: TStringField;
    dsrcaixa: TDataSource;
    sdsPlano1: TSQLDataSet;
    sdsPlano1CODIGO: TIntegerField;
    sdsPlano1CONTA: TStringField;
    sdsPlano1CONTAPAI: TStringField;
    sdsPlano1NOME: TStringField;
    sdsPlano1CONSOLIDA: TStringField;
    sdsPlano1DESCRICAO: TStringField;
    sdsPlano1RATEIO: TStringField;
    sdsPlano1CODREDUZIDO: TStringField;
    sdsPlano1REDUZRECEITA: TStringField;
    sdsContas: TSQLDataSet;
    sdsContasCODIGO: TIntegerField;
    sdsContasCONTA: TStringField;
    sdsContasCONTAPAI: TStringField;
    sdsContasNOME: TStringField;
    sdsContasCONSOLIDA: TStringField;
    sdsContasDESCRICAO: TStringField;
    sdsContasRATEIO: TStringField;
    sdsContasCODREDUZIDO: TStringField;
    sdsContasREDUZRECEITA: TStringField;
    sdsCaixa1: TSQLDataSet;
    sCaixaControle: TSQLDataSet;
    dCaixaControle: TDataSetProvider;
    cCaixaControle: TClientDataSet;
    cCaixaControleIDCAIXACONTROLE: TIntegerField;
    cCaixaControleCODCAIXA: TIntegerField;
    cCaixaControleCODUSUARIO: TIntegerField;
    cCaixaControleDATAFECHAMENTO: TDateField;
    cCaixaControleSITUACAO: TStringField;
    cCaixaControleMAQUINA: TStringField;
    cCaixaControleDATAABERTURA: TDateField;
    cCaixaControleVALORABRE: TFloatField;
    cCaixaControleVALORFECHA: TFloatField;
    sCaixaControleIDCAIXACONTROLE: TIntegerField;
    sCaixaControleCODCAIXA: TIntegerField;
    sCaixaControleCODUSUARIO: TIntegerField;
    sCaixaControleDATAFECHAMENTO: TDateField;
    sCaixaControleSITUACAO: TStringField;
    sCaixaControleMAQUINA: TStringField;
    sCaixaControleDATAABERTURA: TDateField;
    sCaixaControleVALORABRE: TFloatField;
    sCaixaControleVALORFECHA: TFloatField;
    sdsCaixa1IDCAIXACONTROLE: TIntegerField;
    sdsCaixa1CODCAIXA: TIntegerField;
    sdsCaixa1CODUSUARIO: TIntegerField;
    sdsCaixa1DATAFECHAMENTO: TDateField;
    sdsCaixa1SITUACAO: TStringField;
    sdsCaixa1MAQUINA: TStringField;
    sdsCaixa1DATAABERTURA: TDateField;
    sdsCaixa1VALORABRE: TFloatField;
    sdsCaixa1VALORFECHA: TFloatField;
    sCaixaControleNOMECAIXA: TStringField;
    cCaixaControleNOMECAIXA: TStringField;
    sdsCaixa1NOMECAIXA: TStringField;
    sdsPlano2: TSQLDataSet;
    sdsPlano2NOME: TStringField;
    sdsPlano2CONTAPAI: TStringField;
    sdsPlano2CODIGO: TIntegerField;
    sdsPlano2CONTA: TStringField;
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;
    sdsPegaCodigo: TSQLDataSet;
    sdsPegaCodigoCODVENDA: TIntegerField;
    sdsPegaCodigoCODMOVIMENTO: TIntegerField;
    sdsMovDet: TSQLDataSet;
    sdsPagamento: TSQLDataSet;
    sdsMovDetCODDETALHE: TIntegerField;
    sdsPagamentoCODPAGAMENTO: TIntegerField;
    PopupMenu1: TPopupMenu;
    AbrirCaixa1: TMenuItem;
    Sangria1: TMenuItem;
    Entrada1: TMenuItem;
    FecharCaixa1: TMenuItem;
    Sair1: TMenuItem;
    sqsCaixa: TSQLDataSet;
    sqsCaixaIDCAIXACONTROLE: TIntegerField;
    sqsCaixaCODCAIXA: TIntegerField;
    sqsCaixaCODUSUARIO: TIntegerField;
    sqsCaixaDATAFECHAMENTO: TDateField;
    sqsCaixaSITUACAO: TStringField;
    sqsCaixaMAQUINA: TStringField;
    sqsCaixaDATAABERTURA: TDateField;
    sqsCaixaVALORABRE: TFloatField;
    sqsCaixaVALORFECHA: TFloatField;
    sqsCaixaNOMECAIXA: TStringField;
    dspPegaCodigo: TDataSetProvider;
    sPegaCodigo: TClientDataSet;
    sPegaCodigoCODVENDA: TIntegerField;
    sPegaCodigoCODMOVIMENTO: TIntegerField;
    dspMovDet: TDataSetProvider;
    sMovDet: TClientDataSet;
    sMovDetCODDETALHE: TIntegerField;
    dspPagamento: TDataSetProvider;
    sPagamento: TClientDataSet;
    sPagamentoCODPAGAMENTO: TIntegerField;
    dspPlano2: TDataSetProvider;
    sPlano2: TClientDataSet;
    sPlano2NOME: TStringField;
    sPlano2CONTAPAI: TStringField;
    sPlano2CODIGO: TIntegerField;
    sPlano2CONTA: TStringField;
    dspPlano: TDataSetProvider;
    sPlano: TClientDataSet;
    sPlanoCODIGO: TIntegerField;
    sPlanoCONTA: TStringField;
    sPlanoCONTAPAI: TStringField;
    sPlanoNOME: TStringField;
    sPlanoCONSOLIDA: TStringField;
    sPlanoDESCRICAO: TStringField;
    sPlanoRATEIO: TStringField;
    sPlanoCODREDUZIDO: TStringField;
    sPlanoREDUZRECEITA: TStringField;
    dspPlano1: TDataSetProvider;
    sPlano1: TClientDataSet;
    sPlano1CODIGO: TIntegerField;
    sPlano1CONTA: TStringField;
    sPlano1CONTAPAI: TStringField;
    sPlano1NOME: TStringField;
    sPlano1CONSOLIDA: TStringField;
    sPlano1DESCRICAO: TStringField;
    sPlano1RATEIO: TStringField;
    sPlano1CODREDUZIDO: TStringField;
    sPlano1REDUZRECEITA: TStringField;
    dspContas: TDataSetProvider;
    sContas: TClientDataSet;
    sContasCODIGO: TIntegerField;
    sContasCONTA: TStringField;
    sContasCONTAPAI: TStringField;
    sContasNOME: TStringField;
    sContasCONSOLIDA: TStringField;
    sContasDESCRICAO: TStringField;
    sContasRATEIO: TStringField;
    sContasCODREDUZIDO: TStringField;
    sContasREDUZRECEITA: TStringField;
    sCaixa1: TClientDataSet;
    dspCaixa1: TDataSetProvider;
    sCaixa1IDCAIXACONTROLE: TIntegerField;
    sCaixa1CODCAIXA: TIntegerField;
    sCaixa1CODUSUARIO: TIntegerField;
    sCaixa1DATAFECHAMENTO: TDateField;
    sCaixa1SITUACAO: TStringField;
    sCaixa1MAQUINA: TStringField;
    sCaixa1DATAABERTURA: TDateField;
    sCaixa1VALORABRE: TFloatField;
    sCaixa1VALORFECHA: TFloatField;
    sCaixa1NOMECAIXA: TStringField;
    dspCaixa: TDataSetProvider;
    sdsCaixa: TClientDataSet;
    sdsCaixaIDCAIXACONTROLE: TIntegerField;
    sdsCaixaCODCAIXA: TIntegerField;
    sdsCaixaCODUSUARIO: TIntegerField;
    sdsCaixaDATAFECHAMENTO: TDateField;
    sdsCaixaSITUACAO: TStringField;
    sdsCaixaMAQUINA: TStringField;
    sdsCaixaDATAABERTURA: TDateField;
    sdsCaixaVALORABRE: TFloatField;
    sdsCaixaVALORFECHA: TFloatField;
    sdsCaixaNOMECAIXA: TStringField;
    S_CAIXA: TSQLDataSet;
    S_CAIXACODIGO: TIntegerField;
    cbbDebito: TComboBox;
    lbl1: TLabel;
    cbbCredito: TComboBox;
    lbl2: TLabel;
    S_DEB_CRED: TSQLDataSet;
    IntegerField1: TIntegerField;
    S_DEB_CREDNOME: TStringField;
    S_CAIXACONTA: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnEntradaClick(Sender: TObject);
    procedure btnSaidaClick(Sender: TObject);
    procedure ConsultaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirCaixa;
    procedure FecharCaixa;
    procedure saidaCaixa;
    procedure entradaCaixa;
    procedure imprimicaixa;
  public
    { Public declarations }
  end;

var
  fMovCaixa: TfMovCaixa;
  varCodColab, CODIGODEORIGEM : integer;
  varValor : Double;
  TD: TTransactionDesc;
  DATAFECHAMENTO : TDate;

implementation

uses UDm, UDM_MOV;

{$R *.dfm}

procedure TfMovCaixa.FormShow(Sender: TObject);
var
  codigoCaixa, caixabanco, ccusto : string;
begin
  //------Pego do Parametro o cadigo para listar os Caixas ---
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'LISTARCAIXA';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    codigoCaixa := dm.cds_parametroDADOS.AsString;
    sPlano.close;
    sPlano.Params[0].AsString := codigoCaixa;
    sPlano.Open;
    sPlano.First;
    ComboBox1.Items.Clear;
    while not sPlano.Eof do
    begin
       ComboBox1.Items.Add(sPlanoNOME.AsString);
       sPlano.Next;
    end;
    sPlano.Close;
  end
  else
  begin
    MessageDlg('é preciso cadastrar Parametro LISTARCAIXA, com a conta pai para CAIXAS.', mtConfirmation, [mbok], 0);
    exit;
  end;
  dm.cds_parametro.Close;

  if (not S_DEB_CRED.Active) then
     S_DEB_CRED.Open;
  S_DEB_CRED.First;
  while not S_DEB_CRED.Eof do
  begin
     cbbDebito.Items.Add(S_DEB_CREDNOME.AsString);
     cbbCredito.Items.Add(S_DEB_CREDNOME.AsString);
     S_DEB_CRED.Next;
  end;
  S_DEB_CRED.Close;
  //Verifica se caixa está aberto na MAQUINA
  if (sCaixa1.Active) then
    sCaixa1.Close;
  sCaixa1.Params[0].AsString := MICRO;
  sCaixa1.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixa1.Open;
  if (not sCaixa1.IsEmpty) then
  begin
     ComboBox1.Text := sCaixa1NOMECAIXA.AsString;
     ComboBox1.Enabled := False;
     btnAbrir.Enabled := False;
     //edData.Date := Now;
     eddata2.Date := sCaixa1DATAABERTURA.AsDateTime;
     eddata3.Date := Now;
     Consulta.Click;
  end
  else
  begin
    //edData.Date := Now;
    btnAbrir.Enabled := True;
    btnFechar.Enabled := False;
    btnSaida.Enabled := False;
    btnEntrada.Enabled := False;
  end;
  if (eddata2.Text = '  /  /    ') then
    eddata2.Date := Now;
  if (eddata3.Text = '  /  /    ') then
    eddata3.Date := Now;
  sCaixa1.Close;

end;

procedure TfMovCaixa.btnAbrirClick(Sender: TObject);
begin
  // Insere na tabela caixa controle
{  if (not cCaixaControle.Active) then
    cCaixaControle.Open;
  cCaixaControle.Append;
  cCaixaControleCODUSUARIO.AsInteger := usulog;
  cCaixaControleNOMECAIXA.AsString := ComboBox1.Text;
  cCaixaControleDATAFECHAMENTO.AsDateTime := now; //Populo pq o campo é obrigatório
  cCaixaControleSITUACAO.AsString := 'A';
  cCaixaControleMAQUINA.AsString := MICRO;
  cCaixaControleDATAABERTURA.AsDateTime := edData.Date;
  cCaixaControleVALORABRE.Value := edValor.Value;
  cCaixaControle.ApplyUpdates(0);
  cCaixaControle.Close;

  if (sCaixa1.Active) then
    sCaixa1.Close;
  sCaixa1.Params[0].AsString := MICRO;
  sCaixa1.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixa1.Open;

  CODIGODEORIGEM := sCaixa1IDCAIXACONTROLE.AsInteger;

  DATAFECHAMENTO := edData.Date;
  AbrirCaixa;
  btnAbrir.Enabled := False;
  btnSaida.Enabled := True;
  btnEntrada.Enabled := True;
  btnFechar.Enabled := True;       }
end;

procedure TfMovCaixa.AbrirCaixa;
 Var
   var_sqla : string;
   cod_id, var_usuario, primeiro_lanc : integer;
begin
{     var_usuario := usulog;
    //  Conta Débito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    primeiro_lanc := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(CODIGODEORIGEM); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', edData.Date); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    // Busco Codigo Caixa
    if (not sPlano1.Active) then
      sPlano1.Open;
    sPlano1.Locate('NOME',ComboBox1.Text, [loCaseInsensitive]);
    var_sqla := var_sqla + ',' + QuotedStr(sPlano1CONTA.AsString); //CONTA CAIXA
    sPlano1.Close;
    var_sqla := var_sqla + ',' + '0'; //VALOR CREDITO
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + 'ABERTURA DE CAIXA';
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    //Conta crédito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;

    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(CODIGODEORIGEM); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', edData.Date); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    if (not sPlano1.Active) then
      sPlano1.Open;
    sPlano1.Locate('NOME','ABRECAIXA', [loCaseInsensitive]);
    var_sqla := var_sqla + ',' + QuotedStr(sPlano1CONTA.AsString); //CONTA ABERTURA DE CAIXA
    sPlano1.Close;
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0'; //Valor Debito
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);


    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + 'ABERTURA DE CAIXA';
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    if (not sPlano1.Active) then
      sPlano1.Open;
    sPlano1.Locate('NOME',ComboBox1.Text, [loCaseInsensitive]);
  if (cCaixa.Active) then
    cCaixa.Close;
  // Peda o número do primeiro lancamento
  cCaixa.Params[0].AsDate := StrToDate(edData.Text);
  cCaixa.Params[1].AsDate := StrToDate(edData.Text);
  cCaixa.Params[2].AsInteger := sPlano1CODIGO.asInteger;
  sPlano1.Close;
  cCaixa.Open;

  Consulta.Click;
  }
end;

procedure TfMovCaixa.entradaCaixa;
Var
   var_sqla : string;
   cod_id, var_usuario, primeiro_lanc : integer;
begin
    if (sCaixa1.Active) then
      sCaixa1.Close;
    sCaixa1.Params[0].AsString := MICRO;
    sCaixa1.Params[1].AsString := 'A'; //Caixa Aberto
    sCaixa1.Open;

     var_usuario := usulog;
    //  Conta Débito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    primeiro_lanc := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(cod_id); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', sCaixa1DATAABERTURA.AsDateTime); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    // CONTA CAIXA
   { if (not sPlano1.Active) then
      sPlano1.Open;
    sPlano1.Locate('NOME',ComboBox1.Text, [loCaseInsensitive]);
    var_sqla := var_sqla + ',' + QuotedStr(sPlano1CONTA.AsString); //CONTA CAIXA
    sPlano1.Close;
    }
    if (S_CAIXA.Active) then
        S_CAIXA.Close;
    S_CAIXA.Params[0].AsString := cbbDebito.Text;
    S_CAIXA.Open;
    var_sqla := var_sqla + ',' + QuotedStr(S_CAIXACONTA.AsString);
    S_CAIXA.Close;

    var_sqla := var_sqla + ',' + '0'; //VALOR CREDITO
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    if (edHist.Text = '') then
      edHist.Text := 'ENTRADA';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + edHist.Text;
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    //Conta crédito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;

    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(CODIGODEORIGEM); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', sCaixa1DATAABERTURA.AsDateTime); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO

{    if (not sPlano1.Active) then
      sPlano1.Open;
    sPlano1.Locate('NOME','ENTRADA', [loCaseInsensitive]);
    var_sqla := var_sqla + ',' + QuotedStr(sPlano1CONTA.AsString); //CONTA ABERTURA DE CAIXA
    sPlano1.Close;
 }
    if (S_CAIXA.Active) then
        S_CAIXA.Close;
    S_CAIXA.Params[0].AsString := cbbCredito.Text;
    S_CAIXA.Open;
    var_sqla := var_sqla + ',' + QuotedStr(S_CAIXACONTA.AsString);
    S_CAIXA.Close;

    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0'; //Valor Debito
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + edHist.Text;
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

{  if (cCaixa.Active) then
    cCaixa.Close;
  cCaixa.Params[0].AsDate := StrToDate(edData.Text);
  cCaixa.Params[1].AsDate := StrToDate(edData.Text);
  sPlano1.Close;
  cCaixa.Open;}
  Consulta.Click;
end;

procedure TfMovCaixa.FecharCaixa;
 Var
   var_sqla : string;
   cod_id, var_usuario, primeiro_lanc : integer;
begin
     if (sCaixa1.Active) then
       sCaixa1.Close;
     sCaixa1.Params[0].AsString := MICRO;
     sCaixa1.Params[1].AsString := 'A'; //Caixa Aberto
     sCaixa1.Open;

     var_usuario := usulog;
    //  Conta Débito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    primeiro_lanc := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(cod_id); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', sCaixa1DATAABERTURA.AsDateTime); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    //Conta FHECHA CAIXA
   { if (not sPlano1.Active) then
      sPlano1.Open;
    sPlano1.Locate('NOME','FECHACAIXA', [loCaseInsensitive]);
    var_sqla := var_sqla + ',' + QuotedStr(sPlano1CONTA.AsString); //CONTA FECUAMENTO DE CAIXA
    sPlano1.Close;
    }
    if (S_CAIXA.Active) then
        S_CAIXA.Close;
    S_CAIXA.Params[0].AsString := ComboBox1.Text;
    S_CAIXA.Open;
    var_sqla := var_sqla + ',' + QuotedStr(S_CAIXACONTA.AsString);
    S_CAIXA.Close;

    var_sqla := var_sqla + ',' + '0'; //VALOR CREDITO
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + 'FECHAMENTO DE CAIXA';
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    //Conta crédito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;

    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(cod_id); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', sCaixa1DATAABERTURA.AsDateTime); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    // CONTA CAIXA
   { if (not sPlano1.Active) then
      sPlano1.Open;
    sPlano1.Locate('NOME',ComboBox1.Text, [loCaseInsensitive]);
    var_sqla := var_sqla + ',' + QuotedStr(sPlano1CONTA.AsString); //CONTA CAIXA
    sPlano1.Close;
    }
    if (S_CAIXA.Active) then
        S_CAIXA.Close;
    S_CAIXA.Params[0].AsString := ComboBox1.Text;
    S_CAIXA.Open;
    var_sqla := var_sqla + ',' + QuotedStr(S_CAIXACONTA.AsString);
    S_CAIXA.Close;

    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0'; //Valor Debito
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + 'FECHAMENTO DE CAIXA';
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
 {
  if (cCaixa.Active) then
    cCaixa.Close;
  cCaixa.Params[0].AsDate := StrToDate(edData.Text);
  cCaixa.Params[1].AsDate := StrToDate(edData.Text);
  cCaixa.Params[2].AsInteger := sPlano1CODIGO.asInteger;
  sPlano1.Close;
  cCaixa.Open;
  }
    Consulta.Click;
end;

procedure TfMovCaixa.saidaCaixa;
 Var
   var_sqla : string;
   cod_id, var_usuario, primeiro_lanc, v_ccusto, v_codCaixa : integer;
begin
    if (sCaixa1.Active) then
      sCaixa1.Close;
    sCaixa1.Params[0].AsString := MICRO;
    sCaixa1.Params[1].AsString := 'A'; //Caixa Aberto
    sCaixa1.Open;
    var_usuario := usulog;

    If (S_CAIXA.Active) Then
        S_CAIXA.Close;
    S_CAIXA.Params[0].AsString := ComboBox1.Text;
    S_CAIXA.Open;
    v_codCaixa := S_CAIXACODIGO.AsInteger;
    v_ccusto := S_CAIXACODIGO.AsInteger;
    S_CAIXA.Close;

    //  Conta Débito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    primeiro_lanc := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(v_codCaixa); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy',sCaixa1DATAABERTURA.AsDateTime); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(v_ccusto); //CODCUSTO

    // Conta Contabil de Lançamento de Débito
  {  if (not sPlano1.Active) then
      sPlano1.Open;
    sPlano1.Locate('NOME','SANGRIA', [loCaseInsensitive]);
    var_sqla := var_sqla + ',' + QuotedStr(sPlano1CONTA.AsString);
    sPlano1.Close;
    }
    if (S_CAIXA.Active) then
        S_CAIXA.Close;
    S_CAIXA.Params[0].AsString := cbbDebito.Text;
    S_CAIXA.Open;
    var_sqla := var_sqla + ',' + QuotedStr(S_CAIXACONTA.AsString);
    S_CAIXA.Close;

    var_sqla := var_sqla + ',' + '0'; //VALOR CREDITO
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    if (edHist.Text = '') then
      edHist.Text := 'SANGRIA';
    var_sqla := var_sqla + ',''' + edHist.Text;
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    //Conta crédito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;

    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(cod_id); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', sCaixa1DATAABERTURA.AsDateTime); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    // CONTA CAIXA
  {  if (not sPlano1.Active) then
      sPlano1.Open;
    sPlano1.Locate('NOME',ComboBox1.Text, [loCaseInsensitive]);
    var_sqla := var_sqla + ',' + QuotedStr(sPlano1CONTA.AsString); //CONTA CAIXA
    sPlano1.Close;
   }
    if (S_CAIXA.Active) then
        S_CAIXA.Close;
    S_CAIXA.Params[0].AsString := cbbCredito.Text;
    S_CAIXA.Open;
    var_sqla := var_sqla + ',' + QuotedStr(S_CAIXACONTA.AsString);
    S_CAIXA.Close;

    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0'; //Valor Debito
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    if (edHist.Text = '') then
      edHist.Text := 'SANGRIA';                
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + edHist.Text;
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
{  if (cCaixa.Active) then
    cCaixa.Close;
  cCaixa.Params[0].AsDate := StrToDate(edData.Text);
  cCaixa.Params[1].AsDate := StrToDate(edData.Text);
  sPlano1.Close;
  cCaixa.Open;   }
    Consulta.Click;
end;

procedure TfMovCaixa.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfMovCaixa.btnFecharClick(Sender: TObject);
var strSql : String;
    idCaixa : integer;
begin
  if (edValor.Value = 0) then
    edValor.Value := cCaixaVALOR.Value;
  FecharCaixa;
  // Pego o caixa na tabela controle caixa
  if (sCaixa1.Active) then
    sCaixa1.Close;
  sCaixa1.Params[0].AsString := MICRO;
  sCaixa1.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixa1.Open;
  if (cCaixaControle.Active) then
     cCaixaControle.Close;
  cCaixaControle.Params[0].AsInteger := sCaixa1IDCAIXACONTROLE.AsInteger;
  cCaixaControle.Open;
  cCaixaControle.Edit;
  cCaixaControleDATAFECHAMENTO.AsDateTime := sCaixa1DATAABERTURA.AsDateTime;
  cCaixaControleSITUACAO.AsString := 'F';
  cCaixaControleVALORFECHA.Value := edValor.Value;
  idCaixa := cCaixaControleIDCAIXACONTROLE.AsInteger;
  cCaixaControle.ApplyUpdates(0);
  //
 { cCaixa.First;
  while not cCaixa.Eof do
  begin
    strSql := 'UPDATE RECEBIMENTO SET CODORIGEM = ' + IntToStr(idCaixa) +
              ' where CODRECEBIMENTO = ' + IntToStr(cCaixaCODRECEBIMENTO.AsInteger);
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes
       MessageDlg('Erro no sistema, Update Recebimento falhou.', mtError, [mbOk], 0);
    end;
    // Update no CAMPO CODORIGEM1 da tabela PAGANETO
    if (sPegaCodigo.Active) then
       sPegaCodigo.Close;
    sPegaCodigo.Params[0].AsInteger := cCaixaCODRECEBIMENTO.AsInteger;
    sPegaCodigo.Open;
    if (sMovDet.Active) then
      sMovDet.Close;
    sMovDet.Params[0].AsInteger := sPegaCodigoCODMOVIMENTO.AsInteger;
    sMovDet.Open;
    sMovDet.First;
    while not sMovDet.Eof do
    begin
       if (sPagamento.Active) then
         sPagamento.Close;
       sPagamento.Params[0].AsInteger := sMovDetCODDETALHE.AsInteger;
       sPagamento.Open;
       if (not sPagamento.IsEmpty) then
       begin
          strSql := 'UPDATE PAGAMENTO SET CODORIGEM1 = ' + IntToStr(idCaixa) +
                    ' where CODPAGAMENTO = ' + IntToStr(sPagamentoCODPAGAMENTO.AsInteger);
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes
             MessageDlg('Erro no sistema, Update Recebimento falhou.', mtError, [mbOk], 0);
          end;
       end;
       sMovDet.Next;
    end;
    sMovDet.Close;
    sPegaCodigo.Close;
    sPagamento.Close;
    cCaixa.next;
  end; }
  cCaixa.First; 
  //if MessageDlg('Imprimir Caixa ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  //  imprimicaixa;
  cCaixaControle.Close;
  // Atualizo Campo SITUACAO da TABELA RECEBIMENTO
  strSql := 'UPDATE RECEBIMENTO SET SITUACAO = 1 where SITUACAO = 0';
  dm.sqlsisAdimin.StartTransaction(TD);
  dm.sqlsisAdimin.ExecuteDirect(strSql);
  Try
     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes
     MessageDlg('Erro no sistema, Update Recebimento falhou.', mtError, [mbOk], 0);
  end;
  // Atualizo Campo STATUS da TABELA MOVIMENTOCONT
  strSql := 'UPDATE MOVIMENTOCONT SET STATUS = 1 where STATUS = 0';
  dm.sqlsisAdimin.StartTransaction(TD);
  dm.sqlsisAdimin.ExecuteDirect(strSql);
  Try
     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes
     MessageDlg('Erro no sistema, Update Recebimento falhou.', mtError, [mbOk], 0);
  end;
   sCaixa1.Close;
end;

procedure TfMovCaixa.btnEntradaClick(Sender: TObject);
begin
  entradaCaixa;
end;

procedure TfMovCaixa.btnSaidaClick(Sender: TObject);
begin
  saidaCaixa;
end;

procedure TfMovCaixa.ConsultaClick(Sender: TObject);
begin
  if (sdsCaixa.Active) then
    sdsCaixa.Close;
  sdsCaixa.Params[0].AsString := ComboBox1.Text;
  sdsCaixa.Params[1].AsDate := eddata2.Date;
  sdsCaixa.Open;

  if (cCaixa.Active) then
    cCaixa.Close;

  if (not sPlano1.Active) then
    sPlano1.Open;
  sPlano1.Locate('NOME',ComboBox1.Text, [loCaseInsensitive]);
  // Pede o número do primeiro lancamento
  cCaixa.Params[0].AsDate := StrToDate(eddata2.Text);
  cCaixa.Params[1].AsDate := StrToDate(eddata3.Text);
  cCaixa.Params[2].AsInteger := 0;//sPlano1CODIGO.AsInteger;
  cCaixa.Params[3].AsInteger := dm_mov.ID_CCUSTO; //sdsCaixaIDCAIXACONTROLE.AsInteger;
  cCaixa.Open;
  sPlano1.Close;
  sdsCaixa.Close;
end;


procedure TfMovCaixa.imprimicaixa;
const
cJustif = #27#97#51;
cEject = #12;
{ Tamanho da fonte }
c10cpi = #18;
c12cpi = #27#77;
c17cpi = #15;
cIExpandido = #14;
cFExpandido = #20;
{ Formatação da fonte }
cINegrito = #27#71;
cFNegrito = #27#72;
cIItalico = #27#52;
cFItalico = #27#53;

var
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6, texto7, logradouro,cep,fone : string;//Para recortar parte da descrição do produto,nome
  total, porc, totgeral : double;
  porta : string;
  vNomeCliente, vEnderecoCliente, vFonecli : string;
Begin
  {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
  dm.cds_parametro.Open;
  if not dm.cds_parametro.IsEmpty then
  begin
    porta := dm.cds_parametroDADOS.AsString;
  end
  else
  begin
    dm.cds_parametro.Append;
    dm.cds_parametroDESCRICAO.AsString := 'Porta usada para impressoras de CUPOM';
    dm.cds_parametroPARAMETRO.AsString := 'PORTA IMPRESSORA';
    dm.cds_parametroDADOS.AsString := 'LPT1:';
    dm.cds_parametro.ApplyUpdates(0);
    porta := 'LPT1:';
  end;
  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endereço-----}
  Texto  := '                NINFAS N. CLUB                ' ;
  Texto1 := '----------------------------------------------' ;
  Texto2 := '              FECHAMENTO DE CAIXA             ' ;
  Texto7 := ComboBox1.Text;
  Texto3 := 'Dia : ' + DateTimeToStr(Now);
  Texto4 := 'Desc.           V.Deb.     V.Cred.       SALDO' ;
  Texto5 := '----------------------------------------------';
  {-----------------------------------------------------------}
  {-------------------Imprimi Cabeçalho-----------------------}
  // Para gravar em arquivo
  //OpenDialog1.Execute;
  //AssignFile(IMPRESSORA, OpenDialog1.FileName);
  AssignFile(IMPRESSORA,porta);
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi, texto);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(Impressora, c10cpi, texto2);
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(Impressora, c10cpi, texto7);  //CLIENTE
  //Writeln(Impressora, c10cpi, texto3);  //DATA
  Writeln(Impressora, c10cpi, texto5);
  Writeln(Impressora, c10cpi, texto4);
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  {-----------------------------------------------------------}
  {-------------------Imprimi itens do boleto-----------------}
  cCaixa.First;
  while not cCaixa.Eof do
  begin
    cCaixa.RecordCount;
    texto6 := cCaixaDTAPAGTO.AsString;
    texto7 := cCaixaDESCRICAO.AsString;
    Write(Impressora, c10cpi, texto6);
    Write(Impressora, c10cpi, '  ' + texto7);
    Write(Impressora, c10cpi + Format('%-1.0n',[cCaixaVALORD.AsFloat]));
    Write(Impressora, c10cpi + Format('     %-8.2n',[cCaixaVALORC.AsFloat]));
    Writeln(Impressora, c10cpi + Format(' %-9.2n',[cCaixaVALOR.value]));
    cCaixa.next;
  end;
  {-----------------------------------------------------------}
  {-------------------Imprimi final do Pedido-----------------}
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(IMPRESSORA);
//  Texto5 := '               Total : R$   ';
  //Write(Impressora, c10cpi, texto5 );
  //total := cCaixaControleVALORFECHA.Value;
  //Writeln(Impressora, c10cpi + Format('   %-6.2n',[total]));
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  CloseFile(IMPRESSORA);
end;

procedure TfMovCaixa.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Imprimir Caixa ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    imprimicaixa;
end;

end.
