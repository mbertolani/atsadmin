unit uDIAdicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, Mask, DBCtrls, SqlExpr, Provider, DBClient, Grids, DBGrids, DBXpress;

type
  TfDIAdicao = class(TfPai)
    cdsAdic: TClientDataSet;
    dspAdic: TDataSetProvider;
    sdsAdic: TSQLDataSet;
    sdsAdicADIC_CODDET: TIntegerField;
    sdsAdicADIC_CODDI: TIntegerField;
    sdsAdicADIC_NADICAO: TIntegerField;
    sdsAdicADIC_NSEQUEN: TIntegerField;
    sdsAdicADIC_CODFAB: TStringField;
    sdsAdicADIC_VDESC: TIntegerField;
    cdsAdicADIC_CODDET: TIntegerField;
    cdsAdicADIC_CODDI: TIntegerField;
    cdsAdicADIC_NADICAO: TIntegerField;
    cdsAdicADIC_NSEQUEN: TIntegerField;
    cdsAdicADIC_CODFAB: TStringField;
    cdsAdicADIC_VDESC: TIntegerField;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    cdsMov_Det: TClientDataSet;
    dspMov_Det: TDataSetProvider;
    dtsrcMov_Det: TDataSource;
    sdsMov_Det: TSQLDataSet;
    DBGrid1: TDBGrid;
    sdsMov_DetNOTAFISCAL: TIntegerField;
    sdsMov_DetCODPRO: TStringField;
    sdsMov_DetDESCPRODUTO: TStringField;
    sdsMov_DetVALTOTAL: TFloatField;
    sdsMov_DetCODFORNECEDOR: TIntegerField;
    sdsMov_DetRAZAOSOCIAL: TStringField;
    cdsMov_DetNOTAFISCAL: TIntegerField;
    cdsMov_DetCODPRO: TStringField;
    cdsMov_DetDESCPRODUTO: TStringField;
    cdsMov_DetVALTOTAL: TFloatField;
    cdsMov_DetCODFORNECEDOR: TIntegerField;
    cdsMov_DetRAZAOSOCIAL: TStringField;
    Label8: TLabel;
    sdsMov_DetCODDETALHE: TIntegerField;
    cdsMov_DetCODDETALHE: TIntegerField;
    sdsAdicDESCPRODUTO: TStringField;
    cdsAdicDESCPRODUTO: TStringField;
    procedure btnIncluirClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDIAdicao: TfDIAdicao;

implementation

uses UDm, uDadosImportacao;

{$R *.dfm}

procedure TfDIAdicao.btnIncluirClick(Sender: TObject);
begin
  inherited;
  cdsAdicADIC_CODDI.AsInteger := fDadosImportacao.cdsDIDI_CODDI.AsInteger;
  cdsAdicADIC_CODDET.AsInteger := cdsMov_DetCODDETALHE.AsInteger;
end;

procedure TfDIAdicao.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if(cdsAdic.Active) then
    cdsAdicADIC_CODDET.AsInteger := cdsMov_DetCODDETALHE.AsInteger;
end;

procedure TfDIAdicao.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfDIAdicao.FormShow(Sender: TObject);
begin
//  inherited;
  cdsMov_Det.Open;
end;

procedure TfDIAdicao.btnGravarClick(Sender: TObject);
begin
  inherited;
  cdsMov_Det.Open;
end;

procedure TfDIAdicao.btnExcluirClick(Sender: TObject);
var cm : string;
var TD: TTransactionDesc;
begin
//  inherited;
  if  MessageDlg('Confirma a exclusão da Adição ''' + IntToStr(cdsAdicADIC_NADICAO.AsInteger) + ''' ?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
//  dtsrcDI.DataSet.Delete;
// (dtsrcDI.DataSet as TClientDataSet).ApplyUpdates(0);
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  cm := 'delete From DIADICAO where ADIC_CODDET = ' + IntToStr(cdsAdicADIC_CODDET.AsInteger);
  dm.sqlsisAdimin.ExecuteDirect(cm);
  dm.sqlsisAdimin.Commit(TD);
  cdsMov_Det.Close;
  cdsMov_Det.Open;
end;

end.
