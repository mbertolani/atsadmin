unit uCorreio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Mask, DBCtrls, EDBFind, FMTBcd, SqlExpr, Provider, DBClient,
  Grids, DBGrids, JvExStdCtrls, JvCombobox, JvDBSearchComboBox ,DBxPress,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, ComCtrls, JvDBControls, rpcompobase, rpvclreport;

type
  TfCorreio = class(TfPai_new)
    dCliente: TDataSource;
    cCliente: TClientDataSet;
    cClienteCODCLIENTE: TIntegerField;
    cClienteNOMECLIENTE: TStringField;
    pCliente: TDataSetProvider;
    sCliente: TSQLDataSet;
    sClienteCODCLIENTE: TIntegerField;
    sClienteNOMECLIENTE: TStringField;
    Arquivo: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    jvNome: TJvDBSearchComboBox;
    jvCod: TJvDBSearchComboBox;
    btnRetirada: TBitBtn;
    btnproc: TBitBtn;
    Edit1: TEdit;
    btnproc1: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    btnproc2: TBitBtn;
    dspCorreio: TDataSetProvider;
    cdsCorreio: TClientDataSet;
    cdsCorreioCODOC: TIntegerField;
    cdsCorreioCODFIR: TSmallintField;
    cdsCorreioFOTO: TSmallintField;
    cdsCorreioROLO: TSmallintField;
    cdsCorreioNUMCAI: TFloatField;
    cdsCorreioCODDEP: TStringField;
    cdsCorreioCODSEC: TStringField;
    cdsCorreioCODLOC: TSmallintField;
    cdsCorreioATIVO: TStringField;
    cdsCorreioCODDOC: TStringField;
    cdsCorreioDTINID: TDateField;
    cdsCorreioDTFIND: TDateField;
    cdsCorreioDOCINI: TFloatField;
    cdsCorreioDOCFIN: TFloatField;
    cdsCorreioESTANTE: TSmallintField;
    cdsCorreioPRATEL: TSmallintField;
    cdsCorreioDESCARTE: TFloatField;
    cdsCorreioDTRET: TDateField;
    cdsCorreioNOMERET: TStringField;
    cdsCorreioNDOCRET: TStringField;
    cdsCorreioDTPREV: TDateField;
    cdsCorreioOBSRET: TStringField;
    cdsCorreioOBS: TMemoField;
    cdsCorreioDTINC: TDateField;
    cdsCorreioCOLUNA: TSmallintField;
    cdsCorreioNCAICLI: TFloatField;
    cdsCorreioOBS2: TStringField;
    cdsCorreioTAMANHO: TStringField;
    cdsCorreioA: TStringField;
    cdsCorreioNUMDOC: TStringField;
    cdsCorreioDATA: TStringField;
    cdsCorreioQTDADE: TFloatField;
    cdsCorreioCODIDIO: TSmallintField;
    cdsCorreioDESCR: TStringField;
    cdsCorreioFASE: TStringField;
    cdsCorreioUSUARIO: TStringField;
    cdsCorreioDTUSU: TDateField;
    cdsCorreioHORAUSU: TStringField;
    cdsCorreioREGCAI: TFloatField;
    cdsCorreioJADESC: TStringField;
    cdsCorreioRAZAOSOCIAL: TStringField;
    sdsCorreio: TSQLDataSet;
    sdsCorreioCODOC: TIntegerField;
    sdsCorreioCODFIR: TSmallintField;
    sdsCorreioFOTO: TSmallintField;
    sdsCorreioROLO: TSmallintField;
    sdsCorreioNUMCAI: TFloatField;
    sdsCorreioCODDEP: TStringField;
    sdsCorreioCODSEC: TStringField;
    sdsCorreioCODLOC: TSmallintField;
    sdsCorreioATIVO: TStringField;
    sdsCorreioCODDOC: TStringField;
    sdsCorreioDTINID: TDateField;
    sdsCorreioDTFIND: TDateField;
    sdsCorreioDOCINI: TFloatField;
    sdsCorreioDOCFIN: TFloatField;
    sdsCorreioESTANTE: TSmallintField;
    sdsCorreioPRATEL: TSmallintField;
    sdsCorreioDESCARTE: TFloatField;
    sdsCorreioDTRET: TDateField;
    sdsCorreioNOMERET: TStringField;
    sdsCorreioNDOCRET: TStringField;
    sdsCorreioDTPREV: TDateField;
    sdsCorreioOBSRET: TStringField;
    sdsCorreioOBS: TMemoField;
    sdsCorreioDTINC: TDateField;
    sdsCorreioCOLUNA: TSmallintField;
    sdsCorreioNCAICLI: TFloatField;
    sdsCorreioOBS2: TStringField;
    sdsCorreioTAMANHO: TStringField;
    sdsCorreioA: TStringField;
    sdsCorreioNUMDOC: TStringField;
    sdsCorreioDATA: TStringField;
    sdsCorreioQTDADE: TFloatField;
    sdsCorreioCODIDIO: TSmallintField;
    sdsCorreioDESCR: TStringField;
    sdsCorreioFASE: TStringField;
    sdsCorreioUSUARIO: TStringField;
    sdsCorreioDTUSU: TDateField;
    sdsCorreioHORAUSU: TStringField;
    sdsCorreioREGCAI: TFloatField;
    sdsCorreioJADESC: TStringField;
    sdsCorreioRAZAOSOCIAL: TStringField;
    cdsT: TClientDataSet;
    cdsTID: TIntegerField;
    cdsTCODDOC: TStringField;
    cdsTDESCR: TStringField;
    dspT: TDataSetProvider;
    sqlT: TSQLDataSet;
    sqlTID: TIntegerField;
    sqlTCODDOC: TStringField;
    sqlTDESCR: TStringField;
    sqlCa: TSQLDataSet;
    sqlCaID: TIntegerField;
    sqlCaCODDEP: TStringField;
    sqlCaDESCR: TStringField;
    sqlCaOBS: TStringField;
    dspCA: TDataSetProvider;
    cdsCa: TClientDataSet;
    cdsCaID: TIntegerField;
    cdsCaCODDEP: TStringField;
    cdsCaDESCR: TStringField;
    cdsCaOBS: TStringField;
    dspS: TDataSetProvider;
    sqlS: TSQLDataSet;
    sqlSID: TIntegerField;
    sqlSCODSEC: TStringField;
    sqlSDESCR: TStringField;
    cdsS: TClientDataSet;
    cdsSID: TIntegerField;
    cdsSCODSEC: TStringField;
    cdsSDESCR: TStringField;
    dsDetR: TDataSource;
    DBGrid1: TDBGrid;
    cdsDetR: TClientDataSet;
    sqlDetR: TSQLDataSet;
    dspDetR: TDataSetProvider;
    sqlDetRCODOC: TIntegerField;
    sqlDetRCODDETALHE: TIntegerField;
    sqlDetRCODFIR: TIntegerField;
    sqlDetRNOMERET: TStringField;
    sqlDetRNDOCRET: TStringField;
    sqlDetRDTPREV: TDateField;
    sqlDetRDTRET: TDateField;
    sqlDetROBSRET: TStringField;
    sqlDetROBS: TMemoField;
    sqlDetRTIPO: TStringField;
    sqlDetRNUMCAI: TFloatField;
    sqlDetRNCAICLI: TFloatField;
    cdsDetRCODOC: TIntegerField;
    cdsDetRCODDETALHE: TIntegerField;
    cdsDetRCODFIR: TIntegerField;
    cdsDetRNOMERET: TStringField;
    cdsDetRNDOCRET: TStringField;
    cdsDetRDTPREV: TDateField;
    cdsDetRDTRET: TDateField;
    cdsDetROBSRET: TStringField;
    cdsDetROBS: TMemoField;
    cdsDetRTIPO: TStringField;
    cdsDetRNUMCAI: TFloatField;
    cdsDetRNCAICLI: TFloatField;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    Label26: TLabel;
    DBEdit26: TDBEdit;
    Label27: TLabel;
    DBMemo2: TDBMemo;
    btnDevolucao: TBitBtn;
    sqlDetD: TSQLDataSet;
    dspDetD: TDataSetProvider;
    cdsDetD: TClientDataSet;
    dsDetD: TDataSource;
    DBGrid2: TDBGrid;
    sqlDetDCODOC: TIntegerField;
    sqlDetDCODDETALHE: TIntegerField;
    sqlDetDCODFIR: TIntegerField;
    sqlDetDNOMERET: TStringField;
    sqlDetDNDOCRET: TStringField;
    sqlDetDDTPREV: TDateField;
    sqlDetDDTRET: TDateField;
    sqlDetDOBSRET: TStringField;
    sqlDetDOBS: TMemoField;
    sqlDetDTIPO: TStringField;
    sqlDetDNUMCAI: TFloatField;
    sqlDetDNCAICLI: TFloatField;
    cdsDetDCODOC: TIntegerField;
    cdsDetDCODDETALHE: TIntegerField;
    cdsDetDCODFIR: TIntegerField;
    cdsDetDNOMERET: TStringField;
    cdsDetDNDOCRET: TStringField;
    cdsDetDDTPREV: TDateField;
    cdsDetDDTRET: TDateField;
    cdsDetDOBSRET: TStringField;
    cdsDetDOBS: TMemoField;
    cdsDetDTIPO: TStringField;
    cdsDetDNUMCAI: TFloatField;
    cdsDetDNCAICLI: TFloatField;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit33: TDBEdit;
    DBMemo3: TDBMemo;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit16: TJvDBDateEdit;
    DBEdit9: TJvDBDateEdit;
    DBEdit10: TJvDBDateEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    JvDBDateEdit3: TJvDBDateEdit;
    JvDBDateEdit4: TJvDBDateEdit;
    BitBtn1: TBitBtn;
    VCLReport1: TVCLReport;
    btncx: TBitBtn;
    ClientDataSet1: TClientDataSet;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    BitBtn2: TBitBtn;
    sqlDetRDTDEV: TDateField;
    sqlDetROBSDEV: TMemoField;
    cdsDetRDTDEV: TDateField;
    cdsDetROBSDEV: TMemoField;
    Label39: TLabel;
    Label40: TLabel;
    DBMemo4: TDBMemo;
    JvDBDateEdit5: TJvDBDateEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    sqlDetRNOMEDEV: TStringField;
    cdsDetRNOMEDEV: TStringField;
    Label41: TLabel;
    DBEdit22: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure jvNomeChange(Sender: TObject);
    procedure jvCodChange(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnRetiradaClick(Sender: TObject);
    procedure btnprocClick(Sender: TObject);
    procedure btnproc2Click(Sender: TObject);
    procedure btnproc1Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure btnDevolucaoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btncxClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCorreio: TfCorreio;

implementation

uses UDm, uProcurar_nf, UDMNF, uFiltroCorreio, uRetira, uUtils,
  uFiltroCadDoc, uFiltroSetor, uFiltroDep, uCx;

{$R *.dfm}



procedure TfCorreio.FormShow(Sender: TObject);
begin
//  inherited;
  if(cCliente.Active) then
    cCliente.Close;
    cCliente.Open;
  jvCod.Text := '';
  jvNome.Text := '';

end;

procedure TfCorreio.FormCreate(Sender: TObject);
begin
 // inherited;

end;

procedure TfCorreio.btnProcurarClick(Sender: TObject);
begin
  inherited;
  FiltroCorreio := TFiltroCorreio.Create(Application);
  try
    FiltroCorreio.ShowModal;
  finally
    FiltroCorreio.Free;
  end;
end;

procedure TfCorreio.btnGravarClick(Sender: TObject);
var strSql ,resu : string;
    TD: TTransactionDesc;
    descar : Tutils;
begin
    descar := TUtils.Create;
    resu := descar.RemoveChar(DBEdit15.Text);

    if DtSrc.DataSet.State in [dsInsert] then
    begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CODOC, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      fCorreio.cdsCorreioCODOC.AsInteger := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
      fCorreio.cdsCorreioCODFIR.AsInteger := StrToInt(jvCod.Text);
    end;
    if DtSrc.DataSet.State in [dsEdit] then
    begin

      strSql := 'UPDATE MOVDOC SET OBS = ';
      strSql := strSql +  QuotedStr(DBMemo1.Text) + ',';
      strSql := strSql + 'NUMCAI = ';
      strSql := strSql + QuotedStr(DBEdit3.Text) + ',';
      strSql := strSql + 'TAMANHO = ';
      strSql := strSql + QuotedStr(DBEdit19.Text) + ',';
      if(DBEdit16.Text = '  /  /    ') then
      begin
        strSql := strSql + 'DTINC = null ,';
      end
      else begin
        strSql := strSql + 'DTINC = ';
        strSql := strSql + QuotedStr(FormatDateTime('mm/dd/yy', StrToDate(DBEdit16.Text))) + ',';
      end;
      strSql := strSql + 'CODDEP = ';
      strSql := strSql + QuotedStr(DBEdit4.Text) + ',';
      strSql := strSql + 'CODSEC = ';
      strSql := strSql + QuotedStr(DBEdit5.Text) + ',';
      if(DBEdit9.Text = '  /  /    ') then
      begin
        strSql := strSql + 'DTINID = null ,';
      end
      else begin
        strSql := strSql + 'DTINID = ';
        strSql := strSql + QuotedStr(FormatDateTime('mm/dd/yy', StrToDate(DBEdit9.Text))) + ',';
      end;
      if(DBEdit10.Text = '  /  /    ') then
      begin
        strSql := strSql + 'DTFIND = null ,';
      end
      else begin
        strSql := strSql + 'DTFIND = ';
        strSql := strSql + QuotedStr(FormatDateTime('mm/dd/yy', StrToDate(DBEdit10.Text))) + ',';
      end;
      strSql := strSql + 'DOCINI = ';
      strSql := strSql + QuotedStr(DBEdit11.Text) + ',';
      strSql := strSql + 'DOCFIN = ';
      strSql := strSql + QuotedStr(DBEdit12.Text) + ',';
      strSql := strSql + 'COLUNA = ';
      strSql := strSql + QuotedStr(DBEdit17.Text) + ',';
      strSql := strSql + 'ESTANTE = ';
      strSql := strSql + QuotedStr(DBEdit14.Text) + ',';
      strSql := strSql + 'PRATEL = ';
      strSql := strSql + QuotedStr(DBEdit14.Text) + ',';
////////////
      if(DBEdit18.Text = '') then
      begin
        strSql := strSql + 'NCAICLI = null ,';
      end
      else begin
        strSql := strSql + 'NCAICLI = ';
        strSql := strSql + QuotedStr(DBEdit18.Text) + ',';
      end;

///////////
   //   strSql := strSql + 'NCAICLI = ';
   //   strSql := strSql + QuotedStr(DBEdit18.Text) + ',';

      strSql := strSql + 'DESCARTE = ';
      strSql := strSql + QuotedStr(resu) + ',';
      strSql := strSql + 'ATIVO = ';
      strSql := strSql + QuotedStr(DBEdit7.Text) + ',';
      /////
      strSql := strSql + 'CODDOC = ';
      strSql := strSql + QuotedStr(DBEdit8.Text) + ' ';
      strSql := strSql + ' where CODOC = ';
      strSql := strSql +  IntToStr(cdsCorreioCODOC.AsInteger);

      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      Try
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro ao Gravar Alteração.', mtError, [mbOk], 0);
      end;
    end;
  inherited;

end;

procedure TfCorreio.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit7.Text := 'S';
  jvCod.Enabled := True;
  jvNome.Enabled := True;
  btnproc.Enabled := True;
  btnproc1.Enabled := True;
  btnproc2.Enabled := True;
  btncx.Enabled := True;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  jvCod.SetFocus;
end;

procedure TfCorreio.btnCancelarClick(Sender: TObject);
begin
  inherited;
  jvCod.Text := '';
  jvNome.Text := '';
  jvCod.Enabled := False;
  jvNome.Enabled := False;
  btnproc.Enabled := False;
  btnproc1.Enabled := False;
  btnproc2.Enabled := False;
end;

procedure TfCorreio.jvNomeChange(Sender: TObject);
begin
  inherited;
  DBEdit2.Text := jvNome.Text;
  DBEdit1.Text := jvCod.Text;

end;

procedure TfCorreio.jvCodChange(Sender: TObject);
begin
  inherited;
  DBEdit2.Text := jvNome.Text;
  DBEdit1.Text := jvCod.Text;
end;

procedure TfCorreio.btnExcluirClick(Sender: TObject);
var TD: TTransactionDesc;
    strSql : string;
begin
 // inherited;
   strSql := 'UPDATE MOVDOC SET ATIVO = ' + QuotedStr('N') + ' WHERE CODOC = ' + IntToStr(fCorreio.cdsCorreioCODOC.AsInteger);

    Try
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       dm.sqlsisAdimin.Commit(TD);
       MessageDlg('Alterado para Inativo', mtInformation, [mbOK], 0);
       fCorreio.cdsCorreio.Refresh;
    except
       dm.sqlsisAdimin.Rollback(TD);
       MessageDlg('Erro ao mudar Status para Inativo .', mtError, [mbOk], 0);
    end;

end;

procedure TfCorreio.btnRetiradaClick(Sender: TObject);
begin
//  inherited;
  fRetira := TfRetira.Create(Application);
  try
  if(fRetira.cdsCorreio.Active) then
    fRetira.cdsCorreio.Close;
    fRetira.cdsCorreio.Params[0].AsInteger := cdsCorreioCODOC.AsInteger;
    fRetira.cdsCorreio.Open;
    fRetira.Label14.Caption := 'RETIRA';
    fRetira.Label1.Caption := 'RETIRADO POR :';
    fRetira.ShowModal;
  finally
    fRetira.Free;
  end;
end;

procedure TfCorreio.btnprocClick(Sender: TObject);
begin
  inherited;
  fFiltroCadDoc := TfFiltroCadDoc.Create(Application);
  try
    fFiltroCadDoc.btnvoltar.Visible := False;
    fFiltroCadDoc.ShowModal;
  finally
    fFiltroCadDoc.Free;
  end;
end;

procedure TfCorreio.btnproc2Click(Sender: TObject);
begin
  inherited;
  fFiltroSetor := TfFiltroSetor.Create(Application);
  try
    fFiltroSetor.ShowModal;
  finally
    fFiltroSetor.Free;
  end;
end;

procedure TfCorreio.btnproc1Click(Sender: TObject);
begin
  inherited;
  fFiltroDep := TfFiltroDep.Create(Application);
  try
    fFiltroDep.ShowModal;
  finally
    fFiltroDep.Free;
  end;
end;

procedure TfCorreio.TabSheet2Show(Sender: TObject);
begin
  inherited;
  MMJPanel2.Visible := False;
  Label36.Caption := 'CX :' + DBEdit3.Text;
  Label37.Caption :=  DBEdit1.Text;
  Label38.Caption :=  DBEdit2.Text;

end;

procedure TfCorreio.TabSheet1Show(Sender: TObject);
begin
  inherited;
    MMJPanel2.Visible := True;
end;

procedure TfCorreio.TabSheet3Show(Sender: TObject);
begin
  inherited;
  MMJPanel2.Visible := False;
end;

procedure TfCorreio.btnDevolucaoClick(Sender: TObject);
begin
//  inherited;
  fRetira := TfRetira.Create(Application);
  try
  if(fRetira.cdsCorreio.Active) then
    fRetira.cdsCorreio.Close;
    fRetira.cdsCorreio.Params[0].AsInteger := cdsCorreioCODOC.AsInteger;
    fRetira.cdsCorreio.Open;
    fRetira.Label14.Caption := 'DEVOLUÇÂO';
    fRetira.Label1.Caption := 'DEVOLVIDO POR :';
    fRetira.ShowModal;
  finally
    fRetira.Free;
  end;
end;

procedure TfCorreio.BitBtn1Click(Sender: TObject);
begin
  inherited;
  VCLReport1.FileName := str_relatorio + 'retira.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('pcod').Value := cdsDetRCODDETALHE.AsInteger;
  VCLReport1.Execute;
end;

procedure TfCorreio.btncxClick(Sender: TObject);
begin
  //inherited;
  fCx := TfCx.Create(Application);
  try
    fCx.ShowModal;
  finally
    fCx.Free;
  end;


end;

procedure TfCorreio.BitBtn2Click(Sender: TObject);
var strSql : string;
    TD: TTransactionDesc;
begin
  inherited;
  if dsDetR.DataSet.State in [dsEdit] then
    begin
      strSql := 'UPDATE MOVDOCDET SET NOMERET = ';
      strSql := strSql +  QuotedStr(DBEdit20.Text) + ',';
      strSql := strSql + 'NDOCRET = ';
      strSql := strSql + QuotedStr(DBEdit21.Text) + ',';

      if(JvDBDateEdit2.Text = '  /  /    ') then
      begin
        strSql := strSql + ' DTRET = null ,';
      end
      else begin
        strSql := strSql + ' DTRET = ';
        strSql := strSql + QuotedStr(FormatDateTime('mm/dd/yy', StrToDate(JvDBDateEdit2.Text))) + ',';
      end;


      if(JvDBDateEdit1.Text = '  /  /    ') then
      begin
        strSql := strSql + ' DTPREV = null ,';
       end
      else begin
        strSql := strSql + ' DTPREV = ';
        strSql := strSql + QuotedStr(FormatDateTime('mm/dd/yy', StrToDate(JvDBDateEdit1.Text))) + ',';
      end;

      strSql := strSql + 'OBSRET = ';
      strSql := strSql + QuotedStr(DBEdit24.Text) + ',';

      strSql := strSql + 'OBS = ';
      strSql := strSql +  QuotedStr(DBMemo2.Text) + ' ';


      strSql := strSql + ' where CODOC = ';
      strSql := strSql +  IntToStr(cdsDetRCODOC.AsInteger);

      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
        dm.sqlsisAdimin.Commit(TD);
        MessageDlg('Dados Alterados com Sucesso !', mtInformation, [mbOK], 0);
       except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro ao Gravar Alteração.', mtError,
           [mbOk], 0);
       end;
    end;
