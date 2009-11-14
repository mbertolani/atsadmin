unit uprocurarAcademia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, ComCtrls, Grids, DBGrids, StdCtrls, Buttons,
  DBLocals, EDBFind, dxCore, dxButton, rpcompobase, rpvclreport, DBCtrls, DBClient;

type
  TfProcurarAcademia = class(TForm)
    DtSrc: TDataSource;
    StsBr: TStatusBar;
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancel: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    EditProc: TEdit;
    BtnProcurar: TBitBtn;
    EvDBFind1: TEvDBFind;
    btnIncluir: TBitBtn;
    Label1: TLabel;
    btnImprimir: TBitBtn;
    rep: TVCLReport;
    RadioGroup1: TRadioGroup;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BtnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    usuarioproc : string;
 constructor Create (AOWner : TComponent; DataSet : TClientDataset); reintroduce;
    { Public declarations }
  end;

var
  fProcurarAcademia: TfProcurarAcademia;
    varForm1, nomecliente, fCompraNomeForn, nome_Forn: String;
    cod_Forn, codcliente, fCompraCodForn: integer;

implementation

uses UDM, uFornecedorCadastro, ufuncionario, uClienteCadastro,
  uClientePlano, UDmSaude;

{$R *.dfm}

procedure TfProcurarAcademia.DBGrid1TitleClick(Column: TColumn);
begin
  with DtSrc.dataset as TClientDataset do
    IndexFieldNames:=Column.FieldName;
end;

procedure TfProcurarAcademia.BtnProcurarClick(Sender: TObject);
begin
 with DtSrc.dataset as TClientDataset do // Atenção : declara DBlocalS em uses
  begin
    Close;
    If tag=0 then //opção de flag para usar % ou não
    begin
       Params[0].AsString:=EditProc.Text+'%';
      if DtSrc.DataSet = dm.scds_usuario_proc then
      begin
        Params.ParamByName('pPerfil').AsString := usuarioproc;
        Params.ParamByName('pPerfil1').AsString := 'AMBOS';
      end
      end
    else
    begin
       Params[0].AsString:=EditProc.Text;
    if DtSrc.DataSet = dm.scds_usuario_proc then
    begin
       Params.ParamByName('pPerfil').AsString := usuarioproc;
       Params.ParamByName('pPerfil1').AsString := 'AMBOS';
    end
    end;
    Open;
    BtnOk.Enabled:=not IsEmpty;
    if IsEmpty then
       StsBr.SimpleText:=format('Nenum registro foi encontrado com "%s"',[EditProc.text])
    else
     StsBr.SimpleText:=
     format('%d registros encontrados com "%s"',[recordcount,EditProc.text]);
   end;
end;

constructor TfProcurarAcademia.Create(AOWner: TComponent; DataSet: TClientDataset);
begin
  inherited create(AOWner);
   DtSrc.DataSet:=DataSet;
end;

procedure TfProcurarAcademia.FormShow(Sender: TObject);
begin
 if (EvDBFind1.Visible = True) then
    EvDBFind1.SetFocus;
end;

procedure TfProcurarAcademia.btnIncluirClick(Sender: TObject);
begin
  //=========================================================
  //Procura acessado para procurar Fornecedor
  if DtSrc.DataSet = dm.scds_forn_proc then
  begin
     ffornecedorcadastro:=TfFornecedorCadastro.Create(Application);
     try
        //varForm1 := 'compra';
        ffornecedorcadastro.ShowModal;
        Close;
     finally
       varForm1 := '';
       ffornecedorcadastro.Free;
     end;
  end;
  //=========================================================
  //Procura acessado para procurar Vendedor
  if DtSrc.DataSet = dm.scds_usuario_proc then
  begin
     fFuncionario:=TfFuncionario.Create(Application);
     try
        //varForm1 := 'Procura';
        fFuncionario.ShowModal;
        BtnOk.Click;
     finally
       varForm1 := '';
       fFuncionario.Free;
     end;
  end;

end;

procedure TfProcurarAcademia.BtnOkClick(Sender: TObject);
begin
  if (dm.scds_usuario_proc.Active) then
  begin
    cod_vendedor := dm.scds_usuario_procCODUSUARIO.AsInteger;
    nome_vendedor := dm.scds_usuario_procNOMEUSUARIO.AsString;
  end;

end;

procedure TfProcurarAcademia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (dm.scds_usuario_proc.Active) then
  begin
    cod_vendedor := dm.scds_usuario_procCODUSUARIO.AsInteger;
    nome_vendedor := dm.scds_usuario_procNOMEUSUARIO.AsString;
  end;

end;

procedure TfProcurarAcademia.btnImprimirClick(Sender: TObject);
begin
  // Fornecedor
  if (DtSrc.DataSet = dm.scds_forn_proc) then
  begin
    rep.FileName := str_relatorio + 'fornecedorCadastro.rep';
  end;
  if (DtSrc.DataSet = dm.proc_transp) then
  begin
    rep.FileName := str_relatorio + 'transportadoraCadastro.rep';
  end;
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  rep.Execute;
end;

procedure TfProcurarAcademia.RadioGroup1Click(Sender: TObject);
begin
  if (radioGroup1.ItemIndex = 0) then
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1
  else
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 2;
  BtnProcurar.Click;
end;

end.
