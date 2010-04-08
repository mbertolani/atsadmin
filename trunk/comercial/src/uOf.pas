unit uOf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, JvToolEdit, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask,
  JvExMask, JvBaseEdits, FMTBcd, DBClient, Provider, SqlExpr, JvExControls,
  JvLabel;

type
  TfOf = class(TfPai_new)
    OfId: TEdit;
    OfProd: TEdit;
    OfDesc: TEdit;
    OfQtde: TJvCalcEdit;
    Label1: TLabel;
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    OfData: TJvDateEdit;
    Label3: TLabel;
    btnProdutoProcura: TBitBtn;
    sqlOf: TSQLDataSet;
    dspOf: TDataSetProvider;
    cdsOf: TClientDataSet;
    cdsOfOFID: TIntegerField;
    cdsOfOFDATA: TDateField;
    cdsOfOFSTATUS: TStringField;
    cdsOfOFQTDESOLIC: TFloatField;
    cdsOfOFQTDEPRODUZ: TFloatField;
    cdsOfOFQTDEPERDA: TFloatField;
    cdsOfOFMOTIVO: TStringField;
    cdsOfCODPRODUTO: TIntegerField;
    JvLabel1: TJvLabel;
    OFID_Ind: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    sqlOfOFID: TIntegerField;
    sqlOfOFDATA: TDateField;
    sqlOfOFSTATUS: TStringField;
    sqlOfOFQTDESOLIC: TFloatField;
    sqlOfOFQTDEPRODUZ: TFloatField;
    sqlOfOFQTDEPERDA: TFloatField;
    sqlOfOFMOTIVO: TStringField;
    sqlOfCODPRODUTO: TIntegerField;
    sqlOfOFID_IND: TSmallintField;
    cdsOfOFID_IND: TSmallintField;
    sqlInd: TSQLQuery;
    sqlId: TSQLQuery;
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure OfProdExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    codProd: Integer;
    OfTipo : String; 
    { Public declarations }
  end;

var
  fOf: TfOf;

implementation

uses ufprocura_prod, UDm;

{$R *.dfm}

procedure TfOf.btnProdutoProcuraClick(Sender: TObject);
begin
  inherited;
  fProcura_prod.cbTipo.ItemIndex := 4;
  fProcura_prod.btnIncluir.Visible := true;
  if (procprod <> 'PROC_PROD_COMPLETO') then
  begin
    fProcura_prod.Panel1.Visible := false;
    fProcura_prod.Panel2.Visible := true;
    //fProcura_prod.CheckBox1.Checked := True;
    fProcura_prod.BitBtn1.Click;
  end
  else begin
    fProcura_prod.Panel2.Visible := false;
    fProcura_prod.Panel1.Visible := true;
    //fProcura_prod.CheckBox1.Checked := False;
    if (fProcura_prod.cds_proc.Active) then
      fProcura_prod.cds_proc.Close;
  end;
  varonde := 'EntraSai';
  var_F := 'estoque';
  fProcura_prod.ShowModal;
end;

procedure TfOf.btnGravarClick(Sender: TObject);
begin
  if (codProd = 0) then
  begin
    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].AsInteger := 0;
    dm.scds_produto_proc.Params[1].AsString := OfProd.Text;
    dm.scds_produto_proc.Open;
    if dm.scds_produto_proc.IsEmpty then begin
      MessageDlg('Código do produto inválido.', mtWarning,
        [mbOk], 0);
      exit;
    end;
  end;
  cdsOfOFID.AsInteger       := StrToInt(OfId.Text);
  cdsOfOFDATA.AsDateTime    := OfData.Date;
  cdsOfOFSTATUS.AsString    := 'A'; // OF Aberta
  if (OFTipo = 'OP') then
  begin
    cdsOfOFID_IND.AsInteger   := 0;
    cdsOfOFQTDESOLIC.AsFloat  := OfQtde.Value;
    cdsOfOFQTDEPRODUZ.AsFloat := 0;
    cdsOfOFQTDEPERDA.AsFloat  := 0;
  end;
  if (OFTipo = 'APONTAMENTO') then
  begin
    cdsOfOFID_IND.AsInteger   := StrToInt(OFID_Ind.Text);
    cdsOfOFQTDESOLIC.AsFloat  := 0;
    cdsOfOFQTDEPRODUZ.AsFloat := OfQtde.Value;
    cdsOfOFQTDEPERDA.AsFloat  := 0;
  end;
  if (OFTipo = 'PERDA') then
  begin
    cdsOfOFQTDESOLIC.AsFloat  := 0;
    cdsOfOFQTDEPRODUZ.AsFloat := 0;
    cdsOfOFQTDEPERDA.AsFloat  := OfQtde.Value;
  end;
  cdsOfCODPRODUTO.AsInteger := codProd;
  inherited;
end;

procedure TfOf.OfProdExit(Sender: TObject);
begin
  //inherited;
  if dm.scds_produto_proc.Active then
    dm.scds_produto_proc.Close;
  dm.scds_produto_proc.Params[0].AsInteger := 0;
  dm.scds_produto_proc.Params[1].AsString := OfProd.Text;
  dm.scds_produto_proc.Open;
  if dm.scds_produto_proc.IsEmpty then begin
    MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
    btnProdutoProcura.Click;
    exit;
  end;
  OfDesc.Text := dm.scds_produto_procPRODUTO.AsString;
  codProd := dm.scds_produto_procCODPRODUTO.asInteger;
end;

procedure TfOf.FormShow(Sender: TObject);
begin
  inherited;
  codProd := 0;
end;

procedure TfOf.btnIncluirClick(Sender: TObject);
begin
  if (OFTipo = 'OP') then
  begin
    OfProd.Text := '';
    OFDesc.Text := '';
  end;
  OfQtde.Value := 0;
  inherited;
  if (OFTipo = 'OP') then
  begin
    if (sqlId.Active) then
      sqlId.Close;
    sqlId.Open;
    OFID.Text := IntToStr(sqlId.Fields[0].AsInteger + 1);
    sqlInd.Close;
    OFID_Ind.Text := '0';
    cdsOfOFID_IND.AsInteger := 0; // Toda OF (OP) terão IND = 0
  end;
  if (OFTipo = 'APONTAMENTO') then
  begin
    // Busca o último IND + 1
    if (sqlInd.Active) then
      sqlInd.Close;
    sqlInd.Params.ParamByName('OFID').AsInteger := cdsOfOFID.AsInteger;
    sqlInd.Open;
    OFID_Ind.Text := IntToStr(sqlInd.Fields[0].AsInteger + 1);
    sqlInd.Close;
  end;
end;

procedure TfOf.JvDBGrid1CellClick(Column: TColumn);
begin
  inherited;
  OFData.Date  := cdsOfOFDATA.AsDateTime;
  if (OFTipo = 'OP') then
    OFQtde.Value := cdsOfOFQTDESOLIC.Value;
  if (OFTipo = 'APONTAMENTO') then
    OFQtde.Value := cdsOfOFQTDEPRODUZ.Value;
  if (OFTipo = 'PERDA') then
    OFQtde.Value := cdsOfOFQTDEPERDA.Value;
end;

end.
