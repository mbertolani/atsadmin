unit uClassificacaoFiscalProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, FMTBcd, Provider, DBClient, DB, SqlExpr, Menus,
  XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel, Grids, DBGrids, Mask,
  DBCtrls;

type
  TfClassificacaoFIscalProduto = class(TfPai_new)
    sdsClassFisc: TSQLDataSet;
    cdsClassFisc: TClientDataSet;
    dspClassFisc: TDataSetProvider;
    cdsClassFiscCOD_PROD: TIntegerField;
    cdsClassFiscCFOP: TStringField;
    cdsClassFiscUF: TStringField;
    cdsClassFiscICMS_SUBST: TFloatField;
    cdsClassFiscICMS_SUBST_IC: TFloatField;
    cdsClassFiscICMS_SUBST_IND: TFloatField;
    cdsClassFiscICMS: TFloatField;
    cdsClassFiscICMS_BASE: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    sdsClassFiscCOD_PROD: TIntegerField;
    sdsClassFiscCFOP: TStringField;
    sdsClassFiscUF: TStringField;
    sdsClassFiscICMS_SUBST: TFloatField;
    sdsClassFiscICMS_SUBST_IC: TFloatField;
    sdsClassFiscICMS_SUBST_IND: TFloatField;
    sdsClassFiscICMS: TFloatField;
    sdsClassFiscICMS_BASE: TFloatField;
    sdsClassFiscCODPRO: TStringField;
    cdsClassFiscCODPRO: TStringField;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    sdsClassFiscCST: TStringField;
    cdsClassFiscCST: TStringField;
    sdsClassFiscIPI: TFloatField;
    cdsClassFiscIPI: TFloatField;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    sdsClassFiscCSOSN: TStringField;
    cdsClassFiscCSOSN: TStringField;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    sdsClassFiscCSTIPI: TStringField;
    sdsClassFiscCSTPIS: TStringField;
    sdsClassFiscCSTCOFINS: TStringField;
    sdsClassFiscPIS: TFloatField;
    sdsClassFiscCOFINS: TFloatField;
    cdsClassFiscCSTIPI: TStringField;
    cdsClassFiscCSTPIS: TStringField;
    cdsClassFiscCSTCOFINS: TStringField;
    cdsClassFiscPIS: TFloatField;
    cdsClassFiscCOFINS: TFloatField;
    BitBtn1: TBitBtn;
    gbProduto: TGroupBox;
    edProdCopiar: TEdit;
    btnExecutaCopia: TBitBtn;
    sdsProdCopia: TSQLDataSet;
    dspProdCopia: TDataSetProvider;
    cdsProdCopia: TClientDataSet;
    cdsProdCopiaCOD_PROD: TIntegerField;
    cdsProdCopiaCFOP: TStringField;
    cdsProdCopiaUF: TStringField;
    cdsProdCopiaICMS_SUBST: TFloatField;
    cdsProdCopiaICMS_SUBST_IC: TFloatField;
    cdsProdCopiaICMS_SUBST_IND: TFloatField;
    cdsProdCopiaICMS: TFloatField;
    cdsProdCopiaICMS_BASE: TFloatField;
    cdsProdCopiaCST: TStringField;
    cdsProdCopiaIPI: TFloatField;
    cdsProdCopiaCSOSN: TStringField;
    cdsProdCopiaCSTIPI: TStringField;
    cdsProdCopiaCSTPIS: TStringField;
    cdsProdCopiaCSTCOFINS: TStringField;
    cdsProdCopiaPIS: TFloatField;
    cdsProdCopiaCOFINS: TFloatField;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnExecutaCopiaClick(Sender: TObject);
  private
    { Private declarations }
  public
  cfcodprod :integer;
  cfcodproduto, cfop, uf :String;
    { Public declarations }
  end;

var
  fClassificacaoFIscalProduto: TfClassificacaoFIscalProduto;

implementation

uses UDm, sCtrlResize;

{$R *.dfm}

procedure TfClassificacaoFIscalProduto.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DecimalSeparator := ',';
  cdsClassFiscCOD_PROD.AsInteger := cfcodprod;
  cdsClassFiscCODPRO.AsString := cfcodproduto;
  DBEdit2.SetFocus;
end;

procedure TfClassificacaoFIscalProduto.FormShow(Sender: TObject);
begin
  //sCtrlResize.CtrlResize(TForm(fClassificacaoFIscalProduto));
  if(cdsClassFisc.Active) then
    cdsClassFisc.Close;
  cdsClassFisc.Params.ParamByName('pcodpro').AsInteger := cfcodprod;
  cdsClassFisc.open;
  uf   := cdsClassFiscUF.AsString;
  cfop := cdsClassFiscCFOP.AsString;
  DecimalSeparator := ',';
end;

