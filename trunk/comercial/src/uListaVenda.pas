unit uListaVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, StdCtrls, Mask, DBCtrls, DB, Menus, XPMenu, Buttons,
  ExtCtrls, MMJPanel, Grids, DBGrids, FMTBcd, SqlExpr, Provider, DBClient,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit;

type
  TfListaVenda = class(TfPai)
    gbLista: TGroupBox;
    lblCodcli: TLabel;
    lblCliente: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbCli: TDBEdit;
    dbNomeLista: TDBEdit;
    btnClienteProcura: TBitBtn;
    cdsLista_det: TClientDataSet;
    dspLista_det: TDataSetProvider;
    sdsLista_det: TSQLDataSet;
    dtsrcDet: TDataSource;
    sdsListaVenda: TSQLDataSet;
    dspListaVenda: TDataSetProvider;
    cdsListaVenda: TClientDataSet;
    sdsListaVendaCODLISTA: TIntegerField;
    sdsListaVendaCODCLIENTE: TIntegerField;
    sdsListaVendaNOMELISTA: TStringField;
    sdsListaVendaVALIDADE: TDateField;
    sdsListaVendaDATAINICIAL: TDateField;
    dbDataInicial: TJvDBDatePickerEdit;
    dbDataFinal: TJvDBDatePickerEdit;
    dbValidade: TJvDBDatePickerEdit;
    sdsListaVendaDATAFINAL: TDateField;
    cdsListaVendaCODLISTA: TIntegerField;
    cdsListaVendaCODCLIENTE: TIntegerField;
    cdsListaVendaNOMELISTA: TStringField;
    cdsListaVendaVALIDADE: TDateField;
    cdsListaVendaDATAINICIAL: TDateField;
    cdsListaVendaDATAFINAL: TDateField;
    edCliente: TEdit;
    btnTodosProd: TButton;
    scds_produto_proc: TSQLDataSet;
    scds_produto_procCODPRODUTO: TIntegerField;
    scds_produto_procCODPRO: TStringField;
    scds_produto_procPRODUTO: TStringField;
    scds_produto_procVALORUNITARIOATUAL: TFloatField;
    scds_produto_procVALOR_PRAZO: TFloatField;
    scds_produto_procVALORMINIMO: TFloatField;
    scds_produto_procESTOQUEATUAL: TFloatField;
    sdsLista_detCODLISTADET: TIntegerField;
    sdsLista_detCODLISTA: TIntegerField;
    sdsLista_detCODPRODUTO: TIntegerField;
    sdsLista_detALTPRECO: TStringField;
    sdsLista_detDESCONTO: TStringField;
    sdsLista_detDESCONTOMAX: TFloatField;
    sdsLista_detDESCONTOMIN: TFloatField;
    sdsLista_detMARGEM: TStringField;
    sdsLista_detMARGEMMAX: TFloatField;
    sdsLista_detMARGEMMIN: TFloatField;
    sdsLista_detESTOQUE: TFloatField;
    sdsLista_detPRECOCOMPRA: TFloatField;
    sdsLista_detPRECOVENDA: TFloatField;
    sdsLista_detPRODUTO: TStringField;
    cdsLista_detCODLISTADET: TIntegerField;
    cdsLista_detCODLISTA: TIntegerField;
    cdsLista_detCODPRODUTO: TIntegerField;
    cdsLista_detALTPRECO: TStringField;
    cdsLista_detDESCONTO: TStringField;
    cdsLista_detDESCONTOMAX: TFloatField;
    cdsLista_detDESCONTOMIN: TFloatField;
    cdsLista_detMARGEM: TStringField;
    cdsLista_detMARGEMMAX: TFloatField;
    cdsLista_detMARGEMMIN: TFloatField;
    cdsLista_detESTOQUE: TFloatField;
    cdsLista_detPRECOCOMPRA: TFloatField;
    cdsLista_detPRECOVENDA: TFloatField;
    cdsLista_detPRODUTO: TStringField;
    GroupBox1: TGroupBox;
    dbgDetalhe: TDBGrid;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    chkMargem: TDBCheckBox;
    chkDesconto: TDBCheckBox;
    chkPermite: TDBCheckBox;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure dbCliExit(Sender: TObject);
    procedure dbValidadeExit(Sender: TObject);
    procedure btnTodosProdClick(Sender: TObject);
    procedure cdsLista_detNewRecord(DataSet: TDataSet);
    procedure cdsListaVendaNewRecord(DataSet: TDataSet);
    procedure chkDescontoClick(Sender: TObject);
    procedure chkMargemClick(Sender: TObject);
    procedure dtsrcDetDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    cod_det : Integer;
  end;

