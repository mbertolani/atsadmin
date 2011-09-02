unit uAtualizaSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FMTBcd, DB, SqlExpr, DBClient, Provider, DBXpress,
  Buttons, IniFiles, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP;

type
  TfAtualizaSistema = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    sqlVersao: TSQLQuery;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cds: TClientDataSet;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    btnSair: TBitBtn;
    Label2: TLabel;
    ftpupdate: TIdFTP;
    SQLQuery1: TSQLQuery;
    procedure FormCreate(Sender: TObject);
    procedure VerSeTemAtualiza;
    procedure VerBoleto(Empresa : String);
  private
    //STime: TDateTime;
    //tempo_medio:  double;
    //bytes_transf: longword;
    tamanho_arquivo : longword;
    procedure atualizaSistema;
    function VersaoAtual: String;
    function GetVersion: string;
    procedure ExecutaScript(script : string);
    procedure ExecutaSql(sql : string);
    procedure ExecutaDDL(Tabela, Campo, Tipo : string);
    procedure MudaVersao(versaoNova: string);
    function NaoExisteTabela(Tabela : String): Boolean;
    function NaoExisteGenerator(Generator: String): Boolean;

//    procedure ExecutaDDL_Drop(Tabela, Campo: string);
    { Private declarations }
  public
    TD: TTransactionDesc;
    versaoSistema, versao : string;
    { Public declarations }
  end;

var
  fAtualizaSistema: TfAtualizaSistema;

implementation

uses UDm, uAtsAdmin;

{$R *.dfm}

procedure TfAtualizaSistema.atualizaSistema;
var sql: string;
    IniAtualiza : TIniFile;
