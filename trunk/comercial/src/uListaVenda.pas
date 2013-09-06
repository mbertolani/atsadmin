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
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbNomeLista: TDBEdit;
    cdsLista_det: TClientDataSet;
    dspLista_det: TDataSetProvider;
    sdsLista_det: TSQLDataSet;
    dtsrcDet: TDataSource;
    sdsListaVenda: TSQLDataSet;
    dspListaVenda: TDataSetProvider;
    cdsListaVenda: TClientDataSet;
    sdsListaVendaCODLISTA: TIntegerField;
    sdsListaVendaNOMELISTA: TStringField;
    sdsListaVendaVALIDADE: TDateField;
    sdsListaVendaDATAINICIAL: TDateField;
    dbDataInicial: TJvDBDatePickerEdit;
    dbDataFinal: TJvDBDatePickerEdit;
    dbValidade: TJvDBDatePickerEdit;
    sdsListaVendaDATAFINAL: TDateField;
    cdsListaVendaCODLISTA: TIntegerField;
    cdsListaVendaNOMELISTA: TStringField;
    cdsListaVendaVALIDADE: TDateField;
    cdsListaVendaDATAINICIAL: TDateField;
    cdsListaVendaDATAFINAL: TDateField;
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
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure dbValidadeExit(Sender: TObject);
    procedure btnTodosProdClick(Sender: TObject);
    procedure cdsLista_detNewRecord(DataSet: TDataSet);
    procedure cdsListaVendaNewRecord(DataSet: TDataSet);
    procedure chkDescontoClick(Sender: TObject);
    procedure chkMargemClick(Sender: TObject);
    procedure dtsrcDetDataChange(Sender: TObject; Field: TField);
    procedure btnProcurarClick(Sender: TObject);
  private
    { Private declarations }
  public
    cod_det : Integer;
  end;

var
  fListaVenda: TfListaVenda;

implementation

uses UDm, uProcurar_nf, UDMNF, uListaVendaProc;

{$R *.dfm}

procedure TfListaVenda.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsEdit, dsInsert]) then
  begin
    dbDataInicial.Enabled := True;
    dbDataFinal.Enabled := True;
    dbValidade.Enabled := True;
    if(not cdsLista_det.Active) then
      cdsLista_det.Open;
  end
  else
  begin
    dbDataInicial.Enabled := False;
    dbDataFinal.Enabled := False;
    dbValidade.Enabled := False;
  end;
end;

procedure TfListaVenda.FormCreate(Sender: TObject);
begin
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
    cdsLista_detALTPRECO.AsString := 'F';
    cdsLista_detDESCONTO.AsString := 'F';
    cdsLista_detDESCONTOMAX.AsFloat := 0;
    cdsLista_detDESCONTOMIN.AsFloat := 0;
    cdsLista_detMARGEM.AsString := 'F';
    cdsLista_detMARGEMMAX.AsFloat := 0;
    cdsLista_detMARGEMMIN.AsFloat := 0;
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
  if (dtsrcDet.State in [dsEdit, dsInsert]) then
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
  if (dtsrcDet.State in [dsEdit, dsInsert]) then
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
  if (dtsrcDet.State in [dsEdit]) then
    if (DtSrc.State in [dsBrowse]) then
      cdsListaVenda.Edit;
end;

procedure TfListaVenda.btnProcurarClick(Sender: TObject);
begin
  fListaVendaProc := TfListaVendaProc.Create(Application);
  try
    fListaVendaProc.ShowModal;
  finally
    if (cdsListaVenda.Active ) then
      cdsListaVenda.Close;
    cdsListaVenda.Params[0].AsInteger := fListaVendaProc.codlista;
    cdsListaVenda.Open;
    if (cdsLista_det.Active) then
      cdsLista_det.Close;
    cdsLista_det.Params[0].AsInteger := fListaVendaProc.codlista;
    cdsLista_det.Open;
    fListaVendaProc.Free;
  end;
end;

end.