end;

procedure TfCorreio.BitBtn3Click(Sender: TObject);
var strSql : string;
    TD: TTransactionDesc;
begin
  inherited;
  if dsDetR.DataSet.State in [dsEdit] then
    begin
      strSql := 'UPDATE MOVDOCDET SET OBSDEV  = ';
      strSql := strSql +  QuotedStr(DBMemo4.Text) + ',';


      if(JvDBDateEdit5.Text = '  /  /    ') then
      begin
        strSql := strSql + ' DTDEV = null ,';
       end
      else begin
        strSql := strSql + ' DTDEV = ';
        strSql := strSql + QuotedStr(FormatDateTime('mm/dd/yy', StrToDate(JvDBDateEdit5.Text))) + ',';
      end;

      if(DBEdit22.Text = '') then
      begin
        strSql := strSql + ' NOMEDEV = null ,';
       end
      else begin
        strSql := strSql + ' NOMEDEV = ';
        strSql := strSql + QuotedStr(DBEdit22.Text) + ' ';
      end;


      strSql := strSql + ' where CODOC = ';
      strSql := strSql +  IntToStr(cdsDetRCODOC.AsInteger);

      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
        dm.sqlsisAdimin.Commit(TD);
        MessageDlg('Dados Alterados com Sucesso !', mtInformation, [mbOK], 0);
       except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro ao Gravar Alteração.', mtError,
           [mbOk], 0);
       end;
    end;

end;

procedure TfCorreio.BitBtn4Click(Sender: TObject);
begin
 // inherited;
  VCLReport1.FileName := str_relatorio + 'retiraD.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('pcod').Value := cdsDetRCODDETALHE.AsInteger;
  VCLReport1.Execute;
end;

end.