begin
  versao := GetVersion;
  versaoSistema := VersaoAtual;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  // Verificando o sistema
  //VerSeTemAtualiza;  // Vê se tem nova versão do aplicativo na web
  if (versaoSistema = '') then
  begin
    try
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect('INSERT INTO ATUALIZA(CODATUALIZA, VERSAO) ' +
        ' VALUES(5000, ' + QuotedStr('1.0.0.11') + ')');
      dm.sqlsisAdimin.Commit(TD);
      versaoSistema := '1.0.0.11';
    except
      dm.sqlsisAdimin.Rollback(TD);
    end;
  end;
  if (versaoSistema <> versao) then
  begin
    if (versaoSistema = '1.0.0.11') then
    begin
      executaDDL('COMPRA','PRAZO','VARCHAR(40)');
      executaDDL('VENDA','PRAZO','VARCHAR(40)');
      executaDDL('MOVIMENTODETALHE','CST','DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE','VALOR_ICMS','DOUBLE PRECISION');
      executaDDL('PAGAMENTO','SITUACAOCHEQUE','VARCHAR(10)');
      executaScript('sp_mov_caixaConsolida.sql');
      executaScript('sp_mov_caixa_ordemConsolida.sql');
      executaScript('sp_estoque_entsai.sql');
      executaScript('gera_rec_duplicatas.sql');
      executaScript('gera_rec_nf.sql');
      mudaVersao('1.0.0.12');
    end; // Fim Ataulização Versao 1.0.0.11

    if (versaoSistema = '1.0.0.12') then
    begin
      executaDDL('PARAMETRO','VALOR','DOUBLE PRECISION');
      executaSql('Insert into parametro (PARAMETRO, DADOS, D1, VALOR, CONFIGURADO) ' +
        ' Values (' + QuotedStr('1-A Vista') + ' ,' + QuotedStr('PRAZO') + ' ,' +
        QuotedStr('0') + ' ,' + '1, ' +
        QuotedStr('N') + ')');
      executaSql('Insert into parametro (PARAMETRO, DADOS, D1, D2, D3, VALOR, CONFIGURADO) ' +
        ' Values (' + QuotedStr('2-30,60,90') + ' ,' + QuotedStr('PRAZO') + ' ,' +
        QuotedStr('30') + ' ,' + QuotedStr('60') + ' ,' + QuotedStr('90') + ' , 3,' +
        QuotedStr('N') + ')');
      mudaVersao('1.0.0.13');
    end; // Fim Ataulização Versao 1.0.0.12

    if (versaoSistema = '1.0.0.13') then
    begin
      if (cds.Active) then
        cds.Close;
      cds.CommandText := 'select CODNATUREZA from NATUREZAOPERACAO' +
        ' WHERE CODNATUREZA = 12';
      cds.Open;
      if (cds.IsEmpty) then
      begin
        executaSql('Insert into NATUREZAOPERACAO(CODNATUREZA, DESCNATUREZA, ' +
          ' GERATITULO, TIPOTITULO, TIPOMOVIMENTO) ' +
          ' Values (12, ' + QuotedStr('Nota Fiscal') + ' ,1,0,12)');
      end;
      cds.Close;
      mudaVersao('1.0.0.14');
    end; // Fim Ataulização Versao 1.0.0.13

    if (versaoSistema = '1.0.0.14') then
    begin
      //executaScript('inclui_rec.sql');
      mudaVersao('1.0.0.15');
    end; // Fim Ataulização Versao 1.0.0.14

    if (versaoSistema = '1.0.0.15') then
    begin
      executaDDL('MOVIMENTODETALHE','VLR_BASE','DOUBLE PRECISION');
      executaScript('sp_mov_caixafluxo.sql');
      executaScript('sp_mov_caixaordemfluxo.sql');
      executaScript('sp_mov_caixa_ordemfluxo.sql');
      executaScript('fluxoentradasaida.sql');

      executaScript('fluxoentradasaidasintetico.sql');
      executaScript('insere_estoque.sql');
      //executaScript('listaProduto.sql');
      executaScript('insere_vlrBase.sql');
      {ExecutaSql('UPDATE MOVIMENTODETALHE SET LOTE = null where LOTE = ' +
        QuotedStr(''));}
      mudaVersao('1.0.0.16');
    end; // Fim Ataulização Versao 1.0.0.15

    if (versaoSistema = '1.0.0.16') then
    begin
      executaScript('altera_venda.sql');
      executaScript('altera_rec.sql');
      //executaScript('listaProduto.sql');
      executaScript('boleto.sql');
      //executaScript('gera_nf.sql');
      mudaVersao('1.0.0.17');
    end; // Fim Ataulização Versao 1.0.0.16

    if (versaoSistema = '1.0.0.17') then
    begin
      //executaScript('gera_rec_duplicatas.sql');
      //executaScript('gera_nf.sql');
      executaScript('trg_nf_cr_altera.sql');
      mudaVersao('1.0.0.18');
    end; // Fim Ataulização Versao 1.0.0.17

    if (versaoSistema = '1.0.0.18') then
    begin
      executaScript('recibo_cp.sql');
      mudaVersao('1.0.0.19');
    end; // Fim Ataulização Versao 1.0.0.18

    if (versaoSistema = '1.0.0.19') then
    begin
      executaSql('CREATE EXCEPTION nao_pode_excluir ' +
      QuotedStr('Registro não pode ser excluido,  existe venda/compra.'));
      executaScript('apaga_rec.sql');
      executaScript('proibe_exclusao_pag.sql');
      executaScript('proibe_exclusao_rec.sql');
      mudaVersao('1.0.0.20');
    end; // Fim Ataulização Versao 1.0.0.19

    if (versaoSistema = '1.0.0.20') then
    begin

      executaSql('CREATE EXCEPTION estoqueFechado ' +
        QuotedStr('Estoque fechado nesta data.'));
      executaSql('CREATE TABLE ESTOQUE_CONTROLE( ' +
        ' IDESTOQUECONTROLE Integer NOT NULL, ' +
        ' CODUSUARIO Integer NOT NULL, DATAFECHAMENTO Date NOT NULL, '+
        ' SITUACAO Char(1) NOT NULL, PRIMARY KEY (IDESTOQUECONTROLE))');

      executaSql('CREATE TABLE CAIXA_CONTROLE( ' +
        ' IDCAIXACONTROLE Integer NOT NULL, CODCAIXA INTEGER, ' +
        ' CODUSUARIO Integer NOT NULL, DATAFECHAMENTO Date NOT NULL, '+
        ' SITUACAO Char(1) NOT NULL, PRIMARY KEY (IDCAIXACONTROLE))');
      executaSql('CREATE GENERATOR IDESTOQUE_CONTROLE');
      executaSql('CREATE GENERATOR IDCAIXA_CONTROLE');

      executaSql('CREATE TRIGGER TRG_IDESTOQUE_CONTROLE FOR ESTOQUE_CONTROLE ACTIVE' +
                 ' BEFORE INSERT POSITION 0 ' +
                 ' AS  BEGIN ' +
                 ' IF(NEW.IDESTOQUECONTROLE IS NULL) THEN NEW.IDESTOQUECONTROLE =' +
                 ' GEN_ID(IDESTOQUE_CONTROLE ,1);  END ');
      executaSql('CREATE TRIGGER TRG_IDCAIXA_CONTROLE FOR CAIXA_CONTROLE ACTIVE' +
                 ' BEFORE INSERT POSITION 0 ' +
                 ' AS  BEGIN ' +
                 ' IF(NEW.IDCAIXACONTROLE IS NULL) THEN NEW.IDCAIXACONTROLE =' +
                 ' GEN_ID(IDCAIXA_CONTROLE,1);  END ');
      executaSql('create table cargosfuncoes (' +
                 ' cod_cargosfuncoes integer not null primary key, ' +
                 ' descricao varchar(100))');

      executaDDL('FUNCIONARIO', 'CODCLIENTE', 'integer');
      executaDDL('FUNCIONARIO', 'CODFORNECEDOR', 'integer');
      executaDDL('FUNCIONARIO', 'CLIFOR', 'char(1)');
      executaDDL('FUNCIONARIO', 'STATUS', 'CHAR(1)');
      executaDDL('RECEBIMENTO', 'SITUACAO', 'integer');
      executaDDL('VENDA', 'CODORIGEM', 'INTEGER');

      mudaVersao('1.0.0.21');
    end; // Fim Ataulização Versao 1.0.0.20

    if (versaoSistema = '1.0.0.21') then
    begin
      executaScript('inclui_rec.sql');
      executaScript('estoqueFechado.sql');
      executaScript('caixaFechadoPag.sql');
      executaScript('caixaFechadoContabil.sql');
      executaScript('caixaFechadoRecebimento.sql');
      executaDDL('NOTAFISCAL','IMPRESSA','CHAR(1)');
      mudaVersao('1.0.0.22');
    end; // Fim Ataulização Versao 1.0.0.21

    if (versaoSistema = '1.0.0.22') then
    begin
      executaScript('rel_vendaCompra.sql');
      executaScript('inclui_rec.sql');
      executaScript('resultadoporproduto.sql');
      mudaVersao('1.0.0.23');
    end; // Fim Ataulização Versao 1.0.0.22

    if (versaoSistema = '1.0.0.23') then
    begin
      executaScript('spestoque.sql');
      executaSql('CREATE TABLE arquivo_retorno( ' +
        'idArquivo int not null primary key, ' +
        'arquivo varchar(60) not null, ' +
        'idCampo varchar(10) not null, ' +
        'tamCampo varchar(10) not null, ' +
        'tipoCampo varchar(60))');
      executaSql('CREATE GENERATOR IDARQUIVO_RETORNO');
      mudaVersao('1.0.0.24');
    end; // Fim Ataulização Versao 1.0.0.23

    if (versaoSistema = '1.0.0.24') then
    begin
      mudaVersao('1.0.0.25');
    end; // Fim Ataulização Versao 1.0.0.24

    if (versaoSistema = '1.0.0.25') then
    begin
      executaDDL('CLIENTES','BLOQUEIO','CHAR(1)');
      executaDDL('CLIENTES','COD_TRANPORTADORA','INTEGER');
      executaDDL('TRANSPORTADORA','FONE','VARCHAR(15)');
      executaDDL('TRANSPORTADORA','FONE2','VARCHAR(15)');
      executaDDL('TRANSPORTADORA','FAX','VARCHAR(15)');
      executaDDL('TRANSPORTADORA','CONTATO','VARCHAR(40)');
      executaDDL('TRANSPORTADORA','BAIRRO','VARCHAR(40)');
      executaDDL('TRANSPORTADORA','CEP','VARCHAR(15)');
      executaDDL('MOVIMENTO', 'OBS', 'VARCHAR(100)');
      executaDDL('MOVIMENTODETALHE', 'PRECOULTIMACOMPRA', 'DOUBLE PRECISION');
      executaScript('produtoetiquetacompra.sql');
      executaScript('spEstoqueFiltro.sql');
      executaScript('retornaEstoqueCompra.sql');
      executaScript('CorrigeEstoque.sql');
      executaScript('apaga_estoque.sql');
      executaScript('retornaEstoqueVenda.sql');
      executaScript('mov_EstoqueCorrige.sql');
      mudaVersao('1.0.0.26');
    end; // Fim Ataulização Versao 1.0.0.25

    if (versaoSistema = '1.0.0.26') then
    begin
      executaScript('exclui_pag.sql');
      executaScript('SP_MOV_CAIXAFLUXO.sql');
      executaScript('SP_MOV_CAIXAORDEMFLUXO.sql');
      executaScript('fluxoentradasaida.sql');
      mudaVersao('1.0.0.27');
    end; // Fim Ataulização Versao 1.0.0.26

    if (versaoSistema = '1.0.0.27') then
    begin
      executaDDL('NOTAFISCAL','SERIE','VARCHAR(20)');
      mudaVersao('1.0.0.28');
    end; // Fim Ataulização Versao 1.0.0.27

    if (versaoSistema = '1.0.0.28') then
    begin
      executaScript('sp_contas_pendentes.sql');
      executaDDL('PRODUTOS', 'TIPOPRECOVENDA','char(1)');
      executaScript('listaProduto.sql');
      mudaVersao('1.0.0.29');
    end; // Fim Ataulização Versao 1.0.0.28

    if (versaoSistema = '1.0.0.29') then
    begin
      executaSql('INSERT INTO NATUREZAOPERACAO (CODNATUREZA, DESCNATUREZA, ' +
        ' GERATITULO, TIPOTITULO, TIPOMOVIMENTO, BAIXAMOVIMENTO)' +
        ' Values (15, ' + QuotedStr('NOTA FISCAL VENDA') + ' ,1 , 0, 15, null)');
      executaDDL('RECEBIMENTO', 'SITUACAOCHEQUE', 'Varchar(15)');
      executaDDL('RECEBIMENTO', 'BANCO', 'Varchar(60)');
      executaDDL('RECEBIMENTO', 'AGENCIA', 'Varchar(10)');
      executaDDL('RECEBIMENTO', 'CONTA', 'Varchar(10)');
      executaDDL('RECEBIMENTO', 'GERARQREM', 'INTEGER');
      executaDDL('RECEBIMENTO', 'DATAGERARQREM', 'DATE');
      executaDDL('RECEBIMENTO', 'SELECIONOU', 'char(1)');
      executaDDL('RECEBIMENTO', 'DESCONTADO', 'char(1)');
      executaDDL('RECEBIMENTO', 'SITUACAO', 'INTEGER');
      executaScript('gera_parcelas_rec.sql');
      executaScript('spestoqueproduto.sql');
      executaScript('altera_contabil.sql');
      executaScript('gera_valor.sql');
      executaScript('rel_rcbo.sql');
      executaDDL('MOVIMENTODETALHE','DESCPRODUTO','VARCHAR(300)');
      mudaVersao('1.0.0.30');
    end; // Fim Ataulização Versao 1.0.0.29

    if (versaoSistema = '1.0.0.30') then
    begin
     executaSql('CREATE EXCEPTION TIPOENDERECOREPETIDO ' +
        QuotedStr('Já existe endereço cadastrado com este tipo'));
      executaSql('CREATE EXCEPTION CNPJ_REPETIDO ' +
        QuotedStr('Já existe Cliente com este CNPJ/CPF.'));

      executaScript('tipoend_repetido.sql');
      executaScript('cnpj_repetido.sql');
      mudaVersao('1.0.0.31');
    end; // Fim Ataulização Versao 1.0.0.30

    if (versaoSistema = '1.0.0.31') then
    begin
      mudaVersao('1.0.0.32');
    end; // Fim Ataulização Versao 1.0.0.31

    if (versaoSistema = '1.0.0.32') then
    begin
      executaScript('gera_nf.sql');
      executaScript('relNotaFiscal.sql');
      mudaVersao('1.0.0.33');
    end; // Fim Ataulização Versao 1.0.0.32

    if (versaoSistema = '1.0.0.33') then
    begin
      executaDDL('ESTADO_ICMS', 'ICMS_SUBSTRIB', 'DOUBLE PRECISION');
      executaDDL('ESTADO_ICMS', 'ICMS_SUBSTRIB_IC', 'DOUBLE PRECISION');
      executaDDL('ESTADO_ICMS', 'ICMS_SUBSTRIB_IND', 'DOUBLE PRECISION');
      executaDDL('SERIES', 'ICMS_DESTACADO', 'DOUBLE PRECISION');
      mudaVersao('1.0.0.34');
    end; // Fim Ataulização Versao 1.0.0.33

    if (versaoSistema = '1.0.0.34') then
    begin
      executaScript('formata_doublePrecision.sql');
      mudaVersao('1.0.0.35');
    end; // Fim Ataulização Versao 1.0.0.34

    if (versaoSistema = '1.0.0.35') then
    begin
      executaSql('insert into PARAMETRO( ' +
        'DESCRICAO, PARAMETRO, CONFIGURADO, DADOS) ' +
        ' Values (' + QuotedStr('Serie usada para Controle de Maquinas') +
        ', ' + QuotedStr('SERIEMAQUINA') + ', ' + QuotedStr('S') +
        ', ' + QuotedStr('M') + ')');

      executaSql('insert into SERIES( ' +
        'SERIE, ULTIMO_NUMERO) ' +
        ' Values (' + QuotedStr('M') + ', ' + IntToStr(0) + ')');
      executaDDL('MOVIMENTODETALHE', 'PERIODOINI', 'timestamp');
      executaDDL('MOVIMENTODETALHE', 'PERIODOFIM', 'timestamp');
      mudaVersao('1.0.0.36');
    end; // Fim Ataulização Versao 1.0.0.35

    if (versaoSistema = '1.0.0.36') then
    begin
    executaDDL('CLASSIFICACAOFISCAL', 'Icms_subst', 'DOUBLE PRECISION');
    executaDDL('CLASSIFICACAOFISCAL', 'Icms_subst_ic', 'DOUBLE PRECISION');
    executaDDL('CLASSIFICACAOFISCAL', 'Icms_subst_ind', 'DOUBLE PRECISION');
     mudaVersao('1.0.0.37');
    end; // Fim Ataulização Versao 1.0.0.36

    if (versaoSistema = '1.0.0.37') then
    begin
      mudaVersao('1.0.0.38');
    end; // Fim Ataulização Versao 1.0.0.38

    if (versaoSistema = '1.0.0.38') then
    begin
      mudaVersao('1.0.0.39');
    end;  // Fim Ataulização Versao 1.0.0.39

    if(versaoSistema = '1.0.0.39') then
    begin

    executaDDL('MOVIMENTODETALHE', 'ICMS_SUBST', 'DOUBLE PRECISION');
    executaDDL('MOVIMENTODETALHE', 'ICMS_SUBSTD', 'DOUBLE PRECISION');

    executaDDL('NOTAFISCAL', 'ID_GUIA', 'INTEGER');
    executaSql ('CREATE TABLE GUIATRANSPORTE(' +
      'ID_GUIA Integer NOT NULL, ' +
      'CONHECIMENTO Integer, ' +
      'NATOP Varchar(60), ' +
      'CODIGO Varchar(20), ' +
      'EMISSAOLOCAL Varchar(60), ' +
      'COD_CLIENTE Integer, ' +
      'COD_CONSIGNATARIO Integer, ' +
      'COD_REDESPACHO Integer, ' +
      'PAGO Char(1), ' +
      'APAGAR Char(1), ' +
      'ID_TRANSPORTADORA Integer, ' +
      'BASECALCULO Double precision, ' +
      'ALIQUOTA Double precision, ' +
      'ICMS Double precision, ' +
      'FRETEPESOVOLUME Varchar(20), ' +
      'FRETEVALOR Double precision, ' +
      'CADSCE Varchar(15), ' +
      'DESPACHO Varchar(15), ' +
      'PEDAGIO Double precision, ' +
      'OUTROES Double precision, ' +
      'TOTALPRESTACAO Double precision, ' +
      'COLETA Varchar(100), ' +
      'ENTREGA Varchar(100), ' +
      'OBS Varchar(300), ' +
      'DATA Date, NOTAFISCAL Integer, ' +
      'VALOR_PROD1 Double precision, ' +
      'QUANTIDADE1 Double precision, ' +
      'UN1 Char(3), ' +
      'DESCPRODUTO1 Varchar(100), ' +
      'NOTAFISCAL2 Integer, ' +
      'VALOR_PROD2 Double precision, ' +
      'QUANTIDADE2 Double precision, ' +
      'UN2 Char(3), ' +
      'DESCPRODUTO2 Varchar(100), ' +
      'PRIMARY KEY (ID_GUIA))');
      executaSql('CREATE GENERATOR GEN_GUIA');
      mudaVersao('1.0.0.40');
    end;  // Fim Ataulização Versao 1.0.0.40

    if(versaoSistema = '1.0.0.40') then
    begin
        executaDDL('CLASSIFICACAOFISCAL', 'UF', 'char(2)');
    mudaVersao('1.0.0.41');
    end;  // Fim Ataulização Versao 1.0.0.41

        if(versaoSistema = '1.0.0.41') then
    begin
        executaSql ('CREATE TABLE CLASSIFICACAOFISCALPRODUTO( '+
        'COD_PROD Integer NOT NULL, ' +
        'CFOP Varchar(30) NOT NULL, ' +
        'UF Char(2) NOT NULL, ' +
        'ICMS_SUBST double precision, ' +
        'ICMS_SUBST_IC double precision, ' +
        'ICMS_SUBST_IND double precision, ' +
        'ICMS Double precision, ' +
        'ICMS_BASE Double precision, ' +
        'PRIMARY KEY (COD_PROD, CFOP, UF))');
    mudaVersao('1.0.0.42');
    end;  // Fim Ataulização Versao 1.0.0.42

    if (versaoSistema = '1.0.0.42') then
    begin
      executaDDL('NOTAFISCAL', 'SELECIONOU', 'CHAR(1)');
      executaDDL('RECEBIMENTO', 'SELECIONOU', 'CHAR(1)');
      executaDDL('PAGAMENTO', 'SELECIONOU', 'CHAR(1)');
      mudaVersao('1.0.0.43');
    end; // Fim Ataulização Versao 1.0.0.43

    if (versaoSistema = '1.0.0.43') then
    begin
      executaDDL('GUIATRANSPORTE', 'COD_REMETENTE', 'Integer');
      mudaVersao('1.0.0.44');
    end;  // Fim Ataulização Versao 1.0.0.44

    if (versaoSistema = '1.0.0.44') then
    begin
      mudaVersao('1.0.0.45');
    end;  // Fim Ataulização Versao 1.0.0.45

    if (versaoSistema = '1.0.0.45') then
    begin
      executaScript('fluxoentradasaidasintetico.sql');
      executaScript('novoitemvendafinalizada.sql');
      executaDDL('RECEBIMENTO', 'DESCONTADO', 'Char(1)');
      executaDDL('GUIATRANSPORTE', 'PLACA', 'VARCHAR(8)');
      executaScript('sp_mov_caixaSintetico.sql');
      executaScript('sp_mov_caixaSinteticoConsolida.sql');
      executaScript('sp_mov_caixa_ordemConsolida.sql');
      executaScript('caixa_ordem_sinteticoconsolida.sql');
      mudaVersao('1.0.0.46');
    end;  // Fim Ataulização Versao 1.0.0.46

    if (versaoSistema = '1.0.0.46') then
    begin
      executaDDL('GUIATRANSPORTE', 'CIDADE_TRANSP', 'VarChar(60)');
      executaDDL('GUIATRANSPORTE', 'UF_TRANSP', 'Char(2)');
      executaDDL('GUIATRANSPORTE', 'Total double', 'precision');
      executaDDL('GUIATRANSPORTE', 'Total2 double', 'precision');
      mudaVersao('1.0.0.47');
    end;  // Fim Ataulização Versao 1.0.0.47

    if (versaoSistema = '1.0.0.47') then
    begin
      executaDDL('ENDERECOCLIENTE', 'NUMERO', 'VarChar(5)');
      mudaVersao('1.0.0.48');
    end;  // Fim Ataulização Versao 1.0.0.48

    if (versaoSistema = '1.0.0.48') then
    begin
      executaDDL('EMPRESA', 'CCUSTO', 'Integer');
      mudaVersao('1.0.0.49');
    end;  // Fim Ataulização Versao 1.0.0.49

    if (versaoSistema = '1.0.0.49') then
    begin
      executaScript('sp_mov_caixafluxo.sql');
      executaScript('sp_mov_caixaordemfluxo.sql');
      executaDDL('LISTAPRECO', 'TIPOOPERACAO', 'char(1)');
      mudaVersao('1.0.0.50');
    end;  // Fim Ataulização Versao 1.0.0.50

    if (versaoSistema = '1.0.0.50') then
    begin
      executaScript('sp_contas_pagar.sql');
      executaScript('sp_despesas_pagar.sql');
      mudaVersao('1.0.0.51');
    end;  // Fim Ataulização Versao 1.0.0.51

    if (versaoSistema = '1.0.0.51') then
    begin
      executaScript('LISTAPRODUTOCLI.sql');
      executaScript('sp_divergencia.sql');
      mudaVersao('1.0.0.52');
    end;  // Fim Ataulização Versao 1.0.0.52

    if (versaoSistema = '1.0.0.52') then
    begin
      executaScript('mapeamentoestoque.sql');
      executaDDL('movimento', 'conferido', 'char(1)');
      mudaVersao('1.0.0.53');
    end;  // Fim Ataulização Versao 1.0.0.53

    if (versaoSistema = '1.0.0.53') then
    begin
      executaDDL('MOVIMENTO', 'nfcobranca', 'Integer');
      executaDDL('MOVIMENTO', 'ordematend', 'Integer');
      executaDDL('MOVIMENTO', 'nfrevenda', 'Integer');
      executaDDL('LOTES', 'serieini', 'Integer');
      executaDDL('LOTES', 'seriefim', 'Integer');
      mudaVersao('1.0.0.54');
    end;  // Fim Ataulização Versao 1.0.0.54

    if (versaoSistema = '1.0.0.54') then
    begin
      executaDDL('PRODUTOS', 'VALORMINIMO', 'Double Precision');
      executaDDL('PRODUTOS', 'VALORCOMISSAO', 'Double Precision');
      executaDDL('PRODUTOS', 'GERADESCONTO', 'char(1)');
      executaDDL('PRODUTOS', 'IMPRIMIR', 'char(1)');
      mudaVersao('1.0.0.55');
    end;  // Fim Ataulização Versao 1.0.0.55

    if (versaoSistema = '1.0.0.55') then
    begin
      //executaScript('CaixaFechadoRecebimento.sql');
      //executaScript('caixaFechadoPag.sql');
      mudaVersao('1.0.0.56');
    end;  // Fim Ataulização Versao 1.0.0.56

    if (versaoSistema = '1.0.0.56') then
    begin
      executaDDL('VENDA', 'CODORIGEM', 'INTEGER');
      executaScript('bloqueiaclientesatrasados.sql');
      executaScript('balancete.sql');
      executaScript('inclui_rec.sql');
      executaScript('LIMITECREDITO.sql');
      mudaVersao('1.0.0.57');
    end;  // Fim Ataulização Versao 1.0.0.57

    if (versaoSistema = '1.0.0.57') then
    begin
      executaScript('imprime_venda.sql');
      mudaVersao('1.0.0.58');
    end;  // Fim Ataulização Versao 1.0.0.58

    if (versaoSistema = '1.0.0.58') then
    begin
      executaDDL('EMPRESA', 'NUMERO', 'VarChar(5)');
      mudaVersao('1.0.0.59');
    end;  // Fim Ataulização Versao 1.0.0.59

    if (versaoSistema = '1.0.0.59') then
    begin
      executaDDL('PRODUTOS', 'ORIGEM', 'INTEGER');
      executaDDL('ENDERECOCLIENTE', 'CD_IBGE', 'Varchar(10)');
      executaDDL('EMPRESA', 'CD_IBGE', 'Varchar(10)');
      executaSql ('CREATE TABLE TB_IBGE( '+
        'NM_LOCALIDADE Varchar(40) NOT NULL   , ' +
        'CD_IBGE Varchar(10) NOT NULL, ' +
        'NM_MUNICIPIO Varchar(40), ' +
        'NM_TIPO_LOCALIDADE Varchar(20), ' +
        'SQ_IBGE Integer NOT NULL, ' +
        'CD_UF Char(2), ' +
        'PRIMARY KEY (SQ_IBGE))');
      mudaVersao('1.0.0.60');
    end;  // Fim Ataulização Versao 1.0.0.60

    if (versaoSistema = '1.0.0.60') then
    begin
      executaDDL('NOTAFISCAL', 'PROTOCOLOENV', 'Varchar(20)');
      executaDDL('NOTAFISCAL', 'NUMRECIBO', 'Varchar(20)');
      executaDDL('NOTAFISCAL', 'PROTOCOLOCANC', 'Varchar(20)');
      mudaVersao('1.0.0.61');
    end;  // Fim Ataulização Versao 1.0.0.61

    if (versaoSistema = '1.0.0.61') then
    begin
      executaDDL('PRODUTOS', 'NCM', 'Varchar(8)');
      mudaVersao('1.0.0.62');
    end;  // Fim Ataulização Versao 1.0.0.61

    if (versaoSistema = '1.0.0.62') then
    begin
      executaDDL('NOTAFISCAL','SERIE','VARCHAR(20)');
      executaSql('create TABLE OF_OF (OFId Integer not null ' +
         ', OFID_IND Smallint NOT NULL ' +
         ', OFData date, OFStatus char(1), OFQtdeSolic double precision, ' +
         ' OFQtdeProduz Double Precision, OFQtdePerda double precision, ' +
         ' OFMotivo varchar(100), codproduto integer ' +
         ' ,PRIMARY KEY (OFID,OFID_IND))');

      executaSql('CREATE GENERATOR GEN_OFID');

      executaSql('CREATE TRIGGER TRG_OFID FOR OF_OF ACTIVE' +
                 ' BEFORE INSERT POSITION 0 ' +
                 ' AS  BEGIN ' +
                 ' IF(NEW.OFID IS NULL) THEN NEW.OFID =' +
                 ' GEN_ID(GEN_OFID ,1);  END ');
      mudaVersao('1.0.0.63');
    end; // Fim Ataulização Versao 1.0.0.62

    if (versaoSistema = '1.0.0.63') then
    begin
      executaDDL('VEICULO', 'CHASSIS', 'VarChar(30)');
      executaDDL('FORNECEDOR', 'CODTRANSP', 'INTEGER');
      executaDDL('CLASSIFICACAOFISCALPRODUTO', 'CST', 'CHAR(03)');
      executaDDL('ESTADO_ICMS', 'CST', 'CHAR(03)');
      mudaVersao('1.0.0.64');
    end;  // Fim Ataulização Versao 1.0.0.64

    if (versaoSistema = '1.0.0.64') then
    begin
      executaSql('ALTER TABLE ENDERECOCLIENTE ALTER E_MAIL TYPE VARCHAR(100)');
      mudaVersao('1.0.0.65');
    end;  // Fim Ataulização Versao 1.0.0.65

    if (versaoSistema = '1.0.0.65') then
    begin
      executaScript('gera_nf_compra.sql');
      executaScript('desbloqueia_clientes.sql');
      mudaVersao('1.0.0.66');
    end;  // Fim Ataulização Versao 1.0.0.66

    if (versaoSistema = '1.0.0.66') then
    begin
      executaDDL('ENDERECOFORNECEDOR', 'CD_IBGE', 'Varchar(10)');
      executaDDL('ENDERECOFORNECEDOR', 'NUMERO', 'VarChar(5)');
      mudaVersao('1.0.0.67');
    end;  // Fim Ataulização Versao 1.0.0.67

    if (versaoSistema = '1.0.0.67') then
    begin
      executaDDL('ESTADO_ICMS', 'PESSOA', 'Varchar(8)');
      executaDDL('ESTADO_ICMS', 'PIS', 'Double Precision');
      executaDDL('ESTADO_ICMS', 'COFINS', 'Double Precision');
      executaDDL('ESTADO_ICMS', 'CSTIPI', 'Varchar(2)');
      executaDDL('ESTADO_ICMS', 'CSTPIS', 'Varchar(2)');
      executaDDL('ESTADO_ICMS', 'CSTCOFINS', 'Varchar(2)');
      executaDDL('ESTADO_ICMS', 'DADOSADC1', 'Varchar(200)');
      executaDDL('ESTADO_ICMS', 'DADOSADC2', 'Varchar(200)');
      executaDDL('ESTADO_ICMS', 'DADOSADC3', 'Varchar(200)');
      executaDDL('ESTADO_ICMS', 'DADOSADC4', 'Varchar(200)');
      mudaVersao('1.0.0.68');
    end;  // Fim Ataulização Versao 1.0.0.68

    if (versaoSistema = '1.0.0.68') then
    begin
      executaDDL('RECEBIMENTO', 'SITUACAOCHEQUE', 'Varchar(15)');
      executaDDL('RECEBIMENTO', 'BANCO', 'Varchar(60)');
      executaDDL('RECEBIMENTO', 'AGENCIA', 'Varchar(10)');
      executaDDL('RECEBIMENTO', 'CONTA', 'Varchar(10)');
      executaDDL('RECEBIMENTO', 'GERARQREM', 'INTEGER');
      executaDDL('RECEBIMENTO', 'DATAGERARQREM', 'DATE');
      executaDDL('RECEBIMENTO', 'SELECIONOU', 'char(1)');
      executaDDL('RECEBIMENTO', 'DESCONTADO', 'char(1)');
      executaDDL('RECEBIMENTO', 'SITUACAO', 'INTEGER');
      executaScript('corrige_fatura.sql');
      executaScript('CorrigeEstoque.sql');
      executaScript('retornaEstoqueVenda.sql');
      executaScript('retornaEstoqueCompra.sql');
      executaScript('rel_vendaCompra.sql');
      mudaVersao('1.0.0.69');
    end;  // Fim Ataulização Versao 1.0.0.69

    if (versaoSistema = '1.0.0.69') then
    begin
      executaDDL('NOTAFISCAL', 'PESOREMESSA','DECIMAL(9,2)');
      executaDDL('NOTAFISCAL', 'NOTAMAE','INTEGER');
      executaDDL('NOTAFISCAL', 'VALOR_PIS','DOUBLE PRECISION');
      executaDDL('NOTAFISCAL', 'VALOR_COFINS','DOUBLE PRECISION');
      executaDDL('ESTADO_ICMS', 'NAOENVFATURA','CHAR(1)');
      mudaVersao('1.0.0.70');
    end;  // Fim Ataulização Versao 1.0.0.70

    if (versaoSistema = '1.0.0.70') then
    begin
      executaDDL('MOVIMENTODETALHE', 'VLR_BASEICMS','DOUBLE PRECISION');
