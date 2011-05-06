unit uDeclaracaoImportacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, SqlExpr, DBClient, Buttons, Grids,
  DBGrids, StdCtrls, Mask, DBCtrls;

type
  TfDeclaracaoImportacao = class(TForm)
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Button1: TButton;
    DBEdit7: TDBEdit;
    DBGrid1: TDBGrid;
    btnProcurar: TBitBtn;
    btnIncluir: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    cdsDI: TClientDataSet;
    sdsDI: TSQLDataSet;
    dspDI: TDataSetProvider;
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
    dtsrc_DI: TDataSource;
    sdsDINOMEFORNECEDOR: TStringField;
    cdsDINOMEFORNECEDOR: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDeclaracaoImportacao: TfDeclaracaoImportacao;

implementation

uses UDm, uProcurar;

{$R *.dfm}

procedure TfDeclaracaoImportacao.Button1Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;  
  fProcurar.RadioGroup2.Visible := True;  
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
  fProcurar.btnIncluir.Visible := True;
  try
    varForm1 := 'compra';
    cod_forn := 0;
   fProcurar.ShowModal;
   if dtsrc_DI.State=dsBrowse then
     cdsDI.Edit;
   cdsDIDI_CODEXPORTADOR.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
   finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
   end;
end;

procedure TfDeclaracaoImportacao.btnIncluirClick(Sender: TObject);
begin
  if (cdsDI.Active) then
    cdsDI.Close;
  cdsDI.Open;
  cdsDI.Append;
  btnGravar.Visible := True;
  btnIncluir.Visible := False;
end;

procedure TfDeclaracaoImportacao.btnGravarClick(Sender: TObject);
begin
  cdsDI.ApplyUpdates(0);
  btnGravar.Visible := False;
  btnIncluir.Visible := True;
end;

procedure TfDeclaracaoImportacao.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfDeclaracaoImportacao.btnCancelarClick(Sender: TObject);
begin
  cdsDI.Cancel;
end;

end.
