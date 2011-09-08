unit U_Terminal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, dxCore, dxButton, JvExStdCtrls, JvEdit, JvValidateEdit,
  Mask, DBCtrls, JvExControls, JvLabel, JvExDBGrids, JvDBGrid, jpeg,
  ExtCtrls, JvExExtCtrls, JvImage, Grids, DBGrids, StdCtrls, ComCtrls,
  MMJPanel, JvSpeedButton, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  Menus, JvComponentBase, JvFormAutoSize;

type
  TF_Terminal = class(TForm)
    MMJPanel2: TMMJPanel;
    JvDBGrid1: TJvDBGrid;
    MMJPanel5: TMMJPanel;
    Panel1: TPanel;
    JvLabel3: TJvLabel;
    JvExcluir: TJvSpeedButton;
    JvProcurar: TJvSpeedButton;
    MMJPanel8: TMMJPanel;
    JvLabel1: TJvLabel;
    EdtCodBarra1: TEdit;
    JvAlterar: TJvSpeedButton;
    JvTotal: TJvValidateEdit;
    JvRelatorios: TJvSpeedButton;
    PopupMenu1: TPopupMenu;
    AlterarItendoPedido1: TMenuItem;
    F5ExcluirItemdoPedido1: TMenuItem;
    F7ExcluirPedido1: TMenuItem;
    LocalizarPedido1: TMenuItem;
    JvSpeedButton1: TJvSpeedButton;
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
    procedure JvSpeedButton1Click(Sender: TObject);
  private
    procedure IncluiPedido;
    procedure AlteraPedido;
    procedure IncluiItemPedido;
    procedure BuscaProduto;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Terminal: TF_Terminal;
  CodigoProduto : Integer;
  RETORNO : String;

implementation

uses sCtrlResize, UDm, UDM_MOV, DB, UDMNF, uFiltroMovimento,
  U_AlteraPedido, U_TerminalFinaliza;

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
   DM_MOV.c_movdetUN.AsString := DM_MOV.s_buscaProdUNIDADEMEDIDA.AsString;
   DM_MOV.c_movdetPRECO.AsFloat := DM_MOV.s_buscaProdVALOR_PRAZO.AsFloat;
   DM_MOV.c_movdetDESCPRODUTO.AsString := DM_MOV.s_buscaProdPRODUTO.AsString;
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
    DM_MOV.c_movimentoCODVENDEDOR.Value:=1;
    DM_MOV.c_movimentoCODCLIENTE.AsInteger := 1;
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
begin

  if (DM_MOV.s_buscaProd.Active) then
      DM_MOV.s_buscaProd.Close;
  if (PageControl1.ActivePage = TabSheet1) then
    DM_MOV.s_buscaProd.Params[0].AsString := EdtCodBarra.Text
  else
    DM_MOV.s_buscaProd.Params[0].AsString := EdtCodBarra1.Text;
  DM_MOV.s_buscaProd.Open;
  if (DM_MOV.s_buscaProd.IsEmpty) then
  begin
     ShowMessage('Produto não Localizado');
     DM_MOV.s_buscaProd.Close;
     RETORNO := 'FALSO';
  end;
  DM_MOV.s_buscaProd.Open;
end;

procedure TF_Terminal.EdtCodBarraKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
   begin
      BuscaProduto;
      if (RETORNO = 'FALSO') then
         Exit;

      if (DM_MOV.c_movimento.State in [dsInactive]) then
         IncluiPedido
      else
         DM_MOV.c_movimento.Edit;

      IncluiItemPedido;
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;
   end;
end;

procedure TF_Terminal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //  ActiveMDIChild.Close;
  Action := caFree;
  F_Terminal := nil;
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

    fFiltroMovimento := TfFiltroMovimento.Create(Self);
    sCtrlResize.CtrlResize(TForm(fFiltroMovimento));
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
    MMJPanel8.Visible :=False;
  if (PageControl1.ActivePage = TabComanda) then
    MMJPanel8.Visible :=True;
  if (PageControl1.ActivePage = TabDelivery) then
    MMJPanel8.Visible :=True;

end;

procedure TF_Terminal.EdtCodBarra1KeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
   begin
      BuscaProduto;
      if (RETORNO = 'FALSO') then
         Exit;
      IncluiItemPedido;
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;
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

procedure TF_Terminal.JvSpeedButton1Click(Sender: TObject);
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

end.