//      executaScript('calcula_icms_substprod.sql');
      executaScript('listaSpEstoqueFiltro.sql');
      executaScript('spEstoqueFiltro.sql');
      mudaVersao('1.0.0.71');
    end;  // Fim Ataulização Versao 1.0.0.71

    if (versaoSistema = '1.0.0.71') then
    begin
      executaDDL('MOVIMENTO', 'CODORIGEM','INTEGER');
      executaDDL('ESTADO_ICMS', 'DADOSADC5', 'Varchar(200)');
      executaDDL('ESTADO_ICMS', 'DADOSADC6', 'Varchar(200)');
      executaDDL('PAGAMENTO', 'USERID', 'Char(2)');
      mudaVersao('1.0.0.72');
    end;  // Fim Ataulização Versao 1.0.0.72

    if (versaoSistema = '1.0.0.72') then
    begin
      executaScript('baixaTitulosPag.sql');
      executaScript('altera_compra.sql');
      executaScript('inclui_pag.sql');
      mudaVersao('1.0.0.73');
    end;  // Fim Ataulização Versao 1.0.0.73

    if (versaoSistema = '1.0.0.73') then
    begin
      executaDDL('MOVIMENTODETALHE', 'pIPI', 'DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE', 'vIPI', 'DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE', 'CFOP', 'char(4)'); //alter table MOVIMENTODETALHE add CFOP char(4)'
      executaDDL('CLIENTES', 'CFOP', 'char(4)'); //alter table CLIENTES add CFOP char(4)'
      mudaVersao('1.0.0.74');
    end;  // Fim Ataulização Versao 1.0.0.74

    if (versaoSistema = '1.0.0.74') then
    begin
      executaDDL('RECEBIMENTO', 'VALST', 'DOUBLE PRECISION'); //alter table RECEBIMENTO add VALST double precision
      executaDDL('RECEBIMENTO', 'VALOR_RESTO_SST', 'DOUBLE PRECISION'); //alter table RECEBIMENTO add VALOR_RESTO_SST double precision
      executaScript('CANCELA_ESTOQUE_VENDA.sql');
      executaScript('trg_cfop_produtos.sql');      
      mudaVersao('1.0.0.75');
    end;  // Fim Ataulização Versao 1.0.0.75

    if (versaoSistema = '1.0.0.75') then
    begin
      executaDDL('PRODUTOS', 'IMPRESSORA_1', 'varchar(10)');
      executaDDL('PRODUTOS', 'IMPRESSORA_2', 'varchar(10)');
      executaDDL('PRODUTOS', 'IMPRESSORA_3', 'varchar(10)');
      executaScript('relcontasreceber.sql');
      mudaVersao('1.0.0.76');
    end;  // Fim Ataulização Versao 1.0.0.76

    if (versaoSistema = '1.0.0.76') then
    begin
      executaScript('nfe_fatura.sql');    
      executaScript('corrige_valor_fatura.sql');
      executaDDL('MOVIMENTO', 'KM', 'varchar(30)');
      executaDDL('MOVIMENTO', 'TOTALMOVIMENTO', 'double precision');
      executaDDL('MOVIMENTO', 'CODMOVRATEIO', 'Integer');
      executaDDL('MOVIMENTO', 'VALORRATEIO', 'double precision');
      executaDDL('MOVIMENTO', 'RATEIO', 'double precision');
      executaDDL('MOVIMENTO', 'NFE', 'varchar(10)');
      mudaVersao('1.0.0.77');
    end;  // Fim Ataulização Versao 1.0.0.77

    if (versaoSistema = '1.0.0.77') then
    begin
      if (NaoExisteTabela('INVENTARIO')) then
      begin
        executaSql('CREATE TABLE INVENTARIO (CODIVENTARIO Varchar(40) NOT NULL, ' +
       'DATAIVENTARIO Date, CODPRODUTO Integer NOT NULL, ' +
       'CODPRO Varchar(15), SITUACAO Char(1), ' +
       'DATAEXECUTADO Date, ESTOQUE_ATUAL VALOR DEFAULT 0, ' +
       'QTDE_INVENTARIO VALOR DEFAULT 0, UN TEXTO3, ' +
       'PRIMARY KEY (CODIVENTARIO, CODPRODUTO))');
      end;
      executaScript('inventario_lanca.sql');
      executaScript('invent_estoque.sql');
      mudaVersao('1.0.0.78');
    end;  // Fim Ataulização Versao 1.0.0.78

    if (versaoSistema = '1.0.0.78') then
    begin
      executaSql('ALTER TRIGGER SAIDA_ESTOQUE INACTIVE');
      executaSql('ALTER TRIGGER ENTRADA_ESTOQUE INACTIVE');
      executaSql('ALTER TRIGGER ALTERA_ESTOQUE INACTIVE');
      executaSql('ALTER TRIGGER LOTE_EXCLUI INACTIVE');
      executaSql('ALTER TRIGGER MOV_ESTOQUECORRIGE INACTIVE');
      executaDDL('CLASSIFICACAOFISCALPRODUTO', 'IPI', 'double precision');
      executaScript('baixa_estoque.sql');
      executaScript('gera_valor.sql');
      executaScript('lote_entrada.sql');
      executaScript('lote_saida.sql');
      executaScript('lanca_ent_saida.sql');
      executaScript('mov_estoque.sql');
      mudaVersao('1.0.0.79');
    end;  // Fim Ataulização Versao 1.0.0.79

    if (versaoSistema = '1.0.0.79') then
    begin
      executaDDL('NOTAFISCAL', 'VALOR_DESCONTO', 'DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE', 'FRETE', 'DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE', 'BCFRETE', 'DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE', 'STFRETE', 'char(4)');
      executaDDL('ESTADO_ICMS', 'CSOSN', 'Varchar(3)');
      executaDDL('EMPRESA', 'CRT', 'INTEGER');
      executaScript('altera_vlrvenda.sql');
      executaScript('gera_nf_devolucaocompra.sql');
      executaScript('gera_nf_devolucaovenda.sql');
      executaScript('gera_nf_compra.sql');
      mudaVersao('1.0.0.80');
    end;  // Fim Ataulização Versao 1.0.0.80

    if (versaoSistema = '1.0.0.80') then
    begin
      executaDDL('MOVIMENTO', 'PRAZO_ENT', 'Integer');
      executaDDL('MOVIMENTO', 'VAL_PROP', 'date');
      executaDDL('MOVIMENTO', 'FORMA_PAG', 'varchar(40)');
      executaDDL('MOVIMENTO', 'VALOR_FRETE', 'double precision');
      executaDDL('MOVIMENTODETALHE', 'BCSTFRETE', 'double precision');
      executaDDL('MOVIMENTODETALHE', 'ICMSFRETE', 'double precision');
      executaDDL('MOVIMENTODETALHE', 'CSOSN', 'Varchar(3)');
      executaDDL('CLASSIFICACAOFISCALPRODUTO', 'IPI', 'double precision');
      executaDDL('CLASSIFICACAOFISCALPRODUTO', 'CSOSN', 'Varchar(3)');
  	  executaDDL('NOTAFISCAL', 'VALOR_DESCONTO', 'DOUBLE PRECISION');
	  mudaVersao('1.0.0.81');
    end;  // Fim Ataulização Versao 1.0.0.81

    if (versaoSistema = '1.0.0.81') then
    begin
      if (NaoExisteTabela('COMPRA_SOLIC')) then
      begin
        Sql := 'CREATE TABLE COMPRA_SOLIC (SOLIC_CODIGO INTEGER NOT NULL primary key, ' +
        'SOLIC_DATA DATE DEFAULT current_date, SOLIC_PRODUTO VARCHAR (15) NOT NULL, ' +
        'SOLIC_QUANTIDADE DOUBLE precision, SOLIC_SOLICITANTE Varchar(30), ' +
        'SOLIC_SITUACAO CHAR(1), SOLIC_APROVACAO Varchar(30), ' +
        'SOLIC_TIPO CHAR(1), SOLIC_DTNECESSIT date)';
        ExecutaSql(sql);
      end;
      mudaVersao('1.0.0.82');
    end;  // Fim Ataulização Versao 1.0.0.82

    if (versaoSistema = '1.0.0.82') then
    begin
      if (NaoExisteTabela('COMPRA_COTACAO')) then
      begin
        executaSql('CREATE TABLE COMPRA_COTACAO (COTACAO_CODIGO INTEGER NOT NULL, ' +
        'COTACAO_DATA   DATE DEFAULT current_date, COTACAO_FORNEC INTEGER NOT NULL, ' +
        'COTACAO_SOLICIT VARCHAR(20),  COTACAO_ITEM   VARCHAR(15) NOT NULL, ' +
        'COTACAO_ITEMDESCRICAO VARCHAR(300),  COTACAO_SITUACAO CHAR(1), ' +
        'COTACAO_QTDE  DOUBLE precision,  COTACAO_PRECO  DOUBLE precision, ' +
        'COTACAO_USER   VARCHAR(20),  COTACAO_TIPO CHAR(1), ' +
        'COTACAO_CODSOLIC integer,  COTACAO_DTENTREGA DATE, ' +
        'COTACAO_PRAZO VARCHAR(30), COTACAO_OBSERVACAO VARCHAR(200), ' +
        'PRIMARY KEY (COTACAO_CODIGO, COTACAO_FORNEC, COTACAO_ITEM))');
      end;
      mudaVersao('1.0.0.83');
    end;  // Fim Ataulização Versao 1.0.0.83

    if (versaoSistema = '1.0.0.83') then
    begin
      if (NaoExisteTabela('APONTHORAS')) then
      begin
        executaSql('create table aponthoras ( id_aponthoras integer not null primary key, ' +
        'cod_cliente integer, cod_fornecedor integer, ' +
        'cod_usuario integer, data_movimento date, ' +
        'COD_PRODUTO Integer,  COD_CC Integer)');
      end;
      mudaVersao('1.0.0.84');
    end;  // Fim Ataulização Versao 1.0.0.84

    if (versaoSistema = '1.0.0.84') then
    begin
      if (NaoExisteTabela('APONTHORASDET')) then
      begin
        executaSql('create table aponthorasdet (id_aponthorasdet integer not null primary key, ' +
        'id_aponthoras integer not null, data date, ' +
        'Tarefa_local varchar(150), inicio time, ' +
        'termino time, obs varchar(300), ' +
        'km double precision,  km_valor double precision, ' +
        'km_total double precision, despesa double precision, ' +
        'pedagio double precision, valor_hora double precision, ' +
        'total_hora double precision, total_geral double precision, ' +
        'n_relatorio integer) ');
      end;
      mudaVersao('1.0.0.85');
    end;  // Fim Ataulização Versao 1.0.0.85

    if (versaoSistema = '1.0.0.85') then
    begin
      if (NaoExisteGenerator('GEN_APONTHORASDET')) then
      begin
        executaSql('create generator gen_aponthorasdet');
      end;
      if (NaoExisteGenerator('GEN_APONTHORAS')) then
      begin
        executaSql('create generator gen_aponthoras');
      end;
      executaDDL('MOVIMENTO', 'DATA_ENTREGA', 'DATE');
      executaDDL('MOVIMENTO', 'PRAZO_PAGAMENTO', 'VARCHAR(30)');
      mudaVersao('1.0.0.86');
    end;  // Fim Ataulização Versao 1.0.0.86

    if (versaoSistema = '1.0.0.86') then
    begin
      executaDDL('MOVIMENTO', 'USER_APROVA', 'varchar(20)');
      executaDDL('MOVIMENTODETALHE', 'VALOR_DESCONTO', 'double precision');
      executaDDL('MOVIMENTODETALHE', 'RECEBIDO', 'DOUBLE PRECISION DEFAULT 0');
      executaDDL('MOVIMENTODETALHE', 'VALOR_SEGURO', 'double precision');
      executaDDL('MOVIMENTODETALHE', 'VALOR_OUTROS', 'DOUBLE PRECISION');
      executaDDL('COMPRA_COTACAO', 'COTACAO_IPI', 'double precision');
      executaDDL('COMPRA_COTACAO', 'COTACAO_DESCONTO', 'double precision');
      executaDDL('COMPRA_COTACAO', 'COTACAO_FRETE', 'double precision');
      executaDDL('CFOP', 'FRETEBC', 'char(1)');
      executaDDL('CFOP', 'IPIBC', 'char(1)');
      executaScript('trg_calcula_icms_st.sql');
      executaScript('calcula_icms.sql');
      executaScript('baixa_estoque.sql');
      executaScript('insere_estoque.sql');
      executaScript('mov_estoque.sql');
      executaScript('proc_cotacao.sql');
      try
        executaSql('INSERT INTO NATUREZAOPERACAO (CODNATUREZA, DESCNATUREZA,  ' +
         ' GERATITULO, TIPOTITULO, TIPOMOVIMENTO, BAIXAMOVIMENTO) VALUES (' +
         '5, ' + QuotedStr('Cotacao') +  ', 1, 2, 0, 0)');
      except
      end;
      mudaVersao('1.0.0.87');
    end;

    if (versaoSistema = '1.0.0.87') then
    begin
      executaDDL('NOTAFISCAL', 'CCUSTO', 'INTEGER');
      executaDDL('COMPRA_COTACAO', 'COTACAO_IPI', 'DOUBLE PRECISION DEFAULT 0');
      executaDDL('COMPRA_COTACAO', 'COTACAO_FRETE', 'DOUBLE PRECISION DEFAULT 0');
      executaDDL('COMPRA_COTACAO', 'COTACAO_DESCONTO', 'DOUBLE PRECISION DEFAULT 0');
      mudaVersao('1.0.0.88');
    end;

    if (versaoSistema = '1.0.0.88') then
    begin
      executaScript('baixaTitulosPagEdita.sql');
      executaSql('ALTER TABLE PAGAMENTO ALTER USERID TYPE TEXTO3');
      executaScript('baixaTitulosPag.sql');
      mudaVersao('1.0.0.89');
    end;

    if (versaoSistema = '1.0.0.89') then
    begin
      {SQLQuery1.SQL.Clear;
      SQLQuery1.SQL.Add('select * from RDB$RELATION_CONSTRAINTS ' +
        ' where rdb$relation_name = ' + QuotedStr('COMPRA_COTACAO') +
        '   and RDB$CONSTRAINT_NAME = ' + QuotedStr('INTEG_402'));
      SQLQuery1.Open;

      if (not SQLQuery1.IsEmpty) then
      begin
        executaSql('ALTER TABLE COMPRA_COTACAO DROP CONSTRAINT INTEG_402');
      end;}

      //executaSql('ALTER TRIGGER GERA_PEDIDO INACTIVE;');

      {SQLQuery1.SQL.Clear;
      SQLQuery1.SQL.Add('select * from RDB$RELATION_CONSTRAINTS ' +
        ' where rdb$relation_name = ' + QuotedStr('COMPRA_COTACAO') +
        '   and RDB$CONSTRAINT_NAME = ' + QuotedStr('PK_COMPRA_COTACAO_1'));
      SQLQuery1.Open;

      if (SQLQuery1.IsEmpty) then
      begin
        executaSql('alter table COMPRA_COTACAO add constraint PK_COMPRA_COTACAO_1 ' +
          'primary key (COTACAO_CODIGO, COTACAO_FORNEC, COTACAO_ITEM)');
      end;}
      mudaVersao('1.0.0.90');
    end;

    if (versaoSistema = '1.0.0.90') then
    begin
      executaDDL('MOVIMENTO', 'CODTRANSP', 'INTEGER');
      executaDDL('MOVIMENTO', 'TPFRETE', 'CHAR(1)');
      executaDDL('MOVIMENTO', 'CODPEDIDO', 'INTEGER');
      executaDDL('PRODUTOS', 'QTD', 'integer');
      executaDDL('OS', 'STATUS', 'char(1)');
      executaDDL('OS', 'DATA_INI', 'date');
      executaDDL('OS', 'DATA_FIM', 'date');
	    executaScript('codpedido_null.sql');
      executaScript('altera_status_cotacao.sql');
      executaScript('cotacao_negociacao.sql');
      executaScript('cotacao_estorna.sql');
      if (NaoExisteTabela('OS_DET')) then
      begin
        executaSql('create table OS_DET ( id_OS_DET integer not null primary key, ' +
          'id_OS integer not null, descricao_serv varchar(1024), ' +
          'responsavel varchar(150), status char(1) ) ' );
      end;
      mudaVersao('1.0.0.91');
    end;

    if (versaoSistema = '1.0.0.91') then
    begin
      executaDDL('NOTAFISCAL', 'IDCOMPLEMENTAR', 'VARCHAR(44)');
      executaDDL('NOTAFISCAL', 'XMLNFE', 'BLOB');
      executaScript('inclui_rec.sql');
      executaScript('inclui_pag.sql');
      executaScript('frete_nf.sql');
      executaSql('ALTER TABLE COMPRA DROP CONSTRAINT FK_COMPRA_BANCO');
      mudaVersao('1.0.0.92');
    end;

    if (versaoSistema = '1.0.0.92') then
    begin
      executaDDL('FUNCIONARIO', 'SALARIO',  'DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE', 'STATUS', 'VARCHAR(30)');
      executaDDL('MOVIMENTODETALHE', 'OBS', 'VARCHAR(300)');
      executaDDL('MOVIMENTODETALHE', 'COD_FUNCIONARIO', 'INTEGER');
      executaScript('baixaTitulosPag.sql');
      executaScript('baixaTitulosRec.sql');
      executaScript('expedicao_gera_pedido.sql');
      executaScript('insere_transp_fornec.sql');
      executaScript('invent_estoque.sql');
      executaScript('inventario_lanca.sql');
      executaScript('sp_mov_caixa.sql');
      executaScript('listaSpEstoqueFiltro.sql');
      executaScript('spEstoqueFiltro.sql');
      executaScript('trg_data_altera_preco.sql');
      if (NaoExisteGenerator('GEN_SIMILAR')) then
      begin
        executaSql('CREATE GENERATOR GEN_SIMILAR');
      end;
      if (NaoExisteTabela('ESTOQUEMES')) then
      begin
        executaSql('create table ESTOQUEMES ( CODPRODUTO Integer NOT NULL, LOTE Varchar(60) NOT NULL,' +
          'MESANO Date NOT NULL, QTDEENTRADA Double precision, ' +
          'QTDECOMPRA Double precision, QTDEDEVCOMPRA Double precision, ' +
          'QTDESAIDA Double precision, QTDEVENDA Double precision, ' +
          'QTDEPERDA Double precision, PRECOCUSTO Double precision, ' +
          'PRECOCOMPRA Double precision, PRECOCOMPRAULTIMA Double precision, ' +
          'PRECOVENDA Double precision, CENTROCUSTO Integer NOT NULL, ' +
          'QTDEDEVVENDA Double precision, QTDEINVENTARIO Double precision, ' +
          'SALDOMESANTERIOR Double precision, PRIMARY KEY (CODPRODUTO,LOTE,MESANO,CENTROCUSTO) )');
        executaSql('ALTER TABLE ESTOQUEMES ADD SALDOESTOQUE COMPUTED BY (SALDOMESANTERIOR + ' +
        'QTDEINVENTARIO + QTDEENTRADA + QTDECOMPRA + QTDEDEVCOMPRA - QTDEVENDA - QTDESAIDA - QTDEPERDA -  QTDEDEVVENDA) ');
      end;

      executaScript('spEstoqueFiltro.sql');
      executaScript('listaProdutocli.sql');
      executaScript('listaProduto.sql');
      executaScript('estoqueccustoent.sql');
      mudaVersao('1.0.0.93');
      executaSql('INSERT INTO NATUREZAOPERACAO (CODNATUREZA, DESCNATUREZA, GERATITULO, TIPOTITULO, TIPOMOVIMENTO) VALUES (' +
      '6, ' + QuotedStr('Expedição') + ', 1, 0, 6)');
	    executaSql('DROP TRIGGER ESTOQUECCUSTOENT');
    end;

    if (versaoSistema = '1.0.0.93') then
    begin
      if(NaoExisteGenerator('CODPEDIDO')) then
       executaSql('create generator codpedido');
      executaDDL('MOVIMENTO', 'CODCOTACAO',  'INTEGER');
      executaDDL('MOVIMENTODETALHE', 'CODSOLICITACAO',  'INTEGER');
      executaDDL('INVENTARIO', 'CODCCUSTO',  'INTEGER');
      executaDDL('PLANO', 'CODEMPRESA',  'INTEGER');
      executaDDL('NATUREZAOPERACAO', 'CFOP_ESTADO',  'TEXTO30');
      executaDDL('NATUREZAOPERACAO', 'CFOP_FORA_ESTADO',  'TEXTO30');
      executaDDL('NATUREZAOPERACAO', 'CFOP_INTERNACIONAL',  'TEXTO30');
      executaScript('gera_nf_venda.sql');
      executaScript('gera_pedido_proc.sql');
      executaScript('rel_compra_pedido.sql');
      executaScript('cotacao_gera_pedido.sql');
      executaScript('invent_estoque.sql');
      mudaVersao('1.0.0.94');       
    end;

    
    try
      IniAtualiza := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'atualiza.ini');
      IniAtualiza.WriteString('Atualizador','data',FormatDateTime('dd/mm/yyyy',now));
    finally
      IniAtualiza.Free;
    end;
  end; // Fim Ataulização