var
  fListaVenda: TfListaVenda;

implementation

uses UDm, uProcurar_nf, UDMNF;

{$R *.dfm}

procedure TfListaVenda.btnClienteProcuraClick(Sender: TObject);
begin
  if (dtsrc.State in [dsInsert, dsEdit]) then
  begin
    inherited;
    DM.varNomeCliente := '';
    dm.codcli := 0;
    fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
    fProcurar_nf.BtnProcurar.Click;
    fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
    fProcurar_nf.btnIncluir.Visible := True;
    try
      if (fProcurar_nf.ShowModal = mrOK) then
        if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
        begin
          MessageDlg('Cliente com status "INATIVO" para criar uma lista para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
          exit;
        end;
        if dmnf.scds_cli_procBLOQUEIO.AsString = 'S' then
        begin
          MessageDlg('Cliente com cadastro "BLOQUEADO",  lista não permitida.', mtError, [mbOK], 0);
          exit;
        end;
    finally
      dmnf.scds_cli_proc.Close;
      fProcurar_nf.Free;
    end;

    if dtSrc.State=dsBrowse then
      cdsListaVenda.Edit;
    cdsListaVendaCODCLIENTE.AsInteger := dm.codcli;
    edCliente.Text := dm.varNomeCliente;
  end;
end;

procedure TfListaVenda.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsEdit, dsInsert]) then
  begin
    btnClienteProcura.Enabled := True;
    dbDataInicial.Enabled := True;
    dbDataFinal.Enabled := True;
    dbValidade.Enabled := True;
    if(not cdsLista_det.Active) then
      cdsLista_det.Open
    else
      cdsLista_det.Edit;
  end
  else
  begin
    btnClienteProcura.Enabled := False;
    dbDataInicial.Enabled := False;
    dbDataFinal.Enabled := False;
    dbValidade.Enabled := False;
  end;
end;

procedure TfListaVenda.FormCreate(Sender: TObject);
begin
//  inherited;
  cod_det := 1999999;
end;

procedure TfListaVenda.btnGravarClick(Sender: TObject);
begin
  if (cdsListaVendaCODLISTA.AsInteger = 1999999) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENLISTVEN, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cdsListaVendaCODLISTA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;

  cdsLista_det.First;
  while not cdsLista_det.Eof do
  begin
    if (cdsLista_detCODLISTA.AsInteger = 1999999) then
    begin
      if not (cdsLista_det.State in [dsEdit, dsInsert]) then
        cdsLista_det.Edit;
      cdsLista_detCODLISTA.AsInteger := cdsListaVendaCODLISTA.AsInteger;
    end;
    if (cdsLista_detCODLISTADET.AsInteger >= 1999999) then
    begin
      if not (cdsLista_det.State in [dsEdit, dsInsert]) then
        cdsLista_det.Edit;    
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENLISTVEN_DET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cdsLista_detCODLISTADET.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
    end;
    cdsLista_det.Next;
  end;
  cdsLista_det.ApplyUpdates(0);
end;

