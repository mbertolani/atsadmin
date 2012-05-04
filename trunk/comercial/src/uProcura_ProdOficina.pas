unit uProcura_prodOficina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBCtrls, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls,
  Menus, DB, DBClient, Provider, SqlExpr, XPMenu, MMJPanel, EDBFind,
  rpcompobase, rpvclreport, JvExStdCtrls, JvCombobox, JvDBSearchComboBox,
  JvEdit, JvValidateEdit, Mask, JvExMask, JvToolEdit, JvBaseEdits;

type
  TfProcura_prodOficina = class(TForm)
    sds_proc: TSQLDataSet;
    sds_procCODPRODUTO: TIntegerField;
    sds_procCODPRO: TStringField;
    sds_procPRODUTO: TStringField;
    sds_procPRECO_VENDA: TFloatField;
    sds_procQTDE_PCT: TFloatField;
    sds_procUNIDADEMEDIDA: TStringField;
    sds_procGRUPO: TStringField;
    sds_procSUBGRUPO: TStringField;
    sds_procMARCA: TStringField;
    sds_procESTOQUEATUAL: TFloatField;
    sds_procCODALMOXARIFADO: TIntegerField;
    sds_procICMS: TFloatField;
    sds_procPRECO_COMPRA: TFloatField;
    sds_procTIPO: TStringField;
    sds_procCOD_BARRA: TStringField;
    dsp_proc: TDataSetProvider;
    cds_proc: TClientDataSet;
    cds_procCODPRODUTO: TIntegerField;
    cds_procCODPRO: TStringField;
    cds_procPRODUTO: TStringField;
    cds_procPRECO_VENDA: TFloatField;
    cds_procQTDE_PCT: TFloatField;
    cds_procUNIDADEMEDIDA: TStringField;
    cds_procGRUPO: TStringField;
    cds_procSUBGRUPO: TStringField;
    cds_procMARCA: TStringField;
    cds_procESTOQUEATUAL: TFloatField;
    cds_procCODALMOXARIFADO: TIntegerField;
    cds_procICMS: TFloatField;
    cds_procPRECO_COMPRA: TFloatField;
    cds_procTIPO: TStringField;
    cds_procCOD_BARRA: TStringField;
    Dtsrc: TDataSource;
    ds: TDataSource;
    dsSub: TDataSource;
    Ds_Marca: TDataSource;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incluir1: TMenuItem;
    Limpar1: TMenuItem;
    Confirma1: TMenuItem;
    DataSource1: TDataSource;
    cds_proc1: TClientDataSet;
    cds_proc1CODIGO: TStringField;
    dsp_proc1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    StringField7: TStringField;
    sds_proc1: TSQLDataSet;
    sds_proc1USO: TStringField;
    DataSetProvider1: TDataSetProvider;
    cds_proc2: TClientDataSet;
    cds_proc2USO: TStringField;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    MMJPanel1: TMMJPanel;
    sds_parametro: TSQLDataSet;
    sds_parametroDESCRICAO: TStringField;
    sds_parametroPARAMETRO: TStringField;
    sds_parametroCONFIGURADO: TStringField;
    sds_parametroDADOS: TStringField;
    sds_parametroD1: TStringField;
    sds_parametroD2: TStringField;
    sds_parametroD3: TStringField;
    sds_parametroD4: TStringField;
    sds_parametroD5: TStringField;
    sds_parametroD6: TStringField;
    sds_parametroD7: TStringField;
    sds_parametroD8: TStringField;
    sds_parametroD9: TStringField;
    sds_parametroINSTRUCOES: TStringField;
    dsp: TDataSetProvider;
    cds_parametro: TClientDataSet;
    cds_parametroDESCRICAO: TStringField;
    cds_parametroPARAMETRO: TStringField;
    cds_parametroCONFIGURADO: TStringField;
    cds_parametroDADOS: TStringField;
    cds_parametroD1: TStringField;
    cds_parametroD2: TStringField;
    cds_parametroD3: TStringField;
    cds_parametroD4: TStringField;
    cds_parametroD5: TStringField;
    cds_parametroD6: TStringField;
    cds_parametroD7: TStringField;
    cds_parametroD8: TStringField;
    cds_parametroD9: TStringField;
    cds_parametroINSTRUCOES: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    edUso: TEdit;
    Label6: TLabel;
    edCodigo: TEdit;
    Label2: TLabel;
    edOutros: TEdit;
    Label3: TLabel;
    edProduto: TEdit;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel2: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BitBtn4: TBitBtn;
    EvDBFind1: TEvDBFind;
    sds_procLOTES: TStringField;
    cds_procLOTES: TStringField;
    BitBtn5: TBitBtn;
    VCLReport_lista_produtos: TVCLReport;
    sdsLista: TSQLDataSet;
    dspLista: TDataSetProvider;
    cdsLista: TClientDataSet;
    cdsListaCODPRODUTO: TIntegerField;
    cdsListaCODIGO: TStringField;
    cdsListaUSAPRODUTO: TStringField;
    cdsListaFORNECEDOR: TStringField;
    cdsListaPRECOVENDA: TFloatField;
    cdsListaCODBARRA: TStringField;
    cdsListaPRECOLISTA: TFloatField;
    dsLista: TDataSource;
    sds_procLOCALIZACAO: TStringField;
    cds_procLOCALIZACAO: TStringField;
    Label14: TLabel;
    Edit5: TEdit;
    rgEmUso: TCheckBox;
    sds_procPESO_QTDE: TFloatField;
    cds_procPESO_QTDE: TFloatField;
    cbMarca: TComboBox;
    cbFamilia: TComboBox;
    cbCategoria: TComboBox;
    btnIncluir: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpeedButton3: TBitBtn;
    SpeedButton2: TBitBtn;
    SpeedButton1: TBitBtn;
    SpeedButton4: TBitBtn;
    Lotes1: TMenuItem;
    Lista1: TMenuItem;
    Imprimir1: TMenuItem;
    Etiquetas1: TMenuItem;
    BitBtn6: TBitBtn;
    sds_procPRECOMEDIO: TFloatField;
    cds_procPRECOMEDIO: TFloatField;
    Edit4: TJvCalcEdit;
    Edit2: TJvCalcEdit;
    Edit3: TJvCalcEdit;
    sds_procPEDIDO: TFloatField;
    cds_procPEDIDO: TFloatField;
    BitBtn3: TBitBtn;
    DBGrid2: TDBGrid;
    RadioGroup1: TRadioGroup;
    procedure Incluir1Click(Sender: TObject);
    procedure Procurar1Click(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure EvDBFind1Exit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Edit3Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure cbMarcaChange(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure cbFamiliaChange(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
    procedure precolista1;
    procedure formcompra;
    procedure formvenda;
    procedure formnf;
    procedure formterminal;
    procedure formitens;
    procedure formterminaldelivery;
    procedure formestoque;
    procedure formentrasai;
    procedure formcadfornecedor;
    procedure formcadproduto;
    procedure formnotaf;
    procedure formnfCompra;

  public
    { Public declarations }
    CODPRODUTO, CODALMOXARIFADO: Integer;
    CODPRO, DESCPRODUTO, LOCALIZACAO, UN : String;
    QUANTIDADE, PRECO_VENDA: Double;

    fecodProd, fenomeProduto, usouAdiciona : string;
    fecodProduto: integer;
  end;

var
  fProcura_prodOficina: TfProcura_prodOficina;
  codprodxa: Integer;
  varonde, var_F, imp, PRODUTO_DESC: string;

implementation

uses UDm, uProdutoCadastro, uCompra, uVendas, uNotafiscal, uITENS_NF,
  uEntra_Sai_estoque, uLotes, uLotesCadastro,
  ufDlgLogin, uProdFornecedor, uTerminalLoja, uProduto_Mat_prima,
  sCtrlResize, uTerminal_Delivery, UDMNF, uNF, uClassificacaoFiscalProduto;

{$R *.dfm}

Procedure FormResize(Sender: TObject); var R : TRect; DC : HDc; Canv : TCanvas;
begin
  R := Rect( 0, 0, Screen.Width, Screen.Height );
  DC := GetWindowDC( GetDeskTopWindow );
  Canv := TCanvas.Create;
  Canv.Handle := DC;
  Canv.CopyRect(R,Canv,R);
  ReleaseDC( GetDeskTopWindow, DC );
end;

procedure TfProcura_prodOficina.Incluir1Click(Sender: TObject);
begin
// fProcura_prod.Close;
end;

procedure TfProcura_prodOficina.Procurar1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TfProcura_prodOficina.Limpar1Click(Sender: TObject);
begin
  edUso.Clear;
  edCodigo.Clear;
  edProduto.Clear;
  cbMarca.Text := '';
  cbFamilia.Text := '';
  cbCategoria.Text := '';
  cds_proc.Close;
end;

procedure TfProcura_prodOficina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 {//if varonde = 'cad_produto' then
   // fProcura_prod.ModalResult := mrOk;
 codprodxa := cds_procCODPRODUTO.asInteger;
 if ((varonde <> 'compra') and (varonde <> 'itens') and (varonde <> 'venda')
     and (varonde <> 'EntraSai') and (varonde <> 'mat_prima')) then
 if (panel2.Visible = True) then
 begin
   if cds_proc.Active then
     cds_proc.Close;

   if cds_proc1.Active then
     cds_proc1.Close;

   if cds_proc2.Active then
     cds_proc2.Close;
 end;
 BitBtn2.Click;
 if ((varonde <> 'compra') and (varonde <> 'itens') and (varonde <> 'venda')
     and (varonde <> 'EntraSai') and (varonde <> 'mat_prima')) then
 begin
   //cds_proc.Close;
 end;
 varonde := '';   }
 Close;
end;

procedure TfProcura_prodOficina.FormCreate(Sender: TObject);
begin
  //sCtrlResize.CtrlResize(TForm(fProcura_prodOficina));
end;

procedure TfProcura_prodOficina.FormShow(Sender: TObject);
begin
  if (not dm.cds_Marca.Active) then
    dm.cds_Marca.Open;
  dm.cds_Marca.First;
  while not dm.cds_Marca.Eof do
  begin
     cbMarca.Items.Add(dm.cds_MarcaDESCMARCAS.AsString);
     dm.cds_Marca.Next;
  end;
  dm.cds_Marca.Close;

  if (not dm.cds_familia.Active) then
    dm.cds_familia.Open;
  dm.cds_familia.First;
  while not dm.cds_familia.Eof do
  begin
     cbFamilia.Items.Add(dm.cds_familiaDESCFAMILIA.AsString);
     dm.cds_familia.Next;
  end;
  dm.cds_familia.Close;

  if dm.cds_categoria.Active then
    dm.cds_categoria.Close;
  dm.cds_categoria.Params[0].Clear;
  dm.cds_categoria.Params[2].Clear;
  dm.cds_categoria.Params[1].AsString := 'todos';
  dm.cds_categoria.Open;
  dm.cds_categoria.First;
  while not dm.cds_categoria.Eof do
  begin
     cbCategoria.Items.Add(dm.cds_categoriaDESCCATEGORIA.AsString);
     dm.cds_categoria.Next;
  end;
  dm.cds_categoria.Close;
  //Panel1.Visible := True;
  //Panel2.Visible := True;
  {cbMarca.Text := '';
  panel2.TabOrder := 0;
  EvDBFind1.SetFocus;   }

  if var_F = 'venda' then
    Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
  if var_F = 'compra' then
    Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
  cbMarca.Text := '';

  //if (RadioGroup1.ItemIndex = 0) then
  //  EvDBFind1.SetFocus;
  //bitBtn1.Click;
end;

procedure TfProcura_prodOficina.btnIncluirClick(Sender: TObject);
var codpro : String;
begin
  codpro := cds_procCODPRO.AsString;
  fProdutoCadastro:=TfProdutoCadastro.Create(Application);
  try
    fProdutoCadastro.btnProcurar.Visible := False;
    if (dm.cds_produto.Active) then
      dm.cds_produto.close;
    dm.cds_produto.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
    dm.cds_produto.Open;
    dm.cds_produto.Edit;
    dm.cds_produtoESTOQUEATUAL.AsFloat := cds_procESTOQUEATUAL.AsFloat;
    dm.cds_produtoVALORUNITARIOATUAL.AsFloat := cds_procPRECO_COMPRA.AsFloat;
    //dm.cds_produtoPRECOMEDIO.AsFloat := cds_procPRECOMEDIO.AsFloat;
    //dm.cds_produtoVALOR_PRAZO.AsFloat := cds_procPRECO_VENDA.AsFloat;
    if (dm.cds_produtoTIPO.AsString = 'SERV') then
      fProdutoCadastro.cbTipo.ItemIndex := 3
    else if (dm.cds_produtoTIPO.AsString = 'COMPRA') then
      fProdutoCadastro.cbTipo.ItemIndex := 1
    else if (dm.cds_produtoTIPO.AsString = 'VENDA') then
      fProdutoCadastro.cbTipo.ItemIndex := 2
    else if (dm.cds_produtoTIPO.AsString = 'LOCA') then
      fProdutoCadastro.cbTipo.ItemIndex := 4
    else
      fProdutoCadastro.cbTipo.ItemIndex := 0;
    dm.cds_produto.Post;
    if (dm.cds_produtoMARCA.AsString <> '') then
      fProdutoCadastro.dbMarca.Text := dm.cds_produtoMARCA.AsString;
    fProdutoCadastro.ShowModal;
    EvDBFind1.Text := PRODUTO_DESC;//dm.cds_produtoPRODUTO.asString;
  finally
    fProdutoCadastro.btnProcurar.Visible := True;
    fProdutoCadastro.Free;
  end;
  cds_proc.Locate('CODPRO', codpro, [loCaseInsensitive]);
end;

procedure TfProcura_prodOficina.BitBtn1Click(Sender: TObject);
var varSql, varCondicao, varCondicaoA, varCondicaoA1, varSql1, varCond2, varSql2, varCondicao1, s: string;
i : integer;
begin
  if (panel2.Visible = True) then
  begin
    cbMarca.Text := '';
  end;
 cds_proc.CommandText := '';
 varCondicao := '';
 // Produtos
 varSql := 'select distinct CODPRODUTO, COD_BARRA, CODPRO, cast(PRODUTO as varchar(300)) as PRODUTO,  ' +
   'PRECO_VENDA, PRECO_COMPRAULTIMO as PRECO_COMPRA, ' +
   'QTDE_PCT, UNIDADEMEDIDA, ' +
   'GRUPO, SUBGRUPO, MARCA, ' +
   'ESTOQUEATUAL, CODALMOXARIFADO, ICMS, TIPO, LOCALIZACAO, LOTES,    ' +
   'SUBGRUPO as CATEGORIA, PRECO_VENDA as VALOR_PRAZO, PESO_QTDE, ' +
   'PRECO_COMPRAMEDIO as PRECOMEDIO, PEDIDO ' +
   'from LISTAPRODUTO(0, ';
 // C�digos
 varSql1 := 'select distinct cod.CODIGO ' +
   'from PRODUTOS pro ' +
   'left outer join CODIGOS cod on cod.COD_PRODUTO = pro.CODPRODUTO ' +
   'left outer join USO_PRODUTO uso on uso.COD_PRODUTO = pro.CODPRODUTO ';
 // Uso
 varSql2 := 'select DISTINCT uso.DESCRICAO as USO ' +
   'from PRODUTOS pro ' +
   'left outer join CODIGOS cod on cod.COD_PRODUTO = pro.CODPRODUTO ' +
   'left outer join USO_PRODUTO uso on uso.COD_PRODUTO = pro.CODPRODUTO ';

{  ***** Comentei pois nao e usado mais - Carlos 09/08/2006 ****}

  //if edCodigo.Text <> '' then
  //  varCondicao := QuotedStr(edCodigo.Text)
  //else
    varCondicao := QuotedStr('TODOSPRODUTOS');

  if cbFamilia.Text <> '' then
    varCondicao := varCondicao + ', ' + QuotedStr(cbFamilia.Text)
  else
    varCondicao := varCondicao + ', ' + QuotedStr('TODOSGRUPOS');

  if cbCategoria.Text <> '' then
    varCondicao := varCondicao + ', ' + QuotedStr(cbCategoria.Text)
   else
    varCondicao := varCondicao + ', ' + QuotedStr('TODOSSUBGRUPOS');

  if (cbMarca.Text <> '') then
    varCondicao := varCondicao + ', ' + QuotedStr(cbMarca.Text)
  else
    varCondicao := varCondicao + ', ' + QuotedStr('TODASMARCAS');

  varCondicao :=  varCondicao + ', ' + QuotedStr('TODASAPLICACOES');
  //end;

  varCondicao :=  varCondicao + ', 0';
  //end;


  varCondicao := varCondicao + ') ';

  if edUso.Text <> '' then
  begin
    varCondicaoA := varCondicaoA + ' where USO like ' + '''' + edUso.Text + '%' + '''';
    varCondicaoA1 := ' where uso.DESCRICAO like ' + '''' + edUso.Text + '%' + '''';
  end;

 if edProduto.Text <> '' then
   if varCondicaoA <> '' then
     varCondicaoA := varCondicaoA + ' and UDF_COLLATEBR(PRODUTO) containing ' + '''' + edProduto.Text + ''''
   else
     varCondicaoA := 'where PRODUTO containing ' + '''' + edProduto.Text + '''';

 if edOutros.Text <> '' then
   if varCondicaoA <> '' then
     varCondicaoA := varCondicaoA + ' and CODIGO like ' + '''' + edOutros.Text + '%' + ''''
   else
     varCondicaoA := 'where CODIGO like ' + '''' + edOutros.Text + '%' + '''';

  if (rgEmUso.Checked = True) then
  begin
   if varCondicaoA <> '' then
     varCondicaoA := varCondicaoA + ' and USA is null '
   else
     varCondicaoA := 'where USA is null ';
  end
  else begin
   if varCondicaoA <> '' then
     varCondicaoA := varCondicaoA + ' and USA = ' + QuotedStr('N')
   else
     varCondicaoA := 'where USA = ' + QuotedStr('N') ;
  end;

 if Edit1.Text <> '' then
   if varCondicaoA <> '' then
   begin
     s:='';
     for i:=1 to 7 do
     begin
       s:= s+ copy(Edit1.text,I,1);
     end;
     varCondicaoA := varCondicaoA + ' and COD_BARRA =' + '''' + Edit1.Text + '''';
     varCondicaoA := varCondicaoA + ' or COD_BARRA = ' + '''' + s + '00001' + '''';
   end
   else
   begin
     s:='';
     for i:=1 to 7 do
     begin
       s:= s+ copy(Edit1.text,I,1);
     end;
     varCondicaoA := 'where COD_BARRA = ' + '''' + Edit1.Text + '''';
     varCondicaoA := varCondicaoA + ' or COD_BARRA = ' + '''' + s + '00001' + '''';
   end;

  if (edCodigo.Text <> '') then
  begin
    if varCondicaoA <> '' then
      varCondicaoA :=  varCondicaoA + ' and CODPRO LIKE ' + QuotedStr(edCodigo.Text + '%')
    else
      varCondicaoA :=  ' WHERE CODPRO LIKE ' + QuotedStr(edCodigo.Text + '%');
  end;

 varCondicao1 := varSql1 + varCondicaoA + ' order by pro.PRODUTO ';
 varCond2 := varSql2 + varCondicaoA1;
 varCondicao := varSql + varCondicao + varCondicaoA + ' order by PRODUTO ';

//***************************************************************************
 if cds_proc.Active then
   cds_proc.Close;
 cds_proc.CommandText := varCondicao;
 cds_proc.Open;
// cds_proc.CommandText := varSql;
 imp := varCondicao;
 if ((varonde <> 'compra') and (varonde <> 'itens') and (varonde <> 'EntraSai')
   and (varonde <> 'Lotes')) then
// DBGrid1.SetFocus;

{ if cds_proc1.Active then
   cds_proc1.Close;
 cds_proc1.CommandText := varCondicao1;
 cds_proc1.Open;
 cds_proc1.CommandText := varSql1;
 }
 if cds_proc2.Active then
   cds_proc2.Close;
 cds_proc2.CommandText := varCond2 + ' AND USO.COD_PRODUTO = ' + IntToStr(cds_procCODPRODUTO.AsInteger) + ' order by pro.PRODUTO ';
 cds_proc2.Open;
 cds_proc2.CommandText := varSql2;

end;

procedure TfProcura_prodOficina.BitBtn2Click(Sender: TObject);
begin
  edUso.Clear;
  edCodigo.Clear;
  edProduto.Clear;
  edOutros.Clear;
  cbMarca.Text := '';
  cbFamilia.Text := '';
  cbCategoria.Text := '';
  cbCategoria.Items.Clear;
  if dm.cds_categoria.Active then
    dm.cds_categoria.Close;
  dm.cds_categoria.Params[0].Clear;
  dm.cds_categoria.Params[2].Clear;
  dm.cds_categoria.Params[1].AsString := 'todos';
  dm.cds_categoria.Open;
  while not dm.cds_categoria.Eof do
  begin
     cbCategoria.Items.Add(dm.cds_categoriaDESCCATEGORIA.AsString);
     dm.cds_categoria.Next;
  end;
  dm.cds_categoria.Close;
end;

procedure TfProcura_prodOficina.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    bitBtn6.Click;   // Fecha a tela
    //key:= #0;
    //SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfProcura_prodOficina.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(cds_proc.RecNo) then // se for impar
  // se a coluna nao estiver selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrao
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
end;

procedure TfProcura_prodOficina.DBGrid1TitleClick(Column: TColumn);
begin
  cds_proc.IndexFieldNames:=Column.FieldName;
end;

procedure TfProcura_prodOficina.BitBtn4Click(Sender: TObject);
begin
  usouAdiciona := 'usou';
  if (var_F = 'compra') then
    formcompra;
  if (var_F = 'venda') then
     formvenda;
  if (var_F = 'itens') then
    formitens;
  if (var_F = 'EntraSai') then
    formentrasai;
  if (var_F = 'estoque') then
    formestoque;
  if (var_F = 'cadfornecedor') then
    formcadfornecedor;
  if (var_F = 'terminalloja') then
    formterminaldelivery;
  if (var_F = 'formnf') then
    formnf;
  if (var_F = 'formnotaf') then
    formnotaf;
  if (var_F = 'formnfCompra') then
    formnfCompra;
  //vejo se usa pre�o p�r Fornecedor
  if (var_F = 'Lista') then
  begin
    if (fCompra.usaprecolista = 'S') then
       precolista1;
  end;
  BitBtn4.Enabled := false;
  BitBtn5.Enabled := true;
  BitBtn5.SetFocus;
end;

procedure TfProcura_prodOficina.BitBtn5Click(Sender: TObject);
begin
  usouAdiciona := 'nao usou';
 if (var_F = 'compra') then
   fCompra.btnNovo.Click;

 if (var_F = 'venda') then
   fVendas.btnNovo.Click;

 if (var_F = 'itens') then
   fITENS_NF.btnNovo.Click;

 if (var_F = 'estoque') then
   fEntra_Sai_estoque.btnNovo.Click;

 if (var_F = 'mat_prima') then
   fProduto_Mat_prima.btnIncluir.Click;

 if (var_F = 'Lista') then
   fCompra.btnNovo.Click;

 if (var_F = 'formnf') then
   fNF.btnNovo.Click;

 Edit3.Text := '';
 Edit4.Text := '';
 Edit2.Text := ''; 
 BitBtn5.Enabled := false;
 BitBtn4.Enabled := true;
 EvDBFind1.SetFocus;

end;

procedure TfProcura_prodOficina.EvDBFind1Exit(Sender: TObject);
begin
   Edit3.Text := '1';
   if (Edit4.Text = '') then
     Edit4.Text := '0';
   Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
   if (var_F = 'compra') then
     Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
   if (var_F = 'Lista') then
   begin
     if (fCompra.cdslista.Active) then
       fCompra.cdslista.Close;
     fCompra.cdslista.Params[0].AsInteger := fCompra.cds_MovimentoCODFORNECEDOR.AsInteger;
     fCompra.cdslista.Params[1].AsString := cds_procCODPRO.AsString;
     fCompra.cdslista.Open;
     if (not fCompra.cdslista.IsEmpty) then
     begin
       fCompra.cds_Mov_detCODPRODUTO.AsInteger := fCompra.cdslistaCODPRODUTO.AsInteger;
       fCompra.cds_Mov_detCODPRO.AsString := fCompra.cdslistaCODIGO.AsString;
       fCompra.cds_Mov_detDESCPRODUTO.Value := fCompra.cdslistaPRODUTO.Value;
       fCompra.cds_Mov_detUN.AsString := fCompra.cdslistaUNIDADE.AsString;
       fCompra.cds_Mov_detPRECO.AsFloat := fCompra.cdslistaPRECOLISTA.AsFloat;
       Edit4.Text := Format('%-6.2n',[fCompra.cdsListaPRECOLISTA.value]);
     end;
   end;
end;

procedure TfProcura_prodOficina.DBGrid1CellClick(Column: TColumn);
var varCondicao, varSql1, varSql2: string;
begin
  // Codigos
  varSql1 := 'select distinct cod.CODIGO ' +
    'from PRODUTOS pro ' +
    'left outer join CODIGOS cod on cod.COD_PRODUTO = pro.CODPRODUTO ' +
    'left outer join USO_PRODUTO uso on uso.COD_PRODUTO = pro.CODPRODUTO ';

  // Uso
  varSql2 := 'select DISTINCT uso.DESCRICAO as USO ' +
    ' from USO_PRODUTO uso ';
    //'from PRODUTOS pro ' +
    //'left outer join CODIGOS cod on cod.COD_PRODUTO = pro.CODPRODUTO ' +
    //'left outer join USO_PRODUTO uso on uso.COD_PRODUTO = pro.CODPRODUTO ';

  varCondicao := 'where pro.CODPRO like ' + '''' + cds_procCODPRO.AsString + '%' + '''';

  if cds_proc1.Active then
    cds_proc1.Close;
  cds_proc1.CommandText := varSql1 + varCondicao;
  cds_proc1.Open;
  cds_proc1.CommandText := varSql1;

  if cds_proc2.Active then
    cds_proc2.Close;
  cds_proc2.CommandText := varSql2 + ' WHERE uso.COD_PRODUTO = ' + IntToStr(cds_procCODPRODUTO.AsInteger);
  cds_proc2.Open;
  cds_proc2.CommandText := varSql2;

  Edit3.Text := '1';
  if var_F = 'venda' then
    Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
  if var_F = 'compra' then
    Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
end;

procedure TfProcura_prodOficina.Edit3Exit(Sender: TObject);
var
    total :double;
begin
  inherited;
  if   var_F = 'venda' then
   if fVendas.cds_Mov_detLOTE.AsString <> '' then
   begin
       if fVendas.cdslotes.Active then
          fVendas.cdslotes.Close;
       fVendas.cdslotes.Params[0].AsString := cds_procLOTES.AsString;
       fVendas.cdslotes.Open;
       total := fVendas.cdslotesESTOQUE.Value - Edit4.Value;
       if (total < 0) then
       begin
         MessageDlg('Estoque insuficiente para essa venda', mtWarning, [mbOK], 0);
         fVendas.cdslotes.Close;
         exit;
       end;
       fVendas.cdslotes.Close;
   end;
end;

procedure TfProcura_prodOficina.SpeedButton1Click(Sender: TObject);
begin
  VCLReport_lista_produtos.FileName := str_relatorio + 'lista_produtos.rep';
  VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport_lista_produtos.Report.DataInfo.Items[0].SQL:= imp;
  VCLReport_lista_produtos.Execute;
end;

procedure TfProcura_prodOficina.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if var_F = 'venda' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
 if var_F = 'compra' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
end;

procedure TfProcura_prodOficina.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if var_F = 'venda' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
 if var_F = 'compra' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
end;

procedure TfProcura_prodOficina.SpeedButton2Click(Sender: TObject);
begin
  // busca o produto da lista
  if (cdsLista.Active) then
      cdsLista.Close;
  cdsLista.Params[0].AsString := edCodigo.Text;
  cdsLista.Open;
end;

procedure TfProcura_prodOficina.BitBtn8Click(Sender: TObject);
begin
  // adiciona o produto na na tabela Produtos

  if (not cdsLista.IsEmpty) then
  begin
    cdsLista.Edit;
    cdsListaUSAPRODUTO.asString := 'SIM';
    cdsLista.ApplyUpdates(0);
  end;
      BitBtn1.Click;

end;

procedure TfProcura_prodOficina.SpeedButton3Click(Sender: TObject);
begin
  fLotesCadastro := TfLotesCadastro.Create(Application);
  try
    fLotesCadastro.cdslotes.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
    fLotesCadastro.cdslotes.Open;
    fLotesCadastro.Label1.Caption := cds_procPRODUTO.AsString;
    fLotesCadastro.Label2.Caption := cds_procPRODUTO.AsString;    
    fLotesCadastro.ShowModal;
  finally
    fLotesCadastro.Free;
  end;
end;

procedure TfProcura_prodOficina.Edit2Exit(Sender: TObject);
var vlr: double;
begin
  if (Edit4.Value = 0) then
  begin
    vlr := Edit2.Value/Edit3.Value;
    Edit4.Value := vlr;
  end;
end;

procedure TfProcura_prodOficina.Edit4Exit(Sender: TObject);
var vlra, vlrb: double;
begin
  if (Edit4.Value > 0) then
  begin
    vlra := Edit4.Value * Edit3.value;
    Edit2.Value := vlra;
  end;

end;

procedure TfProcura_prodOficina.cbMarcaChange(Sender: TObject);
var sqlFam:string;
begin
//  if (cbMarca.Text = '') then
 //   exit;

  if DM.cds_familia.Active then
    DM.cds_familia.Close;
  sqlFam := dm.sds_familia.CommandText;
  if (cbMarca.Text <> '') then
  begin
    dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ' +
      'where MARCA = ' + QuotedStr(cbMarca.Text);
  end
  else
    dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS';
  DM.cds_familia.Open;
  DM.cds_familia.First;
  cbFamilia.Clear;
  while not DM.cds_familia.Eof do
  begin
     cbFamilia.Items.Add(DM.cds_familiaDESCFAMILIA.AsString);
     DM.cds_familia.Next;
  end;
  DM.cds_familia.CommandText := sqlFam;
  {if DM.cds_categoria.Active then
    DM.cds_categoria.Close;
  DM.cds_categoria.Params[0].Clear;
  DM.cds_categoria.Params[1].Clear;
  DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
  DM.cds_categoria.Open;
   }
end;

procedure TfProcura_prodOficina.SpeedButton4Click(Sender: TObject);
begin
  if (cds_proc.RecordCount = 1) then
  begin
    VCLReport_lista_produtos.FileName := str_relatorio + 'produto_etiqueta.rep';
    VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport_lista_produtos.Report.Params.ParamByName('N_ETIQUETAS').Value := Edit5.Text;
    VCLReport_lista_produtos.Report.Params.ParamByName('PRODUTO').Value := cds_procCODPRO.AsString;
  end
  else
  begin
    VCLReport_lista_produtos.FileName := str_relatorio + 'produto_etiqueta.rep';
    VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport_lista_produtos.Report.Params.ParamByName('N_ETIQUETAS').Value := Edit5.Text;
    VCLReport_lista_produtos.Report.Params.ParamByName('PRODUTO').Value := 'TODOS PRODUTOS';
  end;
  VCLReport_lista_produtos.Execute;


end;

procedure TfProcura_prodOficina.precolista1;
begin
   if (fCompra.cdslista.Active) then
     fCompra.cdslista.Close;
   fCompra.cdslista.Params[0].AsInteger := fCompra.cds_MovimentoCODFORNECEDOR.AsInteger;
   fCompra.cdslista.Params[1].AsString := cds_procCODPRO.AsString;
   fCompra.cdslista.Open;
   if (not fCompra.cdslista.IsEmpty) then
   begin
     fCompra.cds_Mov_detCODPRODUTO.AsInteger := fCompra.cdslistaCODPRODUTO.AsInteger;
     fCompra.cds_Mov_detCODPRO.AsString := fCompra.cdslistaCODIGO.AsString;
     fCompra.cds_Mov_detDESCPRODUTO.Value := fCompra.cdslistaPRODUTO.Value;
     fCompra.cds_Mov_detUN.AsString := fCompra.cdslistaUNIDADE.AsString;
     if (edit3.Text <> '') then
       fCompra.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.text)
     else
       fCompra.cds_Mov_detQUANTIDADE.AsFloat := 1;
     fCompra.cds_Mov_detPRECO.AsFloat := fCompra.cdslistaPRECOLISTA.AsFloat;
     fCompra.cds_Mov_det.Post;
   end
   else
   begin
     if (Panel2.Visible = True) then
     begin
       if Edit4.Text = '' then
        Edit4.Text := '0';
       if Edit3.Text = '' then
       begin
         Edit3.Text := '1';
         if (var_F = 'venda') then
           Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
         if (var_F = 'compra') then
           Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
       end;
     end;
     fCompra.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
     fCompra.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
     fCompra.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
     fCompra.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
     fCompra.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
     fCompra.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
     valorUnitario := cds_procPRECO_VENDA.AsFloat;
     fCompra.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
     fCompra.cds_Mov_det.Post;
   end;
end;

procedure TfProcura_prodOficina.cbFamiliaChange(Sender: TObject);
begin
 if (cbFamilia.Text <> '') then
 begin
    if not DM.cds_familia.Active then
        DM.cds_familia.Open;
       DM.cds_familia.Locate('DESCFAMILIA', CbFamilia.Text,[loCaseInsensitive]);
    if DM.cds_categoria.Active then
      DM.cds_categoria.Close;
    DM.cds_categoria.Params[0].Clear;
    DM.cds_categoria.Params[1].Clear;
    DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
    DM.cds_categoria.Open;
    dm.cds_categoria.First;
    cbCategoria.Items.Clear;
    while not dm.cds_categoria.Eof do
    begin
       cbCategoria.Items.Add(dm.cds_categoriaDESCCATEGORIA.AsString);
       dm.cds_categoria.Next;
    end;
    dm.cds_categoria.Close;
    dm.cds_familia.Close;
 end
 else
 begin
    if dm.cds_categoria.Active then
      dm.cds_categoria.Close;
    dm.cds_categoria.Params[0].Clear;
    dm.cds_categoria.Params[2].Clear;
    dm.cds_categoria.Params[1].AsString := 'todos';
    dm.cds_categoria.Open;
    dm.cds_categoria.First;
    cbCategoria.Items.Clear;
    while not dm.cds_categoria.Eof do
    begin
       cbCategoria.Items.Add(dm.cds_categoriaDESCCATEGORIA.AsString);
       dm.cds_categoria.Next;
    end;
    dm.cds_categoria.Close;
 end;
end;

procedure TfProcura_prodOficina.BitBtn6Click(Sender: TObject);
begin
 if Panel2.Visible = True then
   if BitBtn4.Enabled = true then
   begin
      if Edit4.Text = '' then
        Edit4.Text := '0';
      if Edit3.Text = '' then
      begin
         Edit3.Text := '1';
         if (var_F = 'venda') then
           Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
         if (var_F = 'compra') then
           Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
      end;
      if (var_F = 'os') then
      begin
        {CODPRODUTO      := cds_procCODPRODUTO.AsInteger;
        CODPRO          := cds_procCODPRO.AsString;
        DESCPRODUTO     := cds_procPRODUTO.Value;
        LOCALIZACAO     := cds_procLOCALIZACAO.Value;
        QUANTIDADE      := 1;
        PRECO_VENDA     := cds_procPRECO_VENDA.AsFloat;
        UN              := cds_procUNIDADEMEDIDA.AsString;
        CODALMOXARIFADO := cds_procCODALMOXARIFADO.AsInteger;}
      end;

      if (var_F = 'venda') then
      begin
        fVendas.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fVendas.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
        fVendas.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
        fVendas.cds_Mov_detLOCALIZACAO.Value := cds_procLOCALIZACAO.Value;
        fVendas.cds_Mov_detQUANTIDADE.AsFloat := Edit3.Value;
        fVendas.cds_Mov_detPRECO.AsFloat := Edit4.Value;
        fVendas.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
        valorUnitario := cds_procPRECO_VENDA.AsFloat;
        fVendas.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
      end;
      if (var_F = 'compra') then
      begin
        fCompra.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fCompra.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
        fCompra.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
        fCompra.cds_Mov_detQUANTIDADE.AsFloat := Edit3.Value;
        fCompra.cds_Mov_detPRECO.AsFloat := Edit4.Value;
        fCompra.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
        valorUnitario := cds_procPRECO_VENDA.AsFloat;
        fCompra.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
      end;
      if (var_F = 'estoque') then
      begin
        fEntra_Sai_estoque.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fEntra_Sai_estoque.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
        fEntra_Sai_estoque.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
        fEntra_Sai_estoque.cds_Mov_detQUANTIDADE.AsFloat := Edit3.Value;
        fEntra_Sai_estoque.cds_Mov_detPRECO.AsFloat := Edit4.value;
        fEntra_Sai_estoque.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
        fEntra_Sai_estoque.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
        valorUnitario := cds_procPRECO_VENDA.AsFloat;
        fEntra_Sai_estoque.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
      end;

      if (var_F = 'cadfornecedor') then
      begin
        fProdFornecedor.cdsCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fProdFornecedor.cdsCODIGO.AsString := cds_procCODPRO.AsString;
        fProdFornecedor.cdsPRODUTO.Value := cds_procPRODUTO.Value;
        fProdFornecedor.cdsUNIDADE.AsString := cds_procUNIDADEMEDIDA.AsString;
        fProdFornecedor.cdsCODFORNECEDOR.AsInteger := fProdFornecedor.codFornecedor;
      end;
      if (var_F = 'terminalloja') then
      begin
  {      fTerminalLoja.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fTerminalLoja.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
        fTerminalLoja.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
        fTerminalLoja.cds_Mov_detLOCALIZACAO.Value := cds_procLOCALIZACAO.Value;
        fTerminalLoja.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
        fTerminalLoja.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
        fTerminalLoja.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
        valorUnitario := cds_procPRECO_VENDA.AsFloat;
        fTerminalLoja.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
 }
        fTerminal_Delivery.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fTerminal_Delivery.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
        fTerminal_Delivery.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
        fTerminal_Delivery.cds_Mov_detLOCALIZACAO.Value := cds_procLOCALIZACAO.Value;
        fTerminal_Delivery.cds_Mov_detQUANTIDADE.AsFloat := Edit3.Value;
        fTerminal_Delivery.cds_Mov_detPRECO.AsFloat := Edit4.value;
        fTerminal_Delivery.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
        valorUnitario := cds_procPRECO_VENDA.AsFloat;
        fTerminal_Delivery.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
      end;
   end;
  //Panel2.Visible := false;
  //Panel1.Visible := true;
  Edit3.Text := '';
  Edit4.Text := '';
  BitBtn5.Enabled := false;
  BitBtn4.Enabled := true;
  if (var_F = 'filtroEstoque') then
  begin
    fecodProd := cds_procCODPRO.AsString;
    fecodProduto := cds_procCODPRODUTO.AsInteger;
    fenomeProduto := cds_procPRODUTO.Value;
  end;

  if (var_F = 'Lotes') then
  begin
    fLotes.cdslotesCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fLotes.cdslotesCODPRO.AsString := cds_procCODPRO.AsString;
    fLotes.cdslotesPRODUTO.Value := cds_procPRODUTO.Value;
    fLotes.cdslotesDATAFABRICACAO.AsDateTime := Now;
  end;

  if (var_F = 'Lista') then
  begin
     fCompra.CODIGOPRODUTO := cds_procCODPRO.AsString;
     if (usouAdiciona = 'nao usou') then
     begin
       fCompra.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
       fCompra.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
       fCompra.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
       fCompra.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
       valorUnitario := cds_procPRECO_VENDA.AsFloat;
       fCompra.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
     end;
  end;
  close;

end;

procedure TfProcura_prodOficina.formcompra;
begin
    if cds_procLOTES.AsString = 'S' then
    begin
      fLotes := TfLotes.Create(Application);
      try
        if fLotes.cdslotes.Active then
          fLotes.cdslotes.Close;
        fLotes.cdslotes.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
        fLotes.cdslotes.Open;
        if fLotes.cdslotes.IsEmpty then
        begin
          fLotes.cdslotes.Append;
          fLotes.cdslotesCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
          fLotes.cdslotesCODPRO.AsString := cds_procCODPRO.AsString;
          fLotes.cdslotesPRODUTO.Value := cds_procPRODUTO.Value;
          fLotes.cdslotesDATAFABRICACAO.AsDateTime := Now;
        end;
        fLotes.btnProdutoProcura.Enabled := False;
        var_F := 'procura';
        fLotes.ShowModal;
      finally
        fLotes.Free;
      end;
      var_F := 'compra';
    end;
    //---------------------------------
    fCompra.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fCompra.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    fCompra.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
    fCompra.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    fCompra.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    fCompra.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    fCompra.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    fCompra.cds_Mov_det.Post;
end;

procedure TfProcura_prodOficina.formnf;
begin
    if cds_procLOTES.AsString = 'S' then
    begin
      fLotes := TfLotes.Create(Application);
      try
        if fLotes.cdslotes.Active then
          fLotes.cdslotes.Close;
        fLotes.cdslotes.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
        fLotes.cdslotes.Open;
        fLotes.btnProdutoProcura.Enabled := False;
        fLotes.btnIncluir.Enabled := False;
        fLotes.btnGravar.Enabled := False;
        fLotes.btnExcluir.Enabled := False;
        fLotes.btnCancelar.Enabled := False;
        fLotes.btnProcurar.Enabled := False;
        var_F := 'procura_nf';
        fLotes.ShowModal;
      finally
        fLotes.Free;
      end;
      var_F := 'formnf';
    end;

    if cds_procLOTES.AsString = 'S' then
    if estoq < StrToInt(Edit3.Text) then
    begin
      MessageDlg('Estoque insuficiente ..', mtWarning, [mbOK], 0);
      exit;
    end;
    dmnf.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    dmnf.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    dmnf.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
    dmnf.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    dmnf.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    dmnf.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    dmnf.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    dmnf.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    DMNF.estoque := cds_procESTOQUEATUAL.AsFloat;
    dmnf.cds_Mov_det.Post;

end;

procedure TfProcura_prodOficina.formvenda;
begin
    if cds_procLOTES.AsString = 'S' then
    begin
      fLotes := TfLotes.Create(Application);
      try
        if fLotes.cdslotes.Active then
          fLotes.cdslotes.Close;
        fLotes.cdslotes.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
        fLotes.cdslotes.Open;
        fLotes.btnProdutoProcura.Enabled := False;
        fLotes.btnIncluir.Enabled := False;
        fLotes.btnGravar.Enabled := False;
        fLotes.btnExcluir.Enabled := False;
        fLotes.btnCancelar.Enabled := False;
        fLotes.btnProcurar.Enabled := False;
        var_F := 'procura_venda';
        fLotes.ShowModal;
      finally
        fLotes.Free;
      end;
      var_F := 'venda';
    end;
    if cds_procLOTES.AsString = 'S' then
    if estoq < StrToInt(Edit3.Text) then
    begin
      MessageDlg('Estoque insuficiente ..', mtWarning, [mbOK], 0);
      exit;
    end;
    fVendas.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fVendas.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    fVendas.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
    fVendas.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    fVendas.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    fVendas.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    fVendas.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    fVendas.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    fVendas.estoque := cds_procESTOQUEATUAL.AsFloat;
    fVendas.cds_Mov_det.Post;
end;

procedure TfProcura_prodOficina.formitens;
begin
    fnotafiscal.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    //fnotafiscal.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    fnotafiscal.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
    fnotafiscal.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    fnotafiscal.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    fnotafiscal.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    fnotafiscal.cds_Mov_detVALTOTAL.Value:= fnotafiscal.cds_Mov_detPRECO.Value *
       fnotafiscal.cds_Mov_detQUANTIDADE.Value;
    fnotafiscal.cds_Mov_det.Post;

end;

procedure TfProcura_prodOficina.formterminal;
begin

end;

procedure TfProcura_prodOficina.formterminaldelivery;
begin
    if (fTerminal_Delivery.cds_Mov_det.State in [dsBrowse]) then
       fTerminal_Delivery.cds_Mov_det.Append;
    fTerminal_Delivery.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fTerminal_Delivery.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    fTerminal_Delivery.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
    fTerminal_Delivery.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;    
    fTerminal_Delivery.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    fTerminal_Delivery.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    fTerminal_Delivery.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    fTerminal_Delivery.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    fTerminal_Delivery.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    fTerminal_Delivery.estoque := cds_procESTOQUEATUAL.AsFloat;
    fTerminal_Delivery.cds_Mov_det.Post;
end;

procedure TfProcura_prodOficina.formcadproduto;
begin

end;

procedure TfProcura_prodOficina.formentrasai;
begin
    fEntra_Sai_estoque.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fEntra_Sai_estoque.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    fEntra_Sai_estoque.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
    fEntra_Sai_estoque.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    fEntra_Sai_estoque.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    fEntra_Sai_estoque.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    fEntra_Sai_estoque.cds_Mov_detValorTotal.Value := fEntra_Sai_estoque.cds_Mov_detPRECO.Value *
       fEntra_Sai_estoque.cds_Mov_detQUANTIDADE.Value;
    fEntra_Sai_estoque.cds_Mov_det.Post;

end;

procedure TfProcura_prodOficina.formestoque;
begin
    if cds_procLOTES.AsString = 'S' then
    begin
      fLotes := TfLotes.Create(Application);
      try
        if fLotes.cdslotes.Active then
          fLotes.cdslotes.Close;
        fLotes.cdslotes.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
        fLotes.cdslotes.Open;
        fLotes.btnProdutoProcura.Enabled := False;
        var_F := 'procura_estoque';
        fLotes.ShowModal;
      finally
        fLotes.Free;
      end;
      var_F := 'estoque';
      if estoq1 < StrToInt(Edit3.Text) then
      begin
        MessageDlg('Estoque insuficiente ..', mtWarning, [mbOK], 0);
        exit;
      end;
    end;
    fEntra_Sai_estoque.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fEntra_Sai_estoque.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    fEntra_Sai_estoque.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
    fEntra_Sai_estoque.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    fEntra_Sai_estoque.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    fEntra_Sai_estoque.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    fEntra_Sai_estoque.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    fEntra_Sai_estoque.cds_Mov_det.Post;

end;

procedure TfProcura_prodOficina.formcadfornecedor;
begin
    if (fProdFornecedor.cds.State in [dsBrowse]) then
       fProdFornecedor.btnIncluir.Click;
    fProdFornecedor.cdsCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fProdFornecedor.cdsCODIGO.AsString := cds_procCODPRO.AsString;
    fProdFornecedor.cdsPRODUTO.Value := cds_procPRODUTO.Value;
    fProdFornecedor.cdsPRECOLISTA.AsFloat := StrToFloat(Edit4.Text);
    fProdFornecedor.cdsUNIDADE.AsString := cds_procUNIDADEMEDIDA.AsString;
    fProdFornecedor.cdsCODFORNECEDOR.AsInteger := fProdFornecedor.codFornecedor;
    fProdFornecedor.cds.ApplyUpdates(0);
end;

procedure TfProcura_prodOficina.formnotaf;
begin
    dmnf.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    dmnf.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    dmnf.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
    dmnf.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    dmnf.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    dmnf.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    dmnf.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    dmnf.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    DMNF.estoque := cds_procESTOQUEATUAL.AsFloat;
    dmnf.cds_Mov_det.Post;
end;

procedure TfProcura_prodOficina.formnfCompra;
begin
    dmnf.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    dmnf.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    dmnf.cds_Mov_detLOTE.AsString := DMNF.cds_MovimentoCONTROLE.AsString;
    dmnf.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
    dmnf.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    dmnf.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    dmnf.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    dmnf.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    dmnf.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    DMNF.estoque := cds_procESTOQUEATUAL.AsFloat;
    dmnf.cds_Mov_det.Post;
end;

procedure TfProcura_prodOficina.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
 {if (key = #13) then
 begin
   Edit3.Text := '1';
   if (Edit4.Text = '') then
     Edit4.Text := '0';
   Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
   if (var_F = 'compra') then
     Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
   Edit3.SetFocus;
 end;             }
end;

procedure TfProcura_prodOficina.BitBtn3Click(Sender: TObject);
begin
  fClassificacaoFiscalProduto := TfClassificacaoFiscalProduto.Create(Application);
  try
    fClassificacaoFiscalProduto.Label9.Caption := cds_procPRODUTO.AsString;
    fClassificacaoFiscalProduto.cfcodprod := cds_procCODPRODUTO.AsInteger;
    fClassificacaoFiscalProduto.cfcodproduto := cds_procCODPRO.AsString;
    fClassificacaoFiscalProduto.ShowModal;
  finally
    fClassificacaoFiscalProduto.Free;
  end;

end;

procedure TfProcura_prodOficina.DBGrid1DblClick(Sender: TObject);
begin
  btnIncluir.Click;
end;

procedure TfProcura_prodOficina.RadioGroup1Click(Sender: TObject);
begin
  if (RadioGroup1.ItemIndex = 0) then
  begin
    Panel2.Visible := True;
    Panel1.Visible := False;
    BitBtn2.Click;
    BitBtn1.Click;
  end;
  if (RadioGroup1.ItemIndex = 1) then
  begin
    Panel2.Visible := False;
    Panel1.Visible := True;
  end;
end;

end.