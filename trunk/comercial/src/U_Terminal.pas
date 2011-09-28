unit U_Terminal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, dxCore, dxButton, JvExStdCtrls, JvEdit, JvValidateEdit,
  Mask, DBCtrls, JvExControls, JvLabel, JvExDBGrids, JvDBGrid, jpeg,
  ExtCtrls, JvExExtCtrls, JvImage, Grids, DBGrids, StdCtrls, ComCtrls,
  MMJPanel, JvSpeedButton, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  Menus, JvComponentBase, JvFormAutoSize, FMTBcd, DB, SqlExpr, Provider,
  DBClient, JvExButtons, JvBitBtn;

type
  TF_Terminal = class(TForm)
    MMJPanel2: TMMJPanel;
    JvDBGrid1: TJvDBGrid;
    MMJPanel5: TMMJPanel;
    Panel1: TPanel;
    JvLabel3: TJvLabel;
    MMJPanel8: TMMJPanel;
    JvLabel1: TJvLabel;
    EdtCodBarra1: TEdit;
    JvTotal: TJvValidateEdit;
    PopupMenu1: TPopupMenu;
    AlterarItendoPedido1: TMenuItem;
    F5ExcluirItemdoPedido1: TMenuItem;
    F7ExcluirPedido1: TMenuItem;
    LocalizarPedido1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Panel12: TPanel;
    JvImage1: TJvImage;
    MMJPanel4: TMMJPanel;
    JvLabel7: TJvLabel;
    EdtCodBarra: TEdit;
    MMJPanel7: TMMJPanel;
    JvLabel6: TJvLabel;
    JvLabel9: TJvLabel;
    JvLabel11: TJvLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    TabComanda: TTabSheet;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    MMJPanel3: TMMJPanel;
    JvLabel8: TJvLabel;
    EdtComanda: TEdit;
    JvDBGrid2: TJvDBGrid;
    TabDelivery: TTabSheet;
    DBGrid2: TDBGrid;
    MMJPanel6: TMMJPanel;
    JvLabel2: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    b_cliente: TSQLDataSet;
    b_clienteCODCLIENTE: TIntegerField;
    b_clienteNOMECLIENTE: TStringField;
    btnProduto: TBitBtn;
    scds_produto_proc: TClientDataSet;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    scds_produto_procCODPRODUTO: TIntegerField;
    scds_produto_procCOD_BARRA: TStringField;
    scds_produto_procPRODUTO: TStringField;
    scds_produto_procUNIDADEMEDIDA: TStringField;
    scds_produto_procQTDE_PCT: TFloatField;
    scds_produto_procICMS: TFloatField;
    scds_produto_procCODALMOXARIFADO: TIntegerField;
    scds_produto_procCONTA_DESPESA: TStringField;
    scds_produto_procALMOXARIFADO: TStringField;
    scds_produto_procVALORUNITARIOATUAL: TFloatField;
    scds_produto_procVALOR_PRAZO: TFloatField;
    scds_produto_procCOD_COMISSAO: TIntegerField;
    scds_produto_procRATEIO: TStringField;
    scds_produto_procTIPO: TStringField;
    scds_produto_procLOCALIZACAO: TStringField;
    scds_produto_procESTOQUEATUAL: TFloatField;
    JvProcurar: TJvBitBtn;
    JvAlterar: TJvBitBtn;
    JvBitBtn1: TJvBitBtn;
    JvBitBtn2: TJvBitBtn;
    JvBitBtn3: TJvBitBtn;
    SQLDataSet1: TSQLDataSet;
    Finalizar1: TMenuItem;
    F11ImprimirPedido1: TMenuItem;
    JvBitBtn5: TJvBitBtn;
    F9Sair1: TMenuItem;
    procedure EdtComandaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodBarraKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure EdtCodBarra1KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure JvAlterarClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure F5ExcluirItemdoPedido1Click(Sender: TObject);
    procedure F7ExcluirPedido1Click(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvBitBtn5Click(Sender: TObject);
  private
    clienteConsumidor,nomecliente, tipo_busca : string;
    codcliente : integer;
    procedure IncluiPedido;
    procedure AlteraPedido;
    procedure IncluiItemPedido;
    procedure BuscaProduto;
    procedure BuscaLote;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Terminal: TF_Terminal;
  CodigoProduto : Integer;
  RETORNO : String;

implementation

uses sCtrlResize, UDm, UDM_MOV, UDMNF, uFiltroMovimento,
  U_AlteraPedido, U_TerminalFinaliza, ufprocura_prod;

{$R *.dfm}

procedure TF_Terminal.EdtComandaKeyPress(Sender: TObject; var Key: Char);
begin
   // Se Precionar ENTER Busco a Comanda se não Encontrar Adiciona...
   if (key = #13) then
   begin
     if (EdtComanda.Text <> '') then
     begin
        if (DM_MOV.s_BuscaComanda.Active) then
          DM_MOV.s_BuscaComanda.Close;
        DM_MOV.s_BuscaComanda.Params[0].AsInteger := StrToInt(EdtComanda.Text);
        DM_MOV.s_BuscaComanda.Open;
        if (DM_MOV.s_BuscaComanda.IsEmpty) then
        begin
           DM_MOV.s_BuscaComanda.Close;
           ShowMessage('Comanda não Localizada');
           Exit;
        end;
        if (DM_MOV.s_buscaMov.Active) then
           DM_MOV.s_buscaMov.Close;
        DM_MOV.s_buscaMov.Params[1].Clear;
        DM_MOV.s_buscaMov.Params[3].Clear;
        DM_MOV.s_buscaMov.Params[5].Clear;
        DM_MOV.s_buscaMov.Params[0].AsInteger := StrtoInt(EdtComanda.Text);
        DM_MOV.s_buscaMov.Params[2].AsInteger := 3;
        DM_MOV.s_buscaMov.Params[4].AsInteger := 20;//Pedidos em aberto
        DM_MOV.s_buscaMov.Open;
        if (DM_MOV.s_buscaMov.IsEmpty)then
           IncluiPedido
        else
        begin
           if (DM_MOV.c_comanda.Active) then
               DM_MOV.c_comanda.Close;
           DM_MOV.c_comanda.Params[1].Clear;
           DM_MOV.c_comanda.Params[3].Clear;
           DM_MOV.c_comanda.Params[5].Clear;
           DM_MOV.c_comanda.Params[0].AsInteger := StrtoInt(EdtComanda.Text);
           DM_MOV.c_comanda.Params[2].AsInteger := 3;
           DM_MOV.c_comanda.Params[4].AsInteger := 20;
           DM_MOV.c_comanda.Open;
           AlteraPedido;
        end;

        DM_MOV.s_buscaMov.Close;
        DM_MOV.s_BuscaComanda.Close;
     end
     else
     begin
       if (DM_MOV.c_comanda.Active) then
         DM_MOV.c_comanda.Close;
       DM_MOV.c_comanda.Params[0].Clear;
       DM_MOV.c_comanda.Params[3].Clear;
       DM_MOV.c_comanda.Params[5].Clear;
       DM_MOV.c_comanda.Params[1].AsInteger := 9999999;
       DM_MOV.c_comanda.Params[2].AsInteger := 3;
       DM_MOV.c_comanda.Params[4].AsInteger := 20;
       DM_MOV.c_comanda.Open;
       DM_MOV.c_comanda.First;
       AlteraPedido;
     end;
   end;
end;

procedure TF_Terminal.IncluiItemPedido;
begin
   DM_MOV.c_movdet.Open;
   DM_MOV.c_movdet.Append;
   if dm.c_6_genid.Active then
     dm.c_6_genid.Close;
   dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
   dm.c_6_genid.Open;
   DM_MOV.c_movdetCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
   dm.c_6_genid.Close;
   DM_MOV.c_movdetSTATUS.AsInteger := 0; //0=Ativo, 1=Cancelado, 2=Excluido
   DM_MOV.c_movdetCODALMOXARIFADO.AsInteger := 0;
   if (PageControl1.ActivePage = TabSheet1) then
     DM_MOV.c_movdetCODMOVIMENTO.AsInteger := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
   if (PageControl1.ActivePage = TabComanda) then
     DM_MOV.c_movdetCODMOVIMENTO.AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
   //DM_MOV.c_movdetBAIXA
   DM_MOV.c_movdetQUANTIDADE.AsInteger := 1;
   DM_MOV.c_movdetUN.AsString := scds_produto_procUNIDADEMEDIDA.AsString;
   DM_MOV.c_movdetPRECO.AsFloat := scds_produto_procVALOR_PRAZO.AsFloat;
   DM_MOV.c_movdetDESCPRODUTO.AsString := scds_produto_procPRODUTO.AsString;
   DM_MOV.c_movdet.ApplyUpdates(0);
end;

procedure TF_Terminal.IncluiPedido;
begin
  if (PageControl1.ActivePage = TabSheet1) then
  begin
    DM_MOV.c_movimento.Open;
    DM_MOV.c_movimento.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DM_MOV.c_movimentoCODMOVIMENTO.asInteger := dm.c_6_genid.Fields[0].AsInteger;
    DM_MOV.c_movimentoCODPEDIDO.asInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    DM_MOV.c_movimentoCODNATUREZA.AsInteger := 3;
    DM_MOV.c_movimentoDATAMOVIMENTO.Value := Date;
    DM_MOV.c_movimentoDATA_SISTEMA.AsDateTime := Now;
    DM_MOV.c_movimentoSTATUS.Value := 20; //Venda em Aberto
    DM_MOV.c_movimentoCODUSUARIO.AsInteger := usulog;
    DM_MOV.c_movimentoNOMEUSUARIO.AsString := nome_user;
    DM_MOV.c_movimentoUSUARIOLOGADO.AsString := nome_user;
    DM_MOV.c_movimentoCODVENDEDOR.Value:=1;
    DM_MOV.c_movimentoCODCLIENTE.AsInteger := codcliente;
    DM_MOV.c_movimentoNOMECLIENTE.AsString := nomecliente;
    DM_MOV.c_movimentoCODALMOXARIFADO.AsInteger := 1;
    DM_MOV.c_movimento.ApplyUpdates(0);
  end;
  if (PageControl1.ActivePage = TabComanda) then
  begin
    DM_MOV.c_comanda.Open;
    DM_MOV.c_comanda.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DM_MOV.c_comandaCODMOVIMENTO.asInteger := dm.c_6_genid.Fields[0].AsInteger;
    DM_MOV.c_comandaCODPEDIDO.asInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    DM_MOV.c_comandaCODNATUREZA.AsInteger := 3;
    DM_MOV.c_comandaDATAMOVIMENTO.Value := Date;
    DM_MOV.c_comandaDATA_SISTEMA.AsDateTime := Now;
    DM_MOV.c_comandaSTATUS.Value := 20; //Venda em Aberto
    DM_MOV.c_comandaCODUSUARIO.AsInteger := usulog;
    DM_MOV.c_comandaCODVENDEDOR.Value:=1;
    DM_MOV.c_comandaCODCLIENTE.AsInteger := StrToInt(EdtComanda.Text);
    DM_MOV.c_comandaNOMECLIENTE.AsString := DM_MOV.s_BuscaComandaNOMECLIENTE.AsString;
    DM_MOV.c_comandaCODALMOXARIFADO.AsInteger := 1;
    DM_MOV.c_comanda.ApplyUpdates(0);
  end;
  if (PageControl1.ActivePage = TabDelivery) then
  begin

  end;

end;

procedure TF_Terminal.AlteraPedido;
begin
    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_movdet.Open;
end;

procedure TF_Terminal.BuscaProduto;
var varsql:string;
begin
  RETORNO := '';
  tipo_busca := '1'; //CODBARRA
  {------Verifico se a busca sera efetuada pelo CODPRO ou pelo CODBARRA ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'BUSCAPRODUTO';
  dm.cds_parametro.Open;
  if not dm.cds_parametro.IsEmpty then
     tipo_busca := dm.cds_parametroDADOS.AsString;   //CODPRO
  dm.cds_parametro.Close;


  varsql := 'select  prod.CODPRODUTO, prod.COD_BARRA, prod.PRODUTO, prod.UNIDADEMEDIDA ' +
         ', prod.QTDE_PCT, prod.ICMS, prod.CODALMOXARIFADO, prod.CONTA_DESPESA ' +
         ', ccus.ALMOXARIFADO, prod.VALORUNITARIOATUAL, prod.VALOR_PRAZO ' +
         ', prod.COD_COMISSAO, prod.RATEIO, prod.TIPO, prod.LOCALIZACAO, prod.ESTOQUEATUAL ' +
         ' from PRODUTOS prod ' +
         ' left outer join ALMOXARIFADO ccus ' +
         ' on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO ' +
         ' where ';

  if scds_produto_proc.Active then
    scds_produto_proc.Close;
  scds_produto_proc.CommandText := '';
  if (PageControl1.ActivePage = TabSheet1) then
  begin
    if (tipo_busca = 'CODBARRA') then
      scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + EdtCodBarra.Text + ''''
    else
      scds_produto_proc.CommandText := varsql + ' CODPRO = ' + '''' + EdtCodBarra.Text + '''';
  end;

  if (PageControl1.ActivePage = TabComanda) then
  begin
    if (tipo_busca = 'CODBARRA') then
      scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + EdtCodBarra1.Text + ''''
    else
      scds_produto_proc.CommandText := varsql + ' CODPRO = ' + '''' + EdtCodBarra1.Text + '''';
  end;

  scds_produto_proc.Open;

  if (scds_produto_proc.IsEmpty) then
  begin
     //BuscaLote;   // se não
     RETORNO := 'FALSO';
     scds_produto_proc.Close;
  end;

end;

procedure TF_Terminal.EdtCodBarraKeyPress(Sender: TObject; var Key: Char);
var varsql:string;
begin
   if (key = #13) then
   begin
      clienteConsumidor := '1';
      if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'CONSUMIDOR';
      dm.cds_parametro.Open;
      if not dm.cds_parametro.IsEmpty then
        clienteConsumidor := dm.cds_parametroDADOS.AsString;
      dm.cds_parametro.Close;

      if (b_cliente.Active) then
        b_cliente.Close;
      b_cliente.Params[0].AsInteger := StrToInt(clienteConsumidor);
      b_cliente.Open;
      if (b_cliente.IsEmpty) then
      begin
          ShowMessage('Cliente configurado nos parametros não consta no cadastro de clientes.');
          exit;
      end
      else
      begin
         codcliente := b_clienteCODCLIENTE.AsInteger;
         nomecliente := b_clienteNOMECLIENTE.AsString;
      end;

      if (EdtCodBarra.Text <> '') then
      begin
        if Dm.cds_parametro.Active then
            dm.cds_parametro.Close;
        dm.cds_parametro.Params[0].AsString := 'BUSCACUPOM';
        dm.cds_parametro.Open;
        if not dm.cds_parametro.IsEmpty then
           tipo_busca := dm.cds_parametroDADOS.AsString;   //CODPRO
        dm.cds_parametro.Close;

        if (tipo_busca = '3') then
        begin
           BuscaLote;
           if (RETORNO = 'FALSO') then
             BuscaProduto;
        end
        else
        begin
           BuscaProduto;
        end;

        if (RETORNO = 'FALSO') then
        begin
          if (DM_MOV.c_movimento.State in [dsInactive]) then
             IncluiPedido     // Tabela Movimento
          else
             DM_MOV.c_movimento.Edit;
          btnProduto.Click
        end
        else
        begin
          if (DM_MOV.c_movimento.State in [dsInactive]) then
             IncluiPedido     // Tabela Movimento
          else
             DM_MOV.c_movimento.Edit;
          IncluiItemPedido;   // Tabela MovimentoDetalhe
        end;
      end
      else
      begin
          if (DM_MOV.c_movimento.State in [dsInactive]) then
             IncluiPedido     // Tabela Movimento
          else
             DM_MOV.c_movimento.Edit;

          btnProduto.Click;
          
          JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;
          if (scds_produto_proc.Active) then
            scds_produto_proc.Close;
      end;
   end;
end;

procedure TF_Terminal.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  //  ActiveMDIChild.Close;
  //Action := caFree;
  //F_Terminal := nil;
  if (DM_MOV.c_movimento.Active) then
     DM_MOV.c_movimento.Close;
  if (DM_MOV.c_comanda.Active) then
     DM_MOV.c_comanda.Close;
  if (DM_MOV.c_movdet.Active) then
     DM_MOV.c_movdet.Close;
  if (DM_MOV.c_venda.Active) then
     DM_MOV.c_venda.Close;
  if (DM_MOV.c_movimento.Active) then
     DM_MOV.c_movimento.Close;
  close;
  
end;

procedure TF_Terminal.JvProcurarClick(Sender: TObject);
begin
    if (not dmnf.cds_ccusto.Active) then
        dmnf.cds_ccusto.Open;
    dmnf.cds_ccusto.First;
    while not dmnf.cds_ccusto.Eof do
    begin
      fFiltroMovimento.ComboBox1.Items.Add(dmnf.cds_ccustoNOME.AsString);
      dmnf.cds_ccusto.Next;
    end;
    {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
    if dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'NATUREZAVENDA';
    dm.cds_parametro.Open;

    //fFiltroMovimento := TfFiltroMovimento.Create(Self);
    //sCtrlResize.CtrlResize(TForm(fFiltroMovimento));
    fFiltroMovimento.Edit3.Text := dm.cds_parametroDADOS.AsString;
    fFiltroMovimento.Edit4.Text := dm.cds_parametroD1.AsString;
    fFiltroMovimento.BitBtn8.Enabled := False;
    fFiltroMovimento.Edit3.Text := '';

    dm.cds_parametro.Close;
    fFiltroMovimento.ShowModal;
    DM_MOV.c_movimento.Close;
    DM_MOV.c_movimento.Params[0].AsInteger := fFiltroMovimento.cod_mov;
    DM_MOV.c_movimento.Open;

    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].AsInteger := fFiltroMovimento.cod_mov;
    DM_MOV.c_movdet.Open;

end;

procedure TF_Terminal.FormCreate(Sender: TObject);
begin
  {------Pesquisando na tab Parametro se usa DELIVERY ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PDV';
  dm.cds_parametro.Open;
  TabSheet1.TabVisible := False;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    TabSheet1.TabVisible := True;
    MMJPanel8.Visible := False;
    
  end;

  {------Pesquisando na tab Parametro se usa DELIVERY ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DELIVERY';
  dm.cds_parametro.Open;
  TabDelivery.TabVisible := False;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    TabDelivery.TabVisible := True;
    MMJPanel8.Visible :=True;
  end;

  {------Pesquisando na tab Parametro se usa COMANDA ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'COMANDA';
  dm.cds_parametro.Open;
  TabComanda.TabVisible := False;

  if (not dm.cds_parametro.IsEmpty) then
  begin
    TabComanda.TabVisible := True;
    MMJPanel8.Visible :=True;
    if (DM_MOV.c_comanda.Active) then
      DM_MOV.c_comanda.Close;
    DM_MOV.c_comanda.Params[0].Clear;
    DM_MOV.c_comanda.Params[3].Clear;
    DM_MOV.c_comanda.Params[5].Clear;
    DM_MOV.c_comanda.Params[1].AsInteger := 9999999;
    DM_MOV.c_comanda.Params[2].AsInteger := 3;
    DM_MOV.c_comanda.Params[4].AsInteger := 20;
    DM_MOV.c_comanda.Open;
  end;

  if (PageControl1.ActivePage = TabSheet1) then
    MMJPanel8.Visible :=False;

end;

procedure TF_Terminal.JvDBGrid2DblClick(Sender: TObject);
begin
    EdtComanda.Text := IntToStr(DM_MOV.c_comandaCODCLIENTE.AsInteger);
    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].Clear;
    DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_movdet.Open;
    if (not DM_MOV.c_movdet.IsEmpty) then
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value
    else
      JvTotal.AsFloat := 0;
end;

procedure TF_Terminal.PageControl1Change(Sender: TObject);
begin
  if (DM_MOV.c_movimento.Active) then
      DM_MOV.c_movimento.Close;
  if (DM_MOV.c_movdet.Active) then
      DM_MOV.c_movdet.Close;
  JvTotal.AsFloat := 0;    
  if (PageControl1.ActivePage = TabSheet1) then
  begin
    MMJPanel8.Visible :=False;
    EdtCodBarra.SetFocus;
  end;
  if (PageControl1.ActivePage = TabComanda) then
  begin
    MMJPanel8.Visible := True;
    EdtComanda.SetFocus;
  end;

  if (PageControl1.ActivePage = TabDelivery) then
  begin
    MMJPanel8.Visible :=True;
    Edit6.SetFocus;
  end;  

end;

procedure TF_Terminal.EdtCodBarra1KeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
   begin
      BuscaProduto;
      if (RETORNO = 'FALSO') then
         btnProduto.Click
      else
         IncluiItemPedido;

      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;

      if (scds_produto_proc.Active) then
        scds_produto_proc.Close;
   end;
end;

procedure TF_Terminal.JvDBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    EdtComanda.Text := IntToStr(DM_MOV.c_comandaCODCLIENTE.AsInteger);
    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_movdet.Open;
    if (not DM_MOV.c_movdet.IsEmpty) then
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value
    else
      JvTotal.AsFloat := 0;    
end;

procedure TF_Terminal.JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    EdtComanda.Text := IntToStr(DM_MOV.c_comandaCODCLIENTE.AsInteger);
    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_movdet.Open;
    if (not DM_MOV.c_movdet.IsEmpty) then
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value
    else
      JvTotal.AsFloat := 0;
end;

procedure TF_Terminal.JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
    EdtComanda.Text := IntToStr(DM_MOV.c_comandaCODCLIENTE.AsInteger);
    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_movdet.Open;
    if (not DM_MOV.c_movdet.IsEmpty) then
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value
    else
      JvTotal.AsFloat := 0;    
end;

procedure TF_Terminal.JvAlterarClick(Sender: TObject);
begin
 if (not DM_MOV.c_movdet.Active) then
    Exit;
    
 F_AlteraPedido:=TF_AlteraPedido.Create(Application);
 try
   DM_MOV.c_movdet.Edit;
   F_AlteraPedido.JvQtde.AsFloat := DM_MOV.c_movdetQUANTIDADE.AsFloat;
   F_AlteraPedido.JvUnitario.AsFloat := DM_MOV.c_movdetPRECO.AsFloat;
   F_AlteraPedido.ShowModal;
 finally
   F_AlteraPedido.Free;
 end;
end;

procedure TF_Terminal.btnProdutoClick(Sender: TObject);
begin
   if (PageControl1.ActivePage = TabSheet1) then
     if DM_MOV.d_movimento.DataSet.State in [dsInactive] then
       exit;
   if (PageControl1.ActivePage = TabComanda) then
     if DM_MOV.d_comanda.DataSet.State in [dsInactive] then
       exit;

   fProcura_prod.Panel2.Visible := True;
   fProcura_prod.Panel1.Visible := False;
   var_F := 'terminalloja';
   fProcura_prod.Edit2.ReadOnly := True;
   fProcura_prod.Edit2.TabStop := False;
   fProcura_prod.BitBtn1.Click;
   fProcura_prod.ShowModal;
end;

procedure TF_Terminal.F5ExcluirItemdoPedido1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DM_MOV.d_movdet.DataSet.Delete;
     (DM_MOV.d_movdet.DataSet as TClientDataSet).ApplyUpdates(0);
  end
  else
    Abort;
end;

procedure TF_Terminal.F7ExcluirPedido1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DM_MOV.d_movimento.DataSet.Delete;
     (DM_MOV.d_movimento.DataSet as TClientDataSet).ApplyUpdates(0);
  end
  else
    Abort;
end;

procedure TF_Terminal.JvBitBtn3Click(Sender: TObject);
begin
 if (PageControl1.ActivePage = TabSheet1) then
 begin
    if (not DM_MOV.c_movimento.Active) then
      exit;
    DM_MOV.PAGECONTROL := 'PDV';
 end;

 if (PageControl1.ActivePage = TabComanda) then
 begin
    if (not DM_MOV.c_comanda.Active) then
      exit;
    DM_MOV.PAGECONTROL := 'COMANDA';
 end;

 if (PageControl1.ActivePage = TabDelivery) then
    DM_MOV.PAGECONTROL := 'DELIVERY';

 F_TerminalFinaliza:=TF_TerminalFinaliza.Create(Application);
 try
   F_TerminalFinaliza.ShowModal;
 finally
   F_TerminalFinaliza.Free;
 end;
 
end;

procedure TF_Terminal.BuscaLote;
var varsql:string;
begin

  varsql := 'select  prod.CODPRODUTO, prod.COD_BARRA, prod.PRODUTO, prod.UNIDADEMEDIDA ' +
         ', prod.QTDE_PCT, prod.ICMS, prod.CODALMOXARIFADO, prod.CONTA_DESPESA ' +
         ', ccus.ALMOXARIFADO, prod.VALORUNITARIOATUAL, prod.VALOR_PRAZO ' +
         ', prod.COD_COMISSAO, prod.RATEIO, prod.TIPO, prod.LOCALIZACAO, prod.ESTOQUEATUAL ' +
         ', est.LOTE ' +
         ' from PRODUTOS prod ' +
         ' left outer join ALMOXARIFADO ccus ' +
         ' on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO ' +
         ' left outer join ESTOQUEMES est ' +
         ' on est.CODPRODUTO = prod.CODPRODUTO ' +
         ' where ';

  if scds_produto_proc.Active then
    scds_produto_proc.Close;
  scds_produto_proc.CommandText := '';
  if (PageControl1.ActivePage = TabSheet1) then
      scds_produto_proc.CommandText := varsql + ' est.LOTE = ' + '''' + EdtCodBarra.Text + '''' ;


  if (PageControl1.ActivePage = TabComanda) then
      scds_produto_proc.CommandText := varsql + ' est.LOTE = ' + '''' + EdtCodBarra1.Text + '''' ;

  scds_produto_proc.Open;
  
  if (scds_produto_proc.IsEmpty) then
  begin
     //ShowMessage('Produto não Localizado');
     scds_produto_proc.Close;
     RETORNO := 'FALSO';
  end;


end;

procedure TF_Terminal.FormShow(Sender: TObject);
begin
  if (PageControl1.ActivePage = TabSheet1) then
     EdtCodBarra.SetFocus;
end;

procedure TF_Terminal.JvBitBtn5Click(Sender: TObject);
begin
   close;
end;

end.
