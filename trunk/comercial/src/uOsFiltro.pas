unit uOsFiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, ExtCtrls, ComCtrls, StdCtrls;

type
  TfOsFiltro = class(TForm)
    Panel1: TPanel;
    DBGrid1: TJvDBGrid;
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
    sdsPeca: TSQLDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    dspPeca: TDataSetProvider;
    StatusBar1: TStatusBar;
    rgStatus: TRadioGroup;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsServicoDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure dsOsDataChange(Sender: TObject; Field: TField);
    procedure StatusBar1Resize(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1GetBtnParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; var ASortMarker: TSortMarker;
      IsDown: Boolean);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure rgStatusClick(Sender: TObject);
  private
    Ascending : boolean;
    procedure abrirOs;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOsFiltro: TfOsFiltro;

implementation

uses UDm, uOs, sCtrlResize;

{$R *.dfm}

procedure TfOsFiltro.DBGrid1DblClick(Sender: TObject);
begin
  if (not cdsOs.Active) then
    cdsOs.Open;
  if (fOs.cdsOS.Active) then
    fOs.cdsOS.Close;
  fOs.cdsOS.Params.ParamByName('POS').Clear;
  fOs.cdsOS.Params.ParamByName('POS').AsInteger := cdsOsCODOS.AsInteger;
  fOs.cdsOS.Open;
  if (not fOs.cdsOS.IsEmpty) then
  begin
    fOs.modoOs := 'Edit';
    fOs.cdsOS.Edit;
  end;
  fOs.ShowModal;
end;

procedure TfOsFiltro.FormShow(Sender: TObject);
begin
  abrirOs;
end;

procedure TfOsFiltro.dsServicoDataChange(Sender: TObject; Field: TField);
begin
  if (cdsPeca.Active) then
    cdsPeca.Close;
  cdsPeca.Params.ParamByName('CODOSSERV').AsInteger := cdsServicoID_OS_DET.AsInteger;
  cdsPeca.Open;  
end;

procedure TfOsFiltro.FormCreate(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fOsFiltro));
end;

procedure TfOsFiltro.dsOsDataChange(Sender: TObject; Field: TField);
begin
  if (cdsOs.Active) then
  begin
    StatusBar1.Panels[0].Text := 'Orderm de Serviços';//MinimizeName(' ' + CdsOS.Filename, StatusBar1.Canvas, StatusBar1.Panels[0].Width);
    if (CdsOS.RecNo >= 0) then
      StatusBar1.Panels[1].Text := Format('  %d of %d', [CdsOs.RecNo + 1, CdsOS.RecordCount])
    else
      StatusBar1.Panels[1].Text := '  Inserindo...';
  end;
end;

procedure TfOsFiltro.StatusBar1Resize(Sender: TObject);
begin
  if (cdsOs.Active) then
  begin
    StatusBar1.Panels[0].Width := ClientWidth - 100;
    dsOsDataChange(nil, nil);
  end;
end;

procedure TfOsFiltro.DBGrid1TitleClick(Column: TColumn);
var
  enum_IndexOption: TIndexOptions;
  str_IndexAsc,
  str_IndexDesc,
  str_IndexName: String;
begin
  if (Column.Field.FieldKind = fkData) then
  begin
    str_IndexAsc := Concat('asc_',Column.FieldName);
    str_IndexDesc := Concat('desc_',Column.FieldName);

    str_IndexName := '';
    enum_IndexOption := [];

    if (cdsOs.IndexName = str_IndexAsc) then
    begin
      str_IndexName := str_IndexDesc;
      enum_IndexOption := [ixDescending];
    end
    else if (cdsOs.IndexName = str_IndexDesc) then
    begin
      str_IndexName := str_IndexAsc;
    end
    else
    begin
      str_IndexName := str_IndexAsc;
    end;

    cdsOs.IndexDefs.Clear;

    cdsOs.IndexDefs.Add(str_IndexName,Column.FieldName,enum_IndexOption);
    cdsOs.IndexName := str_IndexName;
  end;

  DBGrid1.SortedField := Column.FieldName;
end;

procedure TfOsFiltro.DBGrid1GetBtnParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; var ASortMarker: TSortMarker;
  IsDown: Boolean);
const
  Direction: array[boolean] of TSortmarker = (smDown, smUp);
begin
  if Field.FieldName = DBGrid1.SortedField then
    ASortMarker := Direction[Ascending]
  else
    ASortMarker := smNone;
end;

procedure TfOsFiltro.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (cdsOs.Active) then
  begin
    if (cdsOsSTATUS.AsString = 'P') then
      DBGrid1.Canvas.Brush.Color := clYellow;
    if (cdsOsSTATUS.AsString = 'F') then
      DBGrid1.Canvas.Brush.Color := clGray;

    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;  
end;

procedure TfOsFiltro.abrirOs;
var strAbrirOs: String;
begin
  if (cdsOs.Active) then
    cdsOs.Close;


  case (rgStatus.ItemIndex) of
    0 : strAbrirOs := ' WHERE STATUS = ' + QuotedStr('P');
    1 : strAbrirOs := ' WHERE STATUS = ' + QuotedStr('E');
    2 : strAbrirOs := ' WHERE STATUS = ' + QuotedStr('F');
  end;
  cdsOs.CommandText :=  'SELECT * FROM OS ' + strAbrirOs;
  cdsOs.Open;
end;

procedure TfOsFiltro.rgStatusClick(Sender: TObject);
begin
  abrirOs;
end;

end.