procedure TfListaVenda.dbCliExit(Sender: TObject);
begin
  if (dtsrc.State in [dsInsert, dsEdit]) then
  begin
    if (dbCli.Text = '') then
    begin
      exit;
    end;
    if dm.scds_cliente_proc.Active then
    dm.scds_cliente_proc.Close;
    dm.scds_cliente_proc.Params[0].Clear;
    dm.scds_cliente_proc.Params[1].Clear;
    dm.scds_cliente_proc.Params[2].Clear;
    dm.scds_cliente_proc.Params[2].AsInteger:=StrToInt(dbCli.Text);
    
    dm.scds_cliente_proc.Open;
    if dm.scds_cliente_proc.IsEmpty then begin
      if ( MessageDlg('Código não cadastrado, deseja pesquisar ?',mtWarning, [mbYes,mbNo],0) = mrYes )then
        btnClienteProcura.Click
      else
        cdsListaVendaCODCLIENTE.Clear;
        edCliente.Text := '';
      exit;
    end;
    if dm.scds_cliente_procBLOQUEIO.AsString = 'S' then
    begin
      MessageDlg('Cliente com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
      cdsListaVendaCODCLIENTE.Clear;
      edCliente.Text := '';
      exit;
    end;
    cdsListaVendaCODCLIENTE.AsInteger := dm.scds_cliente_procCODCLIENTE.AsInteger;
    edCliente.Text := dm.scds_cliente_procNOMECLIENTE.AsString;
    dm.scds_cliente_proc.Close;
  end;
end;

procedure TfListaVenda.dbValidadeExit(Sender: TObject);
begin
  inherited;
  if (dtsrc.State in [dsInsert, dsEdit]) then
    btnTodosProd.SetFocus;
end;

procedure TfListaVenda.btnTodosProdClick(Sender: TObject);
begin
  if(not scds_produto_proc.Active) then
    scds_produto_proc.Open;
  if(not cdsLista_det.Active) then
    cdsLista_det.Open;
  scds_produto_proc.First;
  while not scds_produto_proc.Eof do
  begin
    cdsLista_det.Append;
    cdsLista_detCODPRODUTO.AsInteger := scds_produto_procCODPRODUTO.AsInteger;
    cdsLista_detESTOQUE.AsFloat := scds_produto_procESTOQUEATUAL.AsFloat;
    cdsLista_detPRECOCOMPRA.AsFloat := scds_produto_procVALOR_PRAZO.AsFloat;
    cdsLista_detPRECOVENDA.AsFloat := scds_produto_procVALORUNITARIOATUAL.AsFloat;
    cdsLista_detPRODUTO.AsString := scds_produto_procPRODUTO.AsString;
    scds_produto_proc.Next;
  end;

end;

procedure TfListaVenda.cdsLista_detNewRecord(DataSet: TDataSet);
begin
  if (cod_det >= 1999999) then
  cod_det := cod_det +1;
  cdsLista_detCODLISTADET.asInteger := cod_det;
  cdsLista_detCODLISTA.AsInteger := cdsListaVendaCODLISTA.AsInteger;
end;

procedure TfListaVenda.cdsListaVendaNewRecord(DataSet: TDataSet);
begin
  cdsListaVendaCODLISTA.asInteger := 1999999;
  cdsListaVendaDATAINICIAL.AsDateTime := Now;
  cdsListaVendaDATAFINAL.AsDateTime := Now;
  cdsListaVendaVALIDADE.AsDateTime := Now;    
end;

procedure TfListaVenda.chkDescontoClick(Sender: TObject);
begin
  inherited;
  if(chkDesconto.Checked)then
  begin
    DBEdit2.Enabled := True;
    DBEdit3.Enabled := True;
  end
  else
  begin
    DBEdit2.Enabled := False;
    DBEdit3.Enabled := False;
    cdsLista_detDESCONTOMAX.Clear;
    cdsLista_detDESCONTOMIN.Clear;
  end
end;

procedure TfListaVenda.chkMargemClick(Sender: TObject);
begin
  inherited;
  if(chkMargem.Checked)then
  begin
    DBEdit4.Enabled := True;
    DBEdit5.Enabled := True;
  end
  else
  begin
    DBEdit4.Enabled := False;
    DBEdit5.Enabled := False;
    cdsLista_detMARGEMMAX.Clear;
    cdsLista_detMARGEMMIN.Clear;
  end
end;

procedure TfListaVenda.dtsrcDetDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if(cdsLista_detMARGEM.AsString = 'T') then
    chkMargem.Checked := True
  else
    chkMargem.Checked := False;

  if(cdsLista_detDESCONTO.AsString = 'T') then
    chkDesconto.Checked := True
  else
    chkDesconto.Checked := False;

  if(cdsLista_detALTPRECO.AsString = 'T') then
    chkPermite.Checked := True
  else
    chkPermite.Checked := False;
end;

end.
