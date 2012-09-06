unit uRetira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, StdCtrls, Mask, DBCtrls, DBClient, Provider, SqlExpr,
  Buttons,DBxPress, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit;

type
  TfRetira = class(TForm)
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsr: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    sdsCorreioDESCARTE: TFloatField;
    cdsCorreioDESCARTE: TFloatField;
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRetira: TfRetira;

implementation

uses UDm;

{$R *.dfm}

procedure TfRetira.btnGravarClick(Sender: TObject);
var strSql : string;
    TD: TTransactionDesc;
begin
    if dsr.DataSet.State in [dsEdit] then
    begin
     {
       strSql:= 'UPDATE MOVDOC SET NOMERET = ' + QuotedStr(DBEdit1.Text) +
                ', NDOCRET = ' + QuotedStr(DBEdit2.Text) +
                ', DTPREV = ' + QuotedStr(FormatDateTime('mm/dd/yy', StrToDate(DBEdit3.Text))) +
                ', DTRET = ' + QuotedStr(FormatDateTime('mm/dd/yy', StrToDate(DBEdit5.Text))) +
                ', OBSRET = ' + QuotedStr(DBEdit4.Text) +
                ' WHERE CODOC = ' + IntToStr(cdsCorreioCODOC.AsInteger);
      }
          strSql := 'UPDATE MOVDOC SET NOMERET = ';
          strSql := strSql +  QuotedStr(DBEdit1.Text) + ',';
          strSql := strSql + 'NDOCRET = ';
          strSql := strSql + QuotedStr(DBEdit2.Text) + ',';


          if(DBEdit3.Text = '  /  /    ') then
          begin
            strSql := strSql + 'DTPREV = null ,';
          end
          else begin
            strSql := strSql + 'DTPREV = ';
            strSql := strSql + QuotedStr(FormatDateTime('mm/dd/yy', StrToDate(DBEdit3.Text))) + ',';
          end;

          if(DBEdit5.Text = '  /  /    ') then
          begin
            strSql := strSql + 'DTRET = null ,';
          end
          else begin
            strSql := strSql + 'DTRET = ';
            strSql := strSql + QuotedStr(FormatDateTime('mm/dd/yy', StrToDate(DBEdit5.Text))) + ',';
          end;

          strSql := strSql + 'OBSRET = ';
          strSql := strSql + QuotedStr(DBEdit4.Text) + ' ';

          strSql := strSql + ' where CODOC = ';
          strSql := strSql +  IntToStr(cdsCorreioCODOC.AsInteger);

       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
        dm.sqlsisAdimin.Commit(TD);
       except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro ao Gravar Alteração.', mtError,
           [mbOk], 0);
       end;
    end;

end;

procedure TfRetira.btnSairClick(Sender: TObject);
begin
 close;
end;

procedure TfRetira.BitBtn2Click(Sender: TObject);
begin
  DBEdit5.Clear;
  cdsCorreio.Edit;
end;

procedure TfRetira.BitBtn3Click(Sender: TObject);
begin
  DBEdit3.Clear;
  cdsCorreio.Edit;
end;

end.
