unit uDadosImportacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Provider, DBClient, StdCtrls, Buttons,
  Grids, DBGrids, DBXpress, ExtCtrls, MMJPanel;

type
  TfDadosImportacao = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cdsDI: TClientDataSet;
    dspDI: TDataSetProvider;
    dtsrcDI: TDataSource;
    dtsrcAdic: TDataSource;
    dspAdic: TDataSetProvider;
    cdsAdic: TClientDataSet;
    sdsAdic: TSQLDataSet;
    sdsDI: TSQLDataSet;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    sdsDIDI_CODDI: TIntegerField;
    sdsDIDI_NUMDI: TStringField;
    sdsDIDI_DATA: TDateField;
    sdsDIDI_LOCALDESEMB: TStringField;
    sdsDIDI_UFDESEMB: TStringField;
    sdsDIDI_DATADESEMB: TDateField;
    sdsDIDI_CODEXPORTADOR: TStringField;
    cdsDIDI_CODDI: TIntegerField;
    cdsDIDI_NUMDI: TStringField;
    cdsDIDI_DATA: TDateField;
    cdsDIDI_LOCALDESEMB: TStringField;
    cdsDIDI_UFDESEMB: TStringField;
    cdsDIDI_DATADESEMB: TDateField;
    cdsDIDI_CODEXPORTADOR: TStringField;
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
    sdsAdicDESCPRODUTO: TStringField;
    sdsAdicNOTAFISCAL: TIntegerField;
    cdsAdicDESCPRODUTO: TStringField;
    cdsAdicNOTAFISCAL: TIntegerField;
    MMJPanel1: TMMJPanel;
    btnSair: TBitBtn;
    MMJPanel2: TMMJPanel;
    Label3: TLabel;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDadosImportacao: TfDadosImportacao;

implementation

uses UDm, uDeclaracaoImportacao, uDIAdicao;

{$R *.dfm}

procedure TfDadosImportacao.BitBtn1Click(Sender: TObject);
begin
  fDeclaracaoImportacao := TfDeclaracaoImportacao.Create(Application);
  try
    fDeclaracaoImportacao.ShowModal;
  finally
    fDeclaracaoImportacao.Free;
    if(cdsDI.Active) then
     cdsDI.Close;
    cdsDI.Open;
  end;
end;

procedure TfDadosImportacao.DBGrid1DblClick(Sender: TObject);
begin
  fDeclaracaoImportacao := TfDeclaracaoImportacao.Create(Application);
  try
    if (fDeclaracaoImportacao.cdsDI.Active) then
      fDeclaracaoImportacao.cdsDI.Close;
    fDeclaracaoImportacao.cdsDI.Params[0].AsInteger := cdsDIDI_CODDI.AsInteger;
    fDeclaracaoImportacao.cdsDI.Open;
    fDeclaracaoImportacao.ShowModal;
  finally
    fDeclaracaoImportacao.Free;
    if(cdsDI.Active) then
     cdsDI.Close;
    cdsDI.Open;
  end;
end;

procedure TfDadosImportacao.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfDadosImportacao.BitBtn2Click(Sender: TObject);
var cm : string;
var TD: TTransactionDesc;
begin
  if  MessageDlg('Confirma a exclusão da DI ''' + cdsDIDI_NUMDI.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
//  dtsrcDI.DataSet.Delete;
// (dtsrcDI.DataSet as TClientDataSet).ApplyUpdates(0);
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  cm := 'delete From DECLARACAOIMPORTACAO where DI_CODDI = ' + IntToStr(cdsDIDI_CODDI.AsInteger);
  dm.sqlsisAdimin.ExecuteDirect(cm);
  dm.sqlsisAdimin.Commit(TD);
  cdsDI.Close;
  cdsDI.Open;
end;

procedure TfDadosImportacao.BitBtn4Click(Sender: TObject);
var cm : string;
var TD: TTransactionDesc;
begin
  if  MessageDlg('Confirma a exclusão da Adição ''' + IntToStr(cdsAdicADIC_NADICAO.AsInteger) + ''' ?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
//  dtsrcAdic.DataSet.Delete;
//  (dtsrcAdic.DataSet as TClientDataSet).ApplyUpdates(0);
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  cm := 'delete From DIADICAO where ADIC_CODDET = ' + IntToStr(cdsAdicADIC_CODDET.AsInteger);
  dm.sqlsisAdimin.ExecuteDirect(cm);
  dm.sqlsisAdimin.Commit(TD);
  cdsAdic.Close;
  cdsAdic.Open;
end;

procedure TfDadosImportacao.FormShow(Sender: TObject);
begin
  cdsDI.Open;
end;

procedure TfDadosImportacao.DBGrid1CellClick(Column: TColumn);
begin
  if (cdsAdic.Active) then
    cdsAdic.Close;
  cdsAdic.Params[0].AsInteger := cdsDIDI_CODDI.AsInteger;
  cdsAdic.Open;
end;

procedure TfDadosImportacao.BitBtn3Click(Sender: TObject);
begin
  if(not cdsDIDI_CODDI.IsNull) then
  fDIAdicao := TfDIAdicao.Create(Application);
  try
    fDIAdicao.ShowModal;
  finally
    fDIAdicao.Free;
    if(cdsAdic.Active) then
     cdsAdic.Close;
    cdsAdic.Params[0].AsInteger := cdsDIDI_CODDI.AsInteger;
    cdsAdic.Open;
  end;
end;

end.
