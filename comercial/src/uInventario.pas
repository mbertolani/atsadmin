unit uInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Mask, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  Menus, XPMenu, DB, Buttons, ExtCtrls, MMJPanel, FMTBcd, DBClient,
  Provider, SqlExpr, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, rpcompobase, rpvclreport;

type
  TfInventario = class(TfPai_new)
    Panel1: TPanel;
    Label3: TLabel;
    edLista: TEdit;
    Label4: TLabel;
    JvDBGrid2: TJvDBGrid;
    sdsProd: TSQLDataSet;
    dspProd: TDataSetProvider;
    cdsProd: TClientDataSet;
    dsProd: TDataSource;
    sdsInvent: TSQLDataSet;
    dspInvent: TDataSetProvider;
    cdsInvent: TClientDataSet;
    dsInvent: TDataSource;
    btnProcLista: TBitBtn;
    Dta: TJvDatePickerEdit;
    cdsInventCODIVENTARIO: TStringField;
    cdsInventDATAIVENTARIO: TDateField;
    cdsInventCODPRODUTO: TIntegerField;
    cdsInventCODPRO: TStringField;
    cdsInventSITUACAO: TStringField;
    cdsInventDATAEXECUTADO: TDateField;
    cdsInventESTOQUE_ATUAL: TFloatField;
    cdsInventQTDE_INVENTARIO: TFloatField;
    cdsInventUN: TStringField;
    rgLista: TRadioGroup;
    cdsLanca_Inv: TClientDataSet;
    sdsLanca_Inv: TSQLDataSet;
    dspLanca_Inv: TDataSetProvider;
    cdsLanca_InvMSG: TStringField;
    sdsLanca_InvMSG: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edProd: TEdit;
    edGrupo: TEdit;
    edSubGrupo: TEdit;
    btnProc: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    btnIncluiTodos: TButton;
    btnInclui: TButton;
    btnRemoveTodos: TButton;
    btnRemove: TButton;
    BitBtn2: TBitBtn;
    btnImprimir: TBitBtn;
    VCLReport1: TVCLReport;
    cdsInventPRODUTO: TStringField;
    JvDBGrid3: TJvDBGrid;
    sdsListaInventario: TSQLDataSet;
    dspListaInventario: TDataSetProvider;
    cdsListaInventario: TClientDataSet;
    dsListaInventario: TDataSource;
    cdsListaInventarioCODIVENTARIO: TStringField;
    cdsListaInventarioDATAIVENTARIO: TDateField;
    sdsProdCODPRO: TStringField;
    sdsProdCODPRODUTO: TIntegerField;
    sdsProdPRODUTO: TStringField;
    sdsProdUNIDADEMEDIDA: TStringField;
    sdsProdCATEGORIA: TStringField;
    sdsProdFAMILIA: TStringField;
    cdsProdCODPRO: TStringField;
    cdsProdCODPRODUTO: TIntegerField;
    cdsProdPRODUTO: TStringField;
    cdsProdUNIDADEMEDIDA: TStringField;
    cdsProdCATEGORIA: TStringField;
    cdsProdFAMILIA: TStringField;
    procedure btnProcClick(Sender: TObject);
    procedure btnProcListaClick(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnIncluiTodosClick(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure btnRemoveTodosClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsInventAfterPost(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure JvDBGrid2TitleClick(Column: TColumn);
    procedure JvDBGrid3CellClick(Column: TColumn);
  private
    { Private declarations }
    procedure incluirInventario;
  public
    { Public declarations }
  end;

var
  fInventario: TfInventario;

implementation

uses UDm, dbXpress;

{$R *.dfm}

procedure TfInventario.btnProcClick(Sender: TObject);
var sql, sqla: string;
begin
  sqla := '';
  sql := 'SELECT CODPRO, CODPRODUTO, cast(PRODUTO as varchar(300)) PRODUTO, UNIDADEMEDIDA ,CATEGORIA , FAMILIA FROM PRODUTOS';
  if (edProd.Text <> '') then
  begin
    sqla := ' WHERE CODPRO LIKE ' + QuotedStr(edProd.Text + '%');
  end;
  if (edGrupo.Text <> '') then
  begin
    if (sqla <> '') then
      sqla := sqla + ' AND FAMILIA = ' + QuotedStr(edGrupo.Text)
    else
      sqla := ' WHERE FAMILIA = ' + QuotedStr(edGrupo.Text);
  end;
  if (edSubGrupo.Text <> '') then
  begin
    if (sqla <> '') then
      sqla := sqla + ' AND CATEGORIA = ' + QuotedStr(edSubGrupo.Text)
    else
      sqla := ' WHERE CATEGORIA = ' + QuotedStr(edSubGrupo.Text);
  end;
  if (cdsProd.Active) then
    cdsProd.Close;
  cdsProd.CommandText := sql + sqla;
  cdsProd.Open;
end;

procedure TfInventario.btnProcListaClick(Sender: TObject);
var sqlb : string;
begin
  sqlb := '';

  if( (edLista.Text <> '') and (Dta.Text <> '  /  /    ')) then
  begin
    if (cdsInvent.Active) then
      cdsInvent.Close;

    if (rgLista.ItemIndex = 0) then
    begin
      sqlb := ' WHERE i.SITUACAO = ' + QuotedStr('A');
    end;
    if (rgLista.ItemIndex = 1) then
    begin
      sqlb := ' WHERE i.SITUACAO = ' + QuotedStr('G');
    end;

    if (edLista.Text <> '') then
    begin
      sqlb := sqlb + ' AND i.CODIVENTARIO LIKE ' + QuotedStr(edLista.Text + '%');
    end;

    if (Dta.Text = '  /  /    ') then
      sqlb := sqlb
    else
      sqlb := sqlb + ' AND i.DATAIVENTARIO = ' + QuotedStr(formatdatetime('mm/dd/yy', dta.Date));

    cdsInvent.CommandText := 'SELECT i.*, cast(p.produto as varchar(300)) produto FROM INVENTARIO i ' +
    'inner join produtos p on p.codproduto = i.codproduto ' + sqlb;
    cdsInvent.Open;
    if (cdsInvent.IsEmpty) then
    begin
      if MessageDlg('Não existe esta Lista, criar uma ?',mtConfirmation,
                  [mbYes,mbNo],0) = mrYes then
      begin
        cdsInvent.Append;
        cdsInventCODIVENTARIO.AsString := edLista.text;
      end;
    end;
  end
  else
  begin
    if (cdsListaInventario.Active) then
      cdsListaInventario.Close;

    if (rgLista.ItemIndex = 0) then
    begin
      sqlb := ' WHERE i.SITUACAO = ' + QuotedStr('A');
    end;
    if (rgLista.ItemIndex = 1) then
    begin
      sqlb := ' WHERE i.SITUACAO = ' + QuotedStr('G');
    end;

    if (edLista.Text <> '') then
    begin
      sqlb := sqlb + ' AND i.CODIVENTARIO LIKE ' + QuotedStr(edLista.Text + '%');
    end;

    if (Dta.Text = '  /  /    ') then
      sqlb := sqlb
    else
      sqlb := sqlb + ' AND i.DATAIVENTARIO = ' + QuotedStr(formatdatetime('mm/dd/yy', dta.Date));

    cdsListaInventario.CommandText := 'SELECT distinct i.CODIVENTARIO, i.DATAIVENTARIO FROM INVENTARIO i ' + sqlb;
    cdsListaInventario.Open;
    if (cdsListaInventario.IsEmpty) then
    begin
      if MessageDlg('Não existe esta Lista, criar uma ?',mtConfirmation,
                  [mbYes,mbNo],0) = mrYes then
      begin
        cdsInvent.Append;
        cdsInventCODIVENTARIO.AsString := edLista.text;
      end;
    end;


  end;
end;

procedure TfInventario.incluirInventario;
var sql :string;
    TD : TTransactionDesc;
begin
  if (edLista.Text = '') then
  begin
    MessageDlg('Informe o nome da Lista', mtWarning, [mbOK], 0);
    edLista.SetFocus;
    exit;
  end;
  if (cdsInvent.Active) then
  begin
    //if (cdsInvent.State in [dsInsert]) then
    //begin
        sql := 'INSERT INTO INVENTARIO (CODIVENTARIO, DATAIVENTARIO, CODPRODUTO, CODPRO, SITUACAO, UN) VALUES ('  +
      QuotedStr(edLista.text) + ' , ' + QuotedStr(formatdatetime('mm/dd/yyyy', Now)) + ', ' + IntToStr(cdsProd.Fields[1].AsInteger) + ', ' +
      QuotedStr(cdsProd.Fields[0].AsString) + ', ' +QuotedStr('A') + ', ' + QuotedStr(cdsProdUNIDADEMEDIDA.AsString) + ')';
    try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(sql);
    dm.sqlsisAdimin.Commit(TD);
    except
     MessageDlg('Erro ao inserir no banco de dados', mtError, [mbOK], 0);
    end;
      {cdsInvent.Append;
      cdsInventCODIVENTARIO.AsString    := edLista.text;
      cdsInventDATAIVENTARIO.AsDateTime := now;
      cdsInventCODPRODUTO.AsInteger     := cdsProd.Fields[1].AsInteger;
      cdsInventCODPRO.AsString          := cdsProd.Fields[0].AsString;
      cdsInventSITUACAO.AsString        := 'A';
      cdsInventUN.AsString              := cdsProd.Fields[3].AsString;
      cdsInvent.ApplyUpdates(0);}
    {end;
    if (cdsInvent.State in [dsBrowse]) then
    begin
      cdsInventDATAIVENTARIO.AsDateTime := now;
      cdsInventCODPRODUTO.AsInteger     := cdsProd.Fields[1].AsInteger;
      cdsInventCODPRO.AsString          := cdsProd.Fields[0].AsString;
      cdsInventSITUACAO.AsString        := 'A';
      cdsInventUN.AsString              := cdsProd.Fields[3].AsString;
      cdsInvent.ApplyUpdates(0);
    end;}
  end;

end;

procedure TfInventario.JvDBGrid1CellClick(Column: TColumn);
begin
//  incluirInventario;
end;

procedure TfInventario.btnExcluirClick(Sender: TObject);
begin
  //inherited;
  if (edLista.Text = '') then
  begin
    MessageDlg('Informe o nome da Lista a excluir.', mtWarning, [mbOK], 0);
    edLista.SetFocus;
    exit;
  end;

  if MessageDlg('Confirma a exclusão da Lista ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM INVENTARIO WHERE CODIVENTARIO = ' +
      QuotedStr(edLista.Text));
    if (cdsInvent.Active) then
      cdsInvent.Close;
    cdsInvent.Open;
  end;
end;

procedure TfInventario.btnIncluirClick(Sender: TObject);
  begin
  if (edLista.Text = '') then
  begin
    MessageDlg('Informe o nome da Lista a executar.', mtWarning, [mbOK], 0);
    edLista.SetFocus;
    exit;
  end;

  if (cdsInvent.State in [dsInsert, dsEdit]) then
  begin
    cdsInvent.ApplyUpdates(0);
  end;
  {dm.sqlsisAdimin.ExecuteDirect('SELECT * FROM INVENTARIO_LANCA(' +
    QuotedStr(edLista.Text) + ')');}
  if (cdsLanca_Inv.Active) then
    cdsLanca_Inv.Close;
  cdsLanca_Inv.Params[0].asString := edLista.Text;
  cdsLanca_Inv.Open;
  cdsLanca_Inv.ApplyUpdates(0);
  MessageDlg('Alterações executadas com sucesso!', mtInformation, [mbOK], 0);
end;

procedure TfInventario.btnIncluiTodosClick(Sender: TObject);
begin
  //inherited;
  if (edLista.Text = '') then
  begin
    MessageDlg('Informe o nome da Lista a executar.', mtWarning, [mbOK], 0);
    edLista.SetFocus;
  exit;

  end;
  cdsProd.DisableControls;
  cdsProd.First;
  While not cdsProd.Eof do
  begin
    incluirInventario;
    cdsProd.Next;
  end;
  cdsProd.EnableControls;
  btnProcLista.Click;
end;

procedure TfInventario.btnIncluiClick(Sender: TObject);
begin
  //inherited;
  incluirInventario;
  btnProcLista.Click;
end;

procedure TfInventario.btnRemoveTodosClick(Sender: TObject);
begin
  btnExcluir.Click;
end;

procedure TfInventario.btnRemoveClick(Sender: TObject);
begin
  if (edLista.Text = '') then
  begin
    MessageDlg('Informe o nome da Lista', mtWarning, [mbOK], 0);
    edLista.SetFocus;
    exit;
  end;
  if (cdsInvent.Active) then
  begin
    cdsInvent.Delete;
  end;
end;

procedure TfInventario.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfInventario.cdsInventAfterPost(DataSet: TDataSet);
begin
  inherited;
  cdsInvent.ApplyUpdates(0);
end;

procedure TfInventario.BitBtn2Click(Sender: TObject);
begin
 // inherited;
 Dta.Text := '';
end;

procedure TfInventario.btnImprimirClick(Sender: TObject);
begin
 // inherited;
    VCLReport1.Filename := str_relatorio + 'inventario.rep';
    VCLReport1.Title := VCLReport1.Filename;
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('SITUACAO').Value := cdsInventSITUACAO.AsString;
    VCLReport1.Report.Params.ParamByName('CODIVENTARIO').Value := cdsInventCODIVENTARIO.AsString;
    VCLReport1.Report.Params.ParamByName('DATAIVENTARIO').Value :=  formatdatetime('dd/mm/yy', StrToDate(cdsInventDATAIVENTARIO.AsString));
    VCLReport1.Execute;
end;

procedure TfInventario.JvDBGrid2TitleClick(Column: TColumn);
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

    if (cdsInvent.IndexName = str_IndexAsc) then
    begin
    str_IndexName := str_IndexDesc;
    enum_IndexOption := [ixDescending];
    end
    else if (cdsInvent.IndexName = str_IndexDesc) then
    begin
    str_IndexName := str_IndexAsc;
    end
    else
    begin
    str_IndexName := str_IndexAsc;
    end;

    cdsInvent.IndexDefs.Clear;

    cdsInvent.IndexDefs.Add(str_IndexName,Column.FieldName,enum_IndexOption);
    cdsInvent.IndexName := str_IndexName;
  end;
end;

procedure TfInventario.JvDBGrid3CellClick(Column: TColumn);
var sqlb : String;
begin
  sqlb := '';
  if (cdsInvent.Active) then
    cdsInvent.Close;

  if (rgLista.ItemIndex = 0) then
  begin
    sqlb := ' WHERE i.SITUACAO = ' + QuotedStr('A');
  end;
  if (rgLista.ItemIndex = 1) then
  begin
    sqlb := ' WHERE i.SITUACAO = ' + QuotedStr('G');
  end;

  sqlb := sqlb + ' AND i.CODIVENTARIO = ' + QuotedStr(cdsListaInventarioCODIVENTARIO.AsString);
  sqlb := sqlb + ' AND i.DATAIVENTARIO = ' + QuotedStr(formatdatetime('mm/dd/yy', cdsListaInventarioDATAIVENTARIO.AsDateTime));

  cdsInvent.CommandText := 'SELECT i.*, cast(p.produto as varchar(300)) produto FROM INVENTARIO i ' +
  'inner join produtos p on p.codproduto = i.codproduto ' + sqlb;
  cdsInvent.Open;
end;

end.