procedure TfClassificacaoFIscalProduto.btnGravarClick(Sender: TObject);
var str:string;
begin
  DecimalSeparator := '.';
  if (cdsClassFisc.State in [dsEdit]) then
  Begin
  str := 'Update ClassificacaoFiscalProduto set CFOP = ';
  str := str + QuotedStr(cdsClassFiscCFOP.AsString);
  str := str + ', UF = ' + QuotedStr(cdsClassFiscUF.AsString);
  str := str + ', ICMS_SUBST = ' + FloatToStr(cdsClassFiscICMS_SUBST.AsFloat);
  str := str + ', ICMS_SUBST_IC = ' + FloatToStr(cdsClassFiscICMS_SUBST_IC.AsFloat);
  str := str + ', ICMS_SUBST_IND = ' + FloatToStr(cdsClassFiscICMS_SUBST_IND.AsFloat);
  str := str + ', ICMS = ' + FloatToStr(cdsClassFiscICMS.AsFloat);
  str := str + ', ICMS_BASE = ' + FloatToStr(cdsClassFiscICMS_BASE.AsFloat);
  str := str + ', CST = ' + QuotedStr(cdsClassFiscCST.AsString);
  str := str + ', CSOSN = ' + QuotedStr(cdsClassFiscCSOSN.AsString);
  str := str + ', IPI = ' + FloatToStr(cdsClassFiscIPI.AsFloat);
  str := str + ', CSTIPI = ' + QuotedStr(cdsClassFiscCSTIPI.AsString);
  str := str + ', CSTPIS = ' + QuotedStr(cdsClassFiscCSTPIS.AsString);
  str := str + ', CSTCOFINS = ' + QuotedStr(cdsClassFiscCSTCOFINS.AsString);
  str := str + ', PIS = ' + FloatToStr(cdsClassFiscPIS.AsFloat);
  str := str + ', COFINS = ' + FloatToStr(cdsClassFiscCOFINS.AsFloat);

  str := str + ' WHERE COD_PROD = ' + IntToStr(cdsClassFiscCOD_PROD.AsInteger);
  str := str + ' AND CFOP = ' + QuotedStr(CFOP);
  str := str + ' AND UF = ' + QuotedStr(UF);
  dm.sqlsisAdimin.ExecuteDirect(str);
  DecimalSeparator := ',';
  inherited;
  end
  else
    inherited;
end;

procedure TfClassificacaoFIscalProduto.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  uf   := cdsClassFiscUF.AsString;
  cfop := cdsClassFiscCFOP.AsString;
end;

procedure TfClassificacaoFIscalProduto.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  uf   := cdsClassFiscUF.AsString;
  cfop := cdsClassFiscCFOP.AsString;
end;

procedure TfClassificacaoFIscalProduto.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  uf   := cdsClassFiscUF.AsString;
  cfop := cdsClassFiscCFOP.AsString;
end;

procedure TfClassificacaoFIscalProduto.DBGrid1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  uf   := cdsClassFiscUF.AsString;
  cfop := cdsClassFiscCFOP.AsString;
end;

procedure TfClassificacaoFIscalProduto.btnExcluirClick(Sender: TObject);
var str: string;
begin
  inherited;
  str := 'DELETE FROM ClassificacaoFiscalProduto ';
  str := str + ' WHERE COD_PROD = ' + IntToStr(cdsClassFiscCOD_PROD.AsInteger);
  str := str + ' AND CFOP = ' + QuotedStr(CFOP);
  str := str + ' AND UF = ' + QuotedStr(UF);
  dm.sqlsisAdimin.ExecuteDirect(str);
end;

procedure TfClassificacaoFIscalProduto.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if (gbProduto.Visible = True) then
    gbProduto.Visible := False
  else
    gbProduto.Visible := True;
end;

procedure TfClassificacaoFIscalProduto.btnExecutaCopiaClick(
  Sender: TObject);
begin
  inherited;
  if (edProdCopiar.Text <> '') then
  begin
    if (cdsProdCopia.Active) then
      cdsProdCopia.Close;
    cdsProdCopia.Params[0].AsString := edProdCopiar.Text;
    cdsProdCopia.Open;
    if (cdsProdCopia.IsEmpty) then
    begin
      MessageDlg('Produto sem Tributação.', mtWarning, [mbOK], 0);
      exit;
    end;
    while not cdsProdCopia.Eof do
    begin
      if (cdsClassFisc.Active = False) then
        cdsClassFisc.Open;
      cdsClassFisc.Append;
      cdsClassFiscCOD_PROD.AsInteger     := cfcodprod;
      cdsClassFiscCFOP.AsString          := cdsProdCopiaCFOP.AsString;
      cdsClassFiscUF.AsString            := cdsProdCopiaUF.AsString;
      cdsClassFiscCST.AsString           := cdsProdCopiaCST.AsString;
      cdsClassFiscCSOSN.AsString         := cdsProdCopiaCSOSN.AsString;
      cdsClassFiscCSTIPI.AsString        := cdsProdCopiaCSTIPI.AsString;
      cdsClassFiscCSTPIS.AsString        := cdsProdCopiaCSTPIS.AsString;
      cdsClassFiscCSTCOFINS.AsString     := cdsProdCopiaCSTCOFINS.AsString;
      cdsClassFiscICMS_SUBST.AsFloat     := cdsProdCopiaICMS_SUBST.AsFloat;
      cdsClassFiscICMS_SUBST_IC.AsFloat  := cdsProdCopiaICMS_SUBST_IC.AsFloat;
      cdsClassFiscICMS_SUBST_IND.AsFloat := cdsProdCopiaICMS_SUBST_IND.AsFloat;
      cdsClassFiscICMS.AsFloat           := cdsProdCopiaICMS.AsFloat;
      cdsClassFiscICMS_BASE.AsFloat      := cdsProdCopiaICMS_BASE.AsFloat;
      cdsClassFiscICMS_SUBST.AsFloat     := cdsProdCopiaICMS_SUBST.AsFloat;
      cdsClassFiscIPI.AsFloat            := cdsProdCopiaIPI.AsFloat;
      cdsClassFiscPIS.AsFloat            := cdsProdCopiaPIS.AsFloat;
      cdsClassFiscCOFINS.AsFloat         := cdsProdCopiaCOFINS.AsFloat;
      cdsClassFisc.ApplyUpdates(0);
      cdsProdCopia.Next;
    end;
  end;
end;

end.
