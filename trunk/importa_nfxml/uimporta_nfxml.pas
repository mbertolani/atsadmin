unit uimporta_nfxml;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TfImporta_XML = class(TForm)
    JvDBUltimGrid1: TJvDBUltimGrid;
    JvDBGrid1: TJvDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    sqlConn: TSQLConnection;
    sdsNF: TSQLDataSet;
    sdsNFItem: TSQLDataSet;
    dspNF: TDataSetProvider;
    cdsNF: TClientDataSet;
    dsNF: TDataSource;
    dspNfItem: TDataSetProvider;
    cdsNFItem: TClientDataSet;
    dsNFItem: TDataSource;
    cdsNFNOTAFISCAL: TIntegerField;
    cdsNFNATUREZAOPERACAO: TStringField;
    cdsNFMODELO: TStringField;
    cdsNFSERIE: TStringField;
    cdsNFEMISSAO: TDateField;
    cdsNFCNPJ_EMITENTE: TStringField;
    cdsNFCNPJ_DESTINATARIO: TStringField;
    cdsNFNOME_EMITENTE: TStringField;
    cdsNFCODCLIENTE_ATS: TIntegerField;
    cdsNFRAZAOSOCIAL_ATS: TStringField;
    cdsNFSTATUS: TSmallintField;
    BitBtn3: TBitBtn;
    sqlFaltandoFornecedor: TSQLQuery;
    lblNF: TLabel;
    sqlFaltaProd: TSQLQuery;
    BitBtn4: TBitBtn;
    btnExisteProdutoFornec: TBitBtn;
    cdsNFItemNOTAFISCAL: TIntegerField;
    cdsNFItemSERIE: TStringField;
    cdsNFItemCNPJ_EMITENTE: TStringField;
    cdsNFItemNUM_ITEM: TIntegerField;
    cdsNFItemCODPRODUTO: TIntegerField;
    cdsNFItemCODPRODUTO_ATS: TIntegerField;
    cdsNFItemCODPRO_ATS: TStringField;
    cdsNFItemPRODUTO: TStringField;
    cdsNFItemPRODUTO_ATS: TStringField;
    cdsNFItemNCM: TStringField;
    cdsNFItemCFOP: TStringField;
    cdsNFItemUN: TStringField;
    cdsNFItemQTDE: TFloatField;
    cdsNFItemVLR_UNIT: TFloatField;
    cdsNFItemVLR_TOTAL: TFloatField;
    cdsNFItemICMS: TStringField;
    cdsNFItemPIS: TStringField;
    cdsNFItemCOFINS: TStringField;
    cdsNFItemIPI: TStringField;
    btnCadastrarProduto: TBitBtn;
    sqlBusca: TSQLQuery;
    sqlGenProd: TSQLQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure JvDBUltimGrid1CellClick(Column: TColumn);
    procedure JvDBUltimGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBUltimGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnExisteProdutoFornecClick(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure btnCadastrarProdutoClick(Sender: TObject);
  private
    procedure abreNF;
    procedure abreNFItem;
    procedure mudaStatusNF;
    procedure faltandoFornecedor;
    procedure faltandoProduto;
    procedure procuraCadastroProduto;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImporta_XML: TfImporta_XML;

implementation

uses uProdutoFornecedor;

{$R *.dfm}

procedure TfImporta_XML.abreNF;
var strAbreNF: String;
begin
  strAbreNF := ' SELECT r.NOTAFISCAL, r.NATUREZAOPERACAO, r.MODELO, ' +
    '    r.SERIE, r.EMISSAO, r.CNPJ_EMITENTE, ' +
    '    r.CNPJ_DESTINATARIO, r.NOME_EMITENTE,' +
    '    f.RAZAOSOCIAL as RAZAOSOCIAL_ATS, f.CODFORNECEDOR as CODCLIENTE_ATS' +
    '    ,r.STATUS    ' +
    '  FROM NOTAFISCAL_IMPORTA r  ' +
    '  left OUTER join FORNECEDOR f on UDF_DIGITS(f.CNPJ) = UDF_DIGITS(r.CNPJ_EMITENTE) ' +
    ' WHERE r.STATUS = 0 ';
  if (cdsNF.Active) then
    cdsNF.Close;
  cdsNF.CommandText := strAbreNF;
  cdsNF.Open;
end;

procedure TfImporta_XML.abreNFItem;
var strNFItem: String;
begin
  strNFItem := 'SELECT * FROM NOTAFISCAL_PROD_IMPORTA r '+
    ' WHERE r.NOTAFISCAL = ' + IntToSTr(cdsNFNOTAFISCAL.AsInteger) +
    '   AND r.SERIE  = ' + QuotedStr(cdsNFSERIE.AsString) +
    '   AND r.CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString);
  if (cdsNFItem.Active) then
    cdsNFItem.Close;
  cdsNFItem.CommandText := strNFItem;
  cdsNFItem.Open;
end;

procedure TfImporta_XML.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfImporta_XML.mudaStatusNF;
var strAlteraStatus: String;
begin
  strAlteraStatus := 'UPDATE NOTAFISCAL_IMPORTA SET ' +
    ' STATUS = 1 ' +
    ' WHERE NOTAFISCAL = ' + IntToStr(cdsNFNOTAFISCAL.asInteger) +
    '   AND SERIE = ' + QuotedStr(cdsNFSERIE.AsString) +
    '   AND CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString);
  sqlConn.ExecuteDirect(strAlteraStatus);
end;

procedure TfImporta_XML.BitBtn3Click(Sender: TObject);
begin
  abreNF;
  abreNFItem;
  FaltandoFornecedor;
end;

procedure TfImporta_XML.JvDBUltimGrid1CellClick(Column: TColumn);
begin
  abreNFItem;
end;

procedure TfImporta_XML.JvDBUltimGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  abreNFItem;
end;

procedure TfImporta_XML.JvDBUltimGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  abreNFItem;
end;

procedure TfImporta_XML.faltandoFornecedor;
var strFaltaFornec: String;
begin
  strFaltaFornec := 'SELECT COUNT(r.CNPJ_EMITENTE) ' +
    '  FROM NOTAFISCAL_IMPORTA r  ' +
    ' WHERE NOT EXISTS (SELECT f.CODFORNECEDOR FROM FORNECEDOR f ' +
    ' WHERE UDF_DIGITS(f.CNPJ) = UDF_DIGITS(r.CNPJ_EMITENTE)) ' +
    '   AND r.STATUS = 0 ';
  if (sqlFaltandoFornecedor.Active) then
    sqlFaltandoFornecedor.Close;
  sqlFaltandoFornecedor.SQL.Clear;
  sqlFaltandoFornecedor.SQL.Add(strFaltaFornec);
  sqlFaltandoFornecedor.Open;
  if (sqlFaltandoFornecedor.Fields[0].asInteger > 0) then
  begin
    MessageDlg('Existe - ' + IntToStr(sqlFaltandoFornecedor.Fields[0].asInteger) +
       ' - fornecedor sem cadastro no sistema.', mtWarning, [mbOK], 0);
    lblNF.Caption := IntToStr(sqlFaltandoFornecedor.Fields[0].asInteger) + ' - fornecedor sem cadastro.';
  end;
end;

procedure TfImporta_XML.faltandoProduto;
var strFaltaProd: String;
begin
  strFaltaProd := 'SELECT pf.CODPRODUTO, p.CODPRO ' +
    '  FROM  produto_fornecedor pf, produtos p ' +
    ' where p.CODPRODUTO = pf.CODPRODUTO ' +
    '   and pf.codfornecedor = ' + IntToStr(cdsNFCODCLIENTE_ATS.asInteger)  +
    '   and pf.codprodfornec = ' + QuotedStr(IntToStr(cdsNFItemCODPRODUTO.AsInteger));
  if (sqlFaltaProd.Active) then
    sqlFaltaProd.Close;
  sqlFaltaProd.SQL.Clear;
  sqlFaltaProd.SQL.Add(strFaltaProd);
  sqlFaltaProd.Open;
end;

procedure TfImporta_XML.BitBtn4Click(Sender: TObject);
var strInsereFornec: String;
   linha: Integer;
begin
  if (cdsNF.Active) then
  begin
    while not cdsNF.Eof do
    begin
      strInsereFornec := 'SELECT CODFORNECEDOR, RAZAOSOCIAL ' +
      '  FROM FORNECEDOR  ' +
      ' WHERE UDF_DIGITS(CNPJ) = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString);
      if (sqlFaltandoFornecedor.Active) then
        sqlFaltandoFornecedor.Close;
      sqlFaltandoFornecedor.SQL.Clear;
      sqlFaltandoFornecedor.SQL.Add(strInsereFornec);
      sqlFaltandoFornecedor.Open;
      if (not sqlFaltandoFornecedor.IsEmpty) then
      begin
        strInsereFornec := 'UPDATE NOTAFISCAL_IMPORTA SET ' +
          ' CODCLIENTE_ATS = ' +  IntToStr(sqlFaltandoFornecedor.fieldByName('CODFORNECEDOR').AsInteger) +
          ' ,RAZAOSOCIAL_ATS = ' + QuotedStr(sqlFaltandoFornecedor.fieldByName('RAZAOSOCIAL').AsString) +
          ' WHERE NOTAFISCAL = ' + IntToStr(cdsNFNOTAFISCAL.asInteger) +
          '   AND SERIE = ' + QuotedStr(trim(cdsNFSERIE.AsString)) +
          '   AND CNPJ_EMITENTE = ' + QuotedStr(trim(cdsNFCNPJ_EMITENTE.AsString));
        sqlConn.ExecuteDirect(strInsereFornec);
      end;
      cdsNF.Next;
    end;
  end;
end;

procedure TfImporta_XML.btnExisteProdutoFornecClick(Sender: TObject);
var insereCodPro: String;
  linhaNF: Integer;
begin
  if (cdsNF.Active) then
  begin
    linhaNF := cdsNF.RecNo;
    while not cdsNF.Eof do
    begin
      abreNFItem;
      while not cdsNFItem.Eof do
      begin
        faltandoProduto;
        if (not sqlFaltaProd.IsEmpty) then
        begin
          insereCodPro := 'UPDATE NOTAFISCAL_PROD_IMPORTA SET ' +
            ' CODPRODUTO_ATS = ' +  IntToStr(sqlFaltaProd.fieldbyname('CODPRODUTO').asInteger) +
            ' ,CODPRO_ATS = ' + QuotedStr(sqlFaltaProd.fieldbyname('CODPRO').AsString) +
            ' WHERE NOTAFISCAL = ' + IntToStr(cdsNFNOTAFISCAL.asInteger) +
            '   AND SERIE = ' + QuotedStr(trim(cdsNFSERIE.AsString)) +
            '   AND CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString) +
            '   AND NUM_ITEM = ' + IntToStr(cdsNFItemNUM_ITEM.AsInteger);
          sqlConn.ExecuteDirect(insereCodPro);
        end;
        cdsNFItem.Next;
      end;
      cdsNF.Next;
    end;
    cdsNF.RecNo := linhaNF;
    abreNFItem;
  end;
end;

procedure TfImporta_XML.JvDBGrid1CellClick(Column: TColumn);
begin
  fProdutoFornec.codFornec := IntToStr(cdsNFCodCliente_ats.asInteger);
  fProdutoFornec.nomeFornec := cdsNFRAZAOSOCIAL_ATS.AsString;
  fProdutoFornec.codProdFornec := IntToStr(cdsNFItemCODPRODUTO.AsInteger);
  fProdutoFornec.prodDescricaoFornec := cdsNFItemPRODUTO.AsString;
  fProdutoFornec.codProduto := IntToStr(cdsNFItemCODPRODUTO_ATS.AsInteger);
  fProdutoFornec.prodDescricao := cdsNFItemPRODUTO.AsString;
  fProdutoFornec.showModal;
  btnExisteProdutoFornec.Click;
end;

procedure TfImporta_XML.btnCadastrarProdutoClick(Sender: TObject);
var strInsereItem: String;
  varCodProduto : Integer;
begin
  btnExisteProdutoFornec.Click;
  if (cdsNF.Active) then
  begin
    while not cdsNF.Eof do
    begin
      if (cdsNFRAZAOSOCIAL_ATS.AsString = '') then
      begin
        MessageDlg('Existe Cliente que não consta no sistema, faça' +
          ' o cadastro primeiro.', mtWarning, [mbOK], 0);
        exit;
      end;
      abreNFItem;
      while not cdsNFItem.Eof do
      begin
        if (cdsNFItemCODPRO_ATS.AsString = '') then
        begin
          procuraCadastroProduto;
          if (sqlBusca.IsEmpty) then
          begin
            if (sqlGenProd.Active) then
              sqlGenProd.Close;
            sqlGenProd.SQL.Clear;
            sqlGenProd.SQL.Add('SELECT GEN_ID(GEN_PROD, 1) FROM RDB$DATABASE');
            sqlGenProd.Open;
            varCodProduto := sqlGenProd.Fields[0].AsInteger;
            strInsereItem := 'INSERT INTO PRODUTOS (CODPRODUTO, UNIDADEMEDIDA, ' +
              ' PRODUTO, COD_BARRA, TIPO, CODPRO, QTDE_PCT, DATACADASTRO, ' +
              ' ORIGEM, NCM) VALUES (' +
              IntToStr(varCodProduto) +
              ' ,' + QuotedStr(copy(trim(cdsNFItemUN.AsString),0,2)) +
              ' ,' + QuotedStr(trim(cdsNFItemPRODUTO.AsString)) +
              ' ,' + QuotedStr(IntToStr(cdsNFItemCODPRODUTO.AsInteger)) +
              ' ,' + QuotedStr('PROD') +
              ' ,' + QuotedStr(IntToStr(cdsNFItemCODPRODUTO.AsInteger)) +
              ' ,1' +
              ' ,current_date ' +
              ' ,0' +
              ' ,' + Quotedstr(trim(cdsNFItemNCM.AsString)) + ')';
            sqlConn.ExecuteDirect(strInsereItem);
            strInsereItem := 'INSERT INTO PRODUTO_FORNECEDOR (' +
              'CODPRODUTO, CODFORNECEDOR, CODPRODFORNEC) VALUES ( ' +
              IntToStr(varCodProduto) +
              ', ' + IntToStr(cdsNFCODCLIENTE_ATS.AsInteger) +
              ', ' + IntToStr(cdsNFItemCODPRODUTO.AsInteger) +  ')';
            sqlConn.ExecuteDirect(strInsereItem);
          end;
          faltandoProduto;
          if (not sqlFaltaProd.IsEmpty) then
          begin
            strInsereItem := 'UPDATE NOTAFISCAL_PROD_IMPORTA SET ' +
              ' CODPRODUTO_ATS = ' +  IntToStr(sqlFaltaProd.fieldbyname('CODPRODUTO').asInteger) +
              ' ,CODPRO_ATS = ' + QuotedStr(sqlFaltaProd.fieldbyname('CODPRO').AsString) +
              ' WHERE NOTAFISCAL = ' + IntToStr(cdsNFNOTAFISCAL.asInteger) +
              '   AND SERIE = ' + QuotedStr(trim(cdsNFSERIE.AsString)) +
              '   AND CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString) +
              '   AND NUM_ITEM = ' + IntToStr(cdsNFItemNUM_ITEM.AsInteger);
            sqlConn.ExecuteDirect(strInsereItem);
          end;
        end;
        cdsNFItem.Next;
      end;
      cdsNF.Next;
    end;
  end;
end;

procedure TfImporta_XML.procuraCadastroProduto;
var strBusca: String;
begin
  strBusca := 'SELECT CODPRODUTO, CODPRO ' +
    '  FROM produtos ' +
    ' where CODPRO = ' + QuotedStr(IntToStr(cdsNFItemCODPRODUTO.AsInteger));
  if (sqlBusca.Active) then
    sqlBusca.Close;
  sqlBusca.SQL.Clear;
  sqlBusca.SQL.Add(strBusca);
  sqlBusca.Open;
end;

end.
