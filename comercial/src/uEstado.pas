unit uEstado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, Grids, DBGrids, Mask, DBCtrls, DBClient, Provider, SqlExpr,
  EDBFind;

type
  TfEstado = class(TfPai)
    sds: TSQLDataSet;
    sdsUF: TStringField;
    sdsICMS: TFloatField;
    sdsREDUCAO: TFloatField;
    sdsCFNOME: TStringField;
    sdsIPI: TFloatField;
    dsp: TDataSetProvider;
    cds_estado: TClientDataSet;
    cds_estadoCFOP: TStringField;
    cds_estadoUF: TStringField;
    cds_estadoICMS: TFloatField;
    cds_estadoREDUCAO: TFloatField;
    cds_estadoCFNOME: TStringField;
    cds_estadoIPI: TFloatField;
    DBText2: TDBText;
    sdsCFOP: TStringField;
    sdsICMS_SUBSTRIB: TFloatField;
    sdsICMS_SUBSTRIB_IC: TFloatField;
    sdsICMS_SUBSTRIB_IND: TFloatField;
    cds_estadoICMS_SUBSTRIB: TFloatField;
    cds_estadoICMS_SUBSTRIB_IC: TFloatField;
    cds_estadoICMS_SUBSTRIB_IND: TFloatField;
    sdsCST: TStringField;
    cds_estadoCST: TStringField;
    sdsCODESTADO: TIntegerField;
    cds_estadoCODESTADO: TIntegerField;
    sdsPIS: TFloatField;
    sdsCOFINS: TFloatField;
    cds_estadoPIS: TFloatField;
    cds_estadoCOFINS: TFloatField;
    sdsCSTIPI: TStringField;
    sdsCSTPIS: TStringField;
    sdsCSTCOFINS: TStringField;
    sdsDADOSADC1: TStringField;
    sdsDADOSADC2: TStringField;
    sdsDADOSADC3: TStringField;
    sdsDADOSADC4: TStringField;
    cds_estadoCSTIPI: TStringField;
    cds_estadoCSTPIS: TStringField;
    cds_estadoCSTCOFINS: TStringField;
    cds_estadoDADOSADC1: TStringField;
    cds_estadoDADOSADC2: TStringField;
    cds_estadoDADOSADC3: TStringField;
    cds_estadoDADOSADC4: TStringField;
    sdsNAOENVFATURA: TStringField;
    cds_estadoNAOENVFATURA: TStringField;
    sdsDADOSADC5: TStringField;
    sdsDADOSADC6: TStringField;
    cds_estadoDADOSADC5: TStringField;
    cds_estadoDADOSADC6: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit5: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    CheckBox1: TCheckBox;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    sdsCSOSN: TStringField;
    cds_estadoCSOSN: TStringField;
    DBEdit21: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    sdsTFiscal: TSQLDataSet;
    sdsTFiscalCODFISCAL: TStringField;
    sdsTFiscalDESCRICAO: TStringField;
    dspTFiscal: TDataSetProvider;
    cdsTFiscal: TClientDataSet;
    cdsTFiscalCODFISCAL: TStringField;
    cdsTFiscalDESCRICAO: TStringField;
    DtSrcTFiscal: TDataSource;
    sdsCODFISCAL: TStringField;
    cds_estadoCODFISCAL: TStringField;
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure cds_estadoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_estadoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    sqlCfop: String;
    { Public declarations }
  end;

var
  fEstado: TfEstado;

implementation

uses uComercial, UDm, uProcurar, sCtrlResize, uCfop;

{$R *.dfm}

procedure TfEstado.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfEstado.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TfEstado.FormShow(Sender: TObject);
begin
  inherited;
  if (cds_estado.Active) then
    cds_estado.Close;
  cds_estado.CommandText := sqlCfop;
  cds_estado.Open;
  if (not cdsTFiscal.Active) then
      cdsTFiscal.Open;
end;

procedure TfEstado.btnProcurarClick(Sender: TObject);
begin
  fCfop := TfCfop.Create(Application);
  try
    fCfop.ShowModal;
  finally
    fCfop.Free;
  end;
end;

procedure TfEstado.cds_estadoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TfEstado.cds_estadoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);

end;

procedure TfEstado.btnGravarClick(Sender: TObject);
begin
  if (cds_estado.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENESTADO_ICMS, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_estadoCODESTADO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;
end;

procedure TfEstado.btnExcluirClick(Sender: TObject);
var str: string;
begin
  inherited;
  str := 'DELETE FROM ESTADO_ICMS ';
  str := str + ' WHERE CODESTADO = ' + IntToStr(cds_estadoCODESTADO.AsInteger);
  dm.sqlsisAdimin.ExecuteDirect(str);
end;

procedure TfEstado.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if (cds_estadoNAOENVFATURA.asString = 'S') then
    CheckBox1.Checked := True
  else
    CheckBox1.Checked := False;

end;

procedure TfEstado.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  cds_estado.IndexFieldNames := Column.FieldName;
end;

procedure TfEstado.CheckBox1Click(Sender: TObject);
begin
  inherited;
  if (cds_estado.State in [dsBrowse])then
    cds_estado.Edit;
  if (CheckBox1.Checked) then
    cds_estadoNAOENVFATURA.asString := 'S'
  else
    cds_estadoNAOENVFATURA.asString := '';
end;

procedure TfEstado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (cdsTFiscal.Active) then
      cdsTFiscal.Close;
end;



procedure TfEstado.FormCreate(Sender: TObject);
begin
//  inherited;
  sqlCfop := 'select esta.CODESTADO, esta.CFOP ' +
      ' ,esta.UF, esta.ICMS ,esta.REDUCAO, cfo.CFNOME ' +
      ' ,esta.IPI, esta.CSTIPI, esta.ICMS_SUBSTRIB, esta.ICMS_SUBSTRIB_IC ' +
      ' ,esta.ICMS_SUBSTRIB_IND, esta.CST , esta.PIS , esta.COFINS' +
      ' ,esta.CSTPIS , esta.CSTCOFINS, esta.DADOSADC1, esta.DADOSADC2' +
      ' ,esta.DADOSADC3, esta.DADOSADC4, esta.DADOSADC5, esta.DADOSADC6' +
      ' ,esta.NAOENVFATURA, esta.CSOSN, esta.CODFISCAL' +
      ' FROM ESTADO_ICMS esta ' +
      ' left outer join CFOP cfo on cfo.CFCOD = esta.CFOP ' +
      ' order by esta.CFOP';
end;

end.
