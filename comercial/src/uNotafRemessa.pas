unit uNotafRemessa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, XPMenu, DB, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, SqlExpr, Provider, DBClient;

type
  TfNotafRemessa = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    MMJPanel2: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    MMJPanel1: TMMJPanel;
    btnSair: TBitBtn;
    DtSrc: TDataSource;
    XPMenu1: TXPMenu;
    btnSelecionar: TBitBtn;
    sdsNFfutura: TSQLDataSet;
    sdsNFremessa: TSQLDataSet;
    sdsNFfuturaNOTASERIE: TStringField;
    sdsNFfuturaNUMNF: TIntegerField;
    sdsNFfuturaQUANTIDADE: TFloatField;
    sdsNFfuturaPESOBRUTO: TBCDField;
    sdsNFfuturaPESOLIQUIDO: TBCDField;
    sdsNFfuturaDTAEMISSAO: TDateField;
    sdsNFfuturaCODVENDA: TIntegerField;
    sdsNFfuturaNOTAFISCAL: TIntegerField;
    sdsNFfuturaBASE_ICMS: TFloatField;
    sdsNFfuturaVALOR_ICMS: TFloatField;
    sdsNFfuturaBASE_ICMS_SUBST: TFloatField;
    sdsNFfuturaVALOR_ICMS_SUBST: TFloatField;
    sdsNFfuturaVALOR_PRODUTO: TFloatField;
    sdsNFfuturaVALOR_TOTAL_NOTA: TFloatField;
    sdsNFfuturaCFOP: TStringField;
    sdsNFfuturaCODCLIENTE: TIntegerField;
    sdsNFfuturaCNPJ_CPF: TStringField;
    sdsNFfuturaINSCRICAOESTADUAL: TStringField;
    sdsNFfuturaSERIE: TStringField;
    cdsNFfutura: TClientDataSet;
    dspNFfutura: TDataSetProvider;
    dspNFremessa: TDataSetProvider;
    cdsNFremessa: TClientDataSet;
    DtsrcR: TDataSource;
    cdsNFfuturaNOTASERIE: TStringField;
    cdsNFfuturaNUMNF: TIntegerField;
    cdsNFfuturaQUANTIDADE: TFloatField;
    cdsNFfuturaPESOBRUTO: TBCDField;
    cdsNFfuturaPESOLIQUIDO: TBCDField;
    cdsNFfuturaDTAEMISSAO: TDateField;
    cdsNFfuturaCODVENDA: TIntegerField;
    cdsNFfuturaNOTAFISCAL: TIntegerField;
    cdsNFfuturaBASE_ICMS: TFloatField;
    cdsNFfuturaVALOR_ICMS: TFloatField;
    cdsNFfuturaBASE_ICMS_SUBST: TFloatField;
    cdsNFfuturaVALOR_ICMS_SUBST: TFloatField;
    cdsNFfuturaVALOR_PRODUTO: TFloatField;
    cdsNFfuturaVALOR_TOTAL_NOTA: TFloatField;
    cdsNFfuturaCFOP: TStringField;
    cdsNFfuturaCODCLIENTE: TIntegerField;
    cdsNFfuturaCNPJ_CPF: TStringField;
    cdsNFfuturaINSCRICAOESTADUAL: TStringField;
    cdsNFfuturaSERIE: TStringField;
    cdsNFremessaNOTASERIE: TStringField;
    cdsNFremessaNUMNF: TIntegerField;
    cdsNFremessaQUANTIDADE: TFloatField;
    cdsNFremessaPESOBRUTO: TBCDField;
    cdsNFremessaPESOLIQUIDO: TBCDField;
    cdsNFremessaDTAEMISSAO: TDateField;
    cdsNFremessaCODVENDA: TIntegerField;
    cdsNFremessaNOTAFISCAL: TIntegerField;
    cdsNFremessaBASE_ICMS: TFloatField;
    cdsNFremessaVALOR_ICMS: TFloatField;
    cdsNFremessaBASE_ICMS_SUBST: TFloatField;
    cdsNFremessaVALOR_ICMS_SUBST: TFloatField;
    cdsNFremessaVALOR_PRODUTO: TFloatField;
    cdsNFremessaVALOR_TOTAL_NOTA: TFloatField;
    cdsNFremessaCFOP: TStringField;
    cdsNFremessaCODCLIENTE: TIntegerField;
    cdsNFremessaCNPJ_CPF: TStringField;
    cdsNFremessaINSCRICAOESTADUAL: TStringField;
    cdsNFremessaSERIE: TStringField;
    sdsNFfuturaRAZAOSOCIAL: TStringField;
    cdsNFfuturaRAZAOSOCIAL: TStringField;
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotafRemessa: TfNotafRemessa;

implementation

uses UDm, UDmSaude, ufDlgLogin, uUtils, uNotaf, UDMNF;

{$R *.dfm}

(************************************************************************************)

Procedure FormResize(Sender: TObject); var R : TRect; DC : HDc; Canv : TCanvas;
begin
  R := Rect( 0, 0, Screen.Width, Screen.Height );
  DC := GetWindowDC( GetDeskTopWindow );
  Canv := TCanvas.Create;
  Canv.Handle := DC;
  Canv.CopyRect(R,Canv,R);
  ReleaseDC( GetDeskTopWindow, DC );
end;
(************************************************************************************)
procedure TfNotafRemessa.DtSrcStateChange(Sender: TObject);
var icomp: integer;
begin

end;
(************************************************************************************)
procedure TfNotafRemessa.btnSairClick(Sender: TObject);
begin
  if DtSrc.State in [dsInsert,dsEdit] then
  begin
    if MessageDlg('Você não salvou este registro deseja sair assim mesmo?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
      close;
  end
  else
    Close;
end;
(************************************************************************************)
procedure TfNotafRemessa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if assigned(DtSrc.DataSet) then
     DtSrc.DataSet.Close;
end;
(************************************************************************************)
procedure TfNotafRemessa.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;
(************************************************************************************)
procedure TfNotafRemessa.FormCreate(Sender: TObject);
begin
  if (dm.sResolucao.Active) then
     dm.sResolucao.Close;
  dm.sResolucao.Params[0].AsString := MICRO;
  dm.sResolucao.Open;
  if (dm.sResolucao.IsEmpty) then
  begin
       videoW := '800';
       videoH := '600';
  end
  else
  begin
       videoW := dm.sResolucaoMODULO.AsString;
       videoH := dm.sResolucaoUSUARIO.AsString;
  end;

  if (videoW <> 'widescreen') then
  begin
   if  (videoW <> '') then
   begin
     ScreenWidth := StrToInt(videoW);
     ScreenHeight := StrToInt(videoH);
     scaled := true;
     if (screen.width <> ScreenWidth) then
     begin
       height := longint(height) * longint(screen.height) DIV ScreenHeight;
       width := longint(width) * longint(screen.width) DIV ScreenWidth;
       scaleBy(screen.width, ScreenWidth);
     end;
   end;
  end;
  dm.sResolucao.Close;
end;

procedure TfNotafRemessa.FormShow(Sender: TObject);
begin
   if (cdsNFfutura.Active) then
     cdsNFfutura.Close;
   cdsNFfutura.Params[0].AsInteger := DMNF.cds_nfCODCLIENTE.AsInteger;
   cdsNFfutura.Open;

   if (cdsNFremessa.Active) then
     cdsNFremessa.Close;
   cdsNFremessa.Open;
end;

end.