end;

function TfAtualizaSistema.VersaoAtual: String;
begin
  try
    { Atualizando o Sistema }
    if (not sqlVersao.Active) then
      sqlVersao.Open;
    result := sqlVersao.Fields[0].AsString;
  except
    result := '0';
  end;
end;

function TfAtualizaSistema.GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

procedure TfAtualizaSistema.ExecutaScript(script : string);
var caminho,sp, sqlA :string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  caminho := ExtractFilePath(Application.ExeName);
  caminho := caminho + 'script\';
  sp := caminho + script;
  if (not FileExists(sp)) then
  begin
    MessageDlg('Erro 001. Informe o responsável pelo sistema ! (' + SP + ')', mtWarning, [mbOK], 0);
    abort;
  end;
  memo1.Lines.LoadFromFile(sp);
  sqlA := PChar(memo1.Lines.GetText);
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    if (dm.sqlsisAdimin.ExecuteDirect(sqlA) = 0) then
    begin
      dm.sqlsisAdimin.Commit(TD);
    end;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro 002. Informe o responsável pelo programa ! (' + SP + ')', mtWarning, [mbOK], 0);
    abort;
  end;
  { Fim execução Script }
end;

procedure TfAtualizaSistema.ExecutaDDL(Tabela, Campo, Tipo: string);
var sql: string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (cds.Active) then
    cds.Close;
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ' + QuotedStr(Tabela) +
    ' and RDB$FIELD_NAME = ' + QuotedStr(Campo);
  cds.Open;
  if (cds.IsEmpty) then
  begin
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      sql := 'ALTER TABLE ' + Tabela + ' ADD ' + Campo + ' '  + Tipo;
      dm.sqlsisAdimin.ExecuteDirect(sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro 003. (' + sql + ')', mtWarning, [mbOK], 0);
      abort;
    end;
  end;
end;

procedure  TfAtualizaSistema.MudaVersao(versaoNova: string);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('UPDATE ATUALIZA SET VERSAO = ' +
      QuotedStr(versaoNova) + ' WHERE CODATUALIZA = 5000');
    dm.sqlsisAdimin.Commit(TD);
    versaoSistema := versaoNova;
    close;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro na atualização da Versão ' + versaoSistema + '!', mtWarning, [mbOK], 0);
    exit;
  end;
end;
procedure TfAtualizaSistema.FormCreate(Sender: TObject);
begin
  atualizaSistema;
  memo1.Lines.Add('Sistema atualizado com sucesso !!');
end;

procedure TfAtualizaSistema.ExecutaSql(sql : string);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    if (dm.sqlsisAdimin.ExecuteDirect(sql) = 0) then
    begin
      dm.sqlsisAdimin.Commit(TD);
    end;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro 005. Informe o responsável pelo programa ! (' + sql + ')', mtWarning, [mbOK], 0);
    abort;
  end;
  { Fim execução Script }
end;

procedure TfAtualizaSistema.VerSeTemAtualiza;
begin
  begin
    ftpupdate.Host:='ftp.atsti.com.br';
    ftpupdate.Username:='atsti';
    ftpupdate.Password:='ats0333';
    ftpupdate.Passive:=true;
    ftpupdate.Connect(true);
    ftpupdate.changedir('httpdocs/aplicativos/');
    ftpupdate.list(nil);
    tamanho_arquivo := ftpupdate.Size('PrjFinanceiro.exe');
    if FileExists((ExtractFilePath(Application.ExeName))+'\'
    +('PrjFinanceiro.exe')) then
    begin
     if FormatDateTime('dd/mm/yyyy HH:mm',
     FileDateToDateTime(FileAge((ExtractFilePath(Application.ExeName))
     +'\'+('PrjFinanceiro.exe')))) <>
     FormatDateTime('dd/mm/yyyy HH:mm',
     ftpupdate.DirectoryListing.Items[0].ModifiedDate)  then
     begin
      if MessageDlg('Existe uma nova versão dessa aplicação disponível na internet!'
      +#13+'Deseja atualizar?', mtconfirmation,[mbyes,mbno],0) = mryes then
       begin
        {ftpupdate.get(('PrjFinanceiro.exe'),('C:\ftp')
        +'\'+('PrjFinanceiro.exe'),true);
        FileSetDate(('C:\ftp')
        +'\'+('PrjFinanceiro.exe'),
        DateTimeToFileDate(ftpupdate.DirectoryListing.Items[0].ModifiedDate));}
       end;
      end;
    end
    else
    begin
     ftpupdate.get(('PrjFinanceiro.exe'),(ExtractFilePath(Application.ExeName))
     +'\'+('PrjFinanceiro.exe'),true);
     FileSetDate((ExtractFilePath(Application.ExeName))+'\'+('PrjFinanceiro.exe'),
     DateTimeToFileDate(ftpupdate.DirectoryListing.Items[0].ModifiedDate));
    end;
    ftpupdate.Disconnect;
   end;
end;

function TfAtualizaSistema.NaoExisteTabela(Tabela: String): Boolean;
begin
  if (cds.Active) then
    cds.Close;
  cds.CommandText := 'select rdb$relation_name ' +
     ' from rdb$relations ' +
     'where rdb$view_blr is null' +
     '  and (rdb$system_flag is null or rdb$system_flag = 0)' +
     '  and rdb$relation_name = ' + QuotedStr(tabela);
  cds.Open;
  if (cds.IsEmpty) then
  begin
    result := True;
  end
  else begin
    result := False;
  end;

end;

function TfAtualizaSistema.NaoExisteGenerator(Generator: String): Boolean;
begin
  if (cds.Active) then
    cds.Close;
  cds.CommandText := 'SELECT RDB$GENERATOR_NAME ' +
     '  FROM RDB$GENERATORS ' +
     ' WHERE RDB$GENERATOR_NAME = ' + QuotedStr(Generator);
  cds.Open;
  if (cds.IsEmpty) then
  begin
    result := True;
  end
  else begin
    result := False;
  end;

end;

procedure TfAtualizaSistema.VerBoleto(Empresa : String);
begin
  {if (dm.VISTO_FTP <> FormatDateTime('dd', now)) then
  begin
    try
      IdFTP1.Disconnect();
      IdFTP1.Host       := 'ftp.atsti.com.br';
      IdFTP1.Username   := 'atsti';
      IdFTP1.Password   := 'ats0333';
      IdFTP1.Port := 21;
      IdFTP1.Passive := false; // usa modo ativo
      IdFTP1.RecvBufferSize := 8192;
      try
        // Espera até 10 segundos pela conexão
        IdFTP1.Connect(true, 10000);
      except
        on E: Exception do
          MessageDlg(E.Message, mtWarning, [mbOK], 0);
      end;

    begin
      // Atualiza o sistema para não fazer conexao, toda a vez que abre o sistema;
      dm.sqlsisAdimin.ExecuteDirect('UPDATE PARAMETRO SET D9 = ' + FormatDateTime('dd', now) +
        ' WHERE PARAMETRO = ' + QuotedStr('EMPRESA'));
      IdFTP1.changedir('httpdocs/boletos/');
      IdFTP1.list(nil);
      if (FileExists((ExtractFilePath(Application.ExeName)) + '\' + Empresa + '.ftp')) then
      begin
        fAtsAdmin.lblBoleto.Visible := true;
        fAtsAdmin.lblBoleto.Caption := 'Existe Boleto.';
      end;

    end;
    finally
      IdFTP1.Disconnect;
    end;
  end;    }
end;

end.
