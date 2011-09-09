unit uOsFiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, ExtCtrls;

type
  TfOsFiltro = class(TForm)
    Panel1: TPanel;
    DBGrid1: TJvDBGrid;
    Panel2: TPanel;
    dspOs: TDataSetProvider;
    cdsOs: TClientDataSet;
    dsOs: TDataSource;
    JvDBGrid1: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    cdsOsCODOS: TIntegerField;
    cdsOsCODCLIENTE: TIntegerField;
    cdsOsCODMOVIMENTO: TIntegerField;
    cdsOsDATAMOVIMENTO: TDateField;
    cdsOsDATA_SISTEMA: TSQLTimeStampField;
    cdsOsPROBLEMAS: TStringField;
    cdsOsSTATUS: TStringField;
    cdsOsDATA_INI: TDateField;
    cdsOsDATA_FIM: TDateField;
    cdsServico: TClientDataSet;
    dsServico: TDataSource;
    sqlPeca: TSQLQuery;
    cdsPeca: TClientDataSet;
    dsPeca: TDataSource;
    sqlServico: TSQLDataSet;
    sqlServicoID_OS_DET: TIntegerField;
    sqlServicoID_OS: TIntegerField;
    sqlServicoCODPRODUTO: TIntegerField;
    sqlServicoDESCRICAO_SERV: TStringField;
    sqlServicoRESPONSAVEL: TStringField;
    sqlServicoSTATUS: TStringField;
    sqlServicoTIPO: TStringField;
    sqlServicoQTDE: TFloatField;
    sqlServicoPRECO: TFloatField;
    sqlServicoDESCONTO: TFloatField;
    sqlServicoVALORTOTAL: TFloatField;
    sqlServicoID_OSDET_SERV: TIntegerField;
    cdsServicoID_OS_DET: TIntegerField;
    cdsServicoID_OS: TIntegerField;
    cdsServicoCODPRODUTO: TIntegerField;
    cdsServicoDESCRICAO_SERV: TStringField;
    cdsServicoRESPONSAVEL: TStringField;
    cdsServicoSTATUS: TStringField;
    cdsServicoTIPO: TStringField;
    cdsServicoQTDE: TFloatField;
    cdsServicoPRECO: TFloatField;
    cdsServicoDESCONTO: TFloatField;
    cdsServicoVALORTOTAL: TFloatField;
    cdsServicoID_OSDET_SERV: TIntegerField;
    sqlPecaID_OS_DET: TIntegerField;
    sqlPecaID_OS: TIntegerField;
    sqlPecaCODPRODUTO: TIntegerField;
    sqlPecaDESCRICAO_SERV: TStringField;
    sqlPecaRESPONSAVEL: TStringField;
    sqlPecaSTATUS: TStringField;
    sqlPecaTIPO: TStringField;
    sqlPecaQTDE: TFloatField;
    sqlPecaPRECO: TFloatField;
    sqlPecaDESCONTO: TFloatField;
    sqlPecaVALORTOTAL: TFloatField;
    sqlPecaID_OSDET_SERV: TIntegerField;
    cdsPecaID_OS_DET: TIntegerField;
    cdsPecaID_OS: TIntegerField;
    cdsPecaCODPRODUTO: TIntegerField;
    cdsPecaDESCRICAO_SERV: TStringField;
    cdsPecaRESPONSAVEL: TStringField;
    cdsPecaSTATUS: TStringField;
    cdsPecaTIPO: TStringField;
    cdsPecaQTDE: TFloatField;
    cdsPecaPRECO: TFloatField;
    cdsPecaDESCONTO: TFloatField;
    cdsPecaVALORTOTAL: TFloatField;
    cdsPecaID_OSDET_SERV: TIntegerField;
    cdsOsKM: TIntegerField;
    cdsOsCODUSUARIO: TIntegerField;
    cdsOsDATAOS: TDateField;
    cdsOsCODVEICULO: TStringField;
    cdsOsOBS: TStringField;
    sqlServicoCODUSUARIO: TIntegerField;
    cdsServicoCODUSUARIO: TIntegerField;
    dsLinkMestreDetalhe: TDataSource;
    sdsOs: TSQLDataSet;
    sdsOsCODOS: TIntegerField;
    sdsOsCODCLIENTE: TIntegerField;
    sdsOsCODMOVIMENTO: TIntegerField;
    sdsOsDATAMOVIMENTO: TDateField;
    sdsOsDATA_SISTEMA: TSQLTimeStampField;
    sdsOsPROBLEMAS: TStringField;
    sdsOsSTATUS: TStringField;
    sdsOsDATA_INI: TDateField;
    sdsOsDATA_FIM: TDateField;
    sdsOsKM: TIntegerField;
    sdsOsCODUSUARIO: TIntegerField;
    sdsOsDATAOS: TDateField;
    sdsOsCODVEICULO: TStringField;
    sdsOsOBS: TStringField;
    cdsOssqlServico: TDataSetField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOsFiltro: TfOsFiltro;

implementation

uses UDm, uOs;

{$R *.dfm}

procedure TfOsFiltro.DBGrid1DblClick(Sender: TObject);
begin
  fOs.ShowModal;
  cdsOs.Open;
end;

procedure TfOsFiltro.FormShow(Sender: TObject);
begin
  cdsOs.Open;
end;

end.
