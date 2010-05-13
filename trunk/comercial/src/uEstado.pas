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
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBText2: TDBText;
    sdsCFOP: TStringField;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    sdsICMS_SUBSTRIB: TFloatField;
    sdsICMS_SUBSTRIB_IC: TFloatField;
    sdsICMS_SUBSTRIB_IND: TFloatField;
    cds_estadoICMS_SUBSTRIB: TFloatField;
    cds_estadoICMS_SUBSTRIB_IC: TFloatField;
    cds_estadoICMS_SUBSTRIB_IND: TFloatField;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    sdsCST: TStringField;
    cds_estadoCST: TStringField;
    sdsCODESTADO: TIntegerField;
    cds_estadoCODESTADO: TIntegerField;
    ComboBox1: TComboBox;
    Label5: TLabel;
    sdsPESSOA: TStringField;
    cds_estadoPESSOA: TStringField;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label9: TLabel;
    Label14: TLabel;
    sdsPIS: TFloatField;
    sdsCOFINS: TFloatField;
    cds_estadoPIS: TFloatField;
    cds_estadoCOFINS: TFloatField;
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure cds_estadoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_estadoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
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
  Combobox1.ItemIndex := 1;
  DBEdit1.SetFocus;
end;

procedure TfEstado.FormShow(Sender: TObject);
begin
  inherited;
  //sCtrlResize.CtrlResize(TForm(fEstado));
  if not cds_estado.Active then
    cds_estado.Open;
  ComboBox1.Text := cds_estadoPESSOA.AsString;
end;

procedure TfEstado.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfEstado.btnProcurarClick(Sender: TObject);
begin
  //inherited;
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
var str: string;
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
  cds_estadoPESSOA.AsString := 'J';
  if (ComboBox1.ItemIndex = 0) then
    cds_estadoPESSOA.AsString := 'F';
  if (cds_estado.State in [dsEdit]) then
  begin
    DecimalSeparator := '.';
    str := 'Update ESTADO_ICMS set CFOP = ';
    str := str + QuotedStr(cds_estadoCFOP.AsString);
    str := str + ', UF = ' + QuotedStr(cds_estadoUF.AsString);
    str := str + ', ICMS = ' + FloatToStr(cds_estadoICMS.AsFloat);
    str := str + ', REDUCAO = ' + FloatToStr(cds_estadoREDUCAO.AsFloat);
    str := str + ', IPI = ' + FloatToStr(cds_estadoIPI.AsFloat);
    str := str + ', ICMS_SUBSTRIB = ' + FloatToStr(cds_estadoICMS_SUBSTRIB.AsFloat);
    str := str + ', ICMS_SUBSTRIB_IC = ' + FloatToStr(cds_estadoICMS_SUBSTRIB_IC.AsFloat);
    str := str + ', ICMS_SUBSTRIB_IND = ' + FloatToStr(cds_estadoICMS_SUBSTRIB_IND.AsFloat);
    str := str + ', CST = ' + QuotedStr(cds_estadoCST.AsString);
    str := str + ', PESSOA = ' + QuotedStr(ComboBox1.Text);
    str := str + ', PIS = ' + FloatToStr(cds_estadoPIS.AsFloat);
    str := str + ', COFINS = ' + FloatToStr(cds_estadoCOFINS.AsFloat);
    str := str + ' WHERE CODESTADO = ' + IntToStr(cds_estadoCODESTADO.AsInteger);
    dm.sqlsisAdimin.ExecuteDirect(str);
    DecimalSeparator := ',';
  end
  else
    inherited;
  cds_estado.Close;
  cds_estado.Open;
  if (cds_estadoPESSOA.AsString = 'F') then
    ComboBox1.Text := 'Física'
  else
    ComboBox1.Text := 'Jurídica';

end;

procedure TfEstado.btnExcluirClick(Sender: TObject);
var str: string;
begin
  inherited;
  str := 'DELETE FROM ESTADO_ICMS ';
  str := str + ' WHERE CODESTADO = ' + IntToStr(cds_estadoCODESTADO.AsInteger);
  dm.sqlsisAdimin.ExecuteDirect(str);
end;

procedure TfEstado.ComboBox1Change(Sender: TObject);
begin
  if (cds_estado.State in [dsBrowse]) then
    cds_estado.Edit;
  inherited;
end;

procedure TfEstado.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if (cds_estadoPESSOA.AsString = 'F') then
    ComboBox1.Text := 'Física'
  else
    ComboBox1.Text := 'Jurídica';

end;

end.
