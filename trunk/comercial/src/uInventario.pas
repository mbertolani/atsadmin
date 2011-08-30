unit uInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Mask, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  Menus, XPMenu, DB, Buttons, ExtCtrls, MMJPanel, FMTBcd, DBClient,
  Provider, SqlExpr, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, rpcompobase, rpvclreport, dbxpress;

type
  TfInventario = class(TfPai_new)
    Panel1: TPanel;
    Label3: TLabel;
    edLista: TEdit;
    Label4: TLabel;
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
    JvDBGrid2: TJvDBGrid;
    cdsInventQTDE_INVENTARIO: TFloatField;
    sProc: TSQLStoredProc;
    cbCCusto: TComboBox;
    Label2: TLabel;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    d_2: TDataSetProvider;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    cbCCusto1: TComboBox;
    Label8: TLabel;
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
    procedure dsInventStateChange(Sender: TObject);
    procedure JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure btnGravarClick(Sender: TObject);
    procedure cbCCustoChange(Sender: TObject);
  private
    { Private declarations }
    TD: TTransactionDesc;
    procedure incluirInventario;
  public
    { Public declarations }
  end;

var
  fInventario: TfInventario;

implementation

uses UDm;

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
  if (cbCCusto.ItemIndex > -1) then
  begin
    if (sqla <> '') then
    begin
      if (cds_ccusto.Locate('NOME', cbCCusto.Text, [loCaseInsensitive])) then
        sqla := sqla + ' AND CODALMOXARIFADO = ' + IntToStr(cds_ccustoCODIGO.AsInteger);
    end
    else
      if (cds_ccusto.Locate('NOME', cbCCusto.Text, [loCaseInsensitive])) then
        sqla := ' WHERE CODALMOXARIFADO = ' + IntToStr(cds_ccustoCODIGO.AsInteger);
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
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

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
      if ((Dta.Text <> '  /  /    ') and  (edLista.Text <> '')) then
      begin
        if MessageDlg('Não existe esta Lista, criar uma ?',mtConfirmation,
                    [mbYes,mbNo],0) = mrYes then
        begin
          cdsInvent.Append;
          cdsInventCODIVENTARIO.AsString := edLista.text;
          btnGravar.Enabled := True;          
        end;
      end;
    end
    else
      btnGravar.Enabled := True;
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

    btnGravar.Enabled := False;

    if (cdsListaInventario.IsEmpty) then
    begin
      if MessageDlg('Não existe esta Lista, criar uma ?',mtConfirmation,
                  [mbYes,mbNo],0) = mrYes then
      begin
        cdsInvent.Append;
        cdsInventCODIVENTARIO.AsString := edLista.text;
        btnGravar.Enabled := True;
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
        sql := 'INSERT INTO INVENTARIO (CODIVENTARIO, DATAIVENTARIO, CODPRODUTO,' +
        ' CODPRO, SITUACAO, UN, CODCCUSTO) VALUES ('  +
      QuotedStr(edLista.text) + ' , ' + QuotedStr(formatdatetime('mm/dd/yyyy', Now)) +
      ', ' + IntToStr(cdsProd.Fields[1].AsInteger) + ', ' +
      QuotedStr(cdsProd.Fields[0].AsString) + ', ' +QuotedStr('A') + ', ' +
      QuotedStr(cdsProdUNIDADEMEDIDA.AsString);
      if (cbCCusto1.ItemIndex > -1) then
      begin
        if (cds_ccusto.Locate('NOME', cbCCusto.Text, [loCaseInsensitive])) then
          sql := sql + ', ' + IntToStr(cds_ccustoCODIGO.AsInteger);
      end;
      sql := sql + ')';
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
      QuotedStr(edLista.Text) + ' AND SITUACAO = ' + QuotedStr('A'));
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
  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    //dm.sqlsisAdimin.ExecuteDirect('EXECUTE PROCEDURE INVENTARIO_LANCA(' + QuotedStr(edLista.Text) + ')');
    sProc.Params[0].AsString := edLista.Text;
    sProc.ExecProc;
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Alterações executadas com sucesso!', mtInformation, [mbOK], 0);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para Gerar o Inventário', mtError, [mbOK], 0);
    Exit;
  end;
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
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM INVENTARIO WHERE CODIVENTARIO = ' +
      QuotedStr(edLista.Text) + ' and CODPRODUTO = ' + IntToStr(cdsInventCODPRODUTO.AsInteger) +
      ' AND SITUACAO = ' + QuotedStr('A'));
      cdsInvent.Close;
      cdsInvent.Open;      
  end;
end;

procedure TfInventario.FormCreate(Sender: TObject);
var contaCCusto: String;
begin
  //inherited;
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;
  {------Pesquisando na tab Parametro se usa centro de Receita ---------}
  if dm.cds_parametroCONFIGURADO.AsString = 'S' then
  begin
    contaCCusto := dm.cds_parametroDADOS.AsString;
  end;

  if (cds_ccusto.Active) then
    cds_ccusto.Close;
  cds_ccusto.Params[0].AsString := contaCCusto;
  cds_ccusto.Open;
  cds_ccusto.First;
  while not cds_ccusto.Eof do
  begin
    cbCCusto.Items.Add(cds_ccustoNOME.AsString);
    cbCCusto1.Items.Add(cds_ccustoNOME.AsString);
    cds_ccusto.Next;
  end;
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
var str, credec: string;
begin
 // inherited;
    credec := Copy(cdsInvent.IndexName, 0, 3);
    str := cdsInvent.CommandText;
    if( credec = 'asc') then
      str := str  + ' order by ' + Copy(cdsInvent.IndexName, 5, 20)
    else if( credec = 'des') then
      str := str + ' order by ' + Copy(cdsInvent.IndexName, 6, 20) + ' desc';
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
  edLista.Text := cdsListaInventarioCODIVENTARIO.AsString;
  Dta.Text := DateToStr(cdsListaInventarioDATAIVENTARIO.AsDateTime);
  btnGravar.Enabled := True;  
end;

procedure TfInventario.dsInventStateChange(Sender: TObject);
begin
  inherited;
  {if (cdsInvent.State in [dsInsert, dsEdit]) then
  begin
    cdsInvent.ApplyUpdates(0);
  end;}
end;

procedure TfInventario.JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
var Sql1: String;
begin
  inherited;
  if (key = #13) then
  begin
    //cdsInvent.ApplyUpdates(0);
    Try
      DecimalSeparator := '.';
      dm.sqlsisAdimin.StartTransaction(TD);
      Sql1 := 'UPDATE INVENTARIO SET QTDE_INVENTARIO = ' +
        FloatToStr(cdsInventQTDE_INVENTARIO.AsFloat) + ' WHERE CODIVENTARIO = ' +
        QuotedStr(cdsInventCODIVENTARIO.AsString) +
        ' AND CODPRODUTO = ' + IntToStr(cdsInventCODPRODUTO.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(sql1);
      DecimalSeparator := ',';
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro ao Gravar o Inventário', mtError, [mbOK], 0);
      Exit;
    end;
    if (not cdsInvent.Eof) then
      cdsInvent.Next;
  end;
end;

procedure TfInventario.btnGravarClick(Sender: TObject);
var Sql1: String;
begin
  if (cdsInvent.State in [dsInsert, dsEdit]) then
  begin
    cdsInvent.ApplyUpdates(0);
  end;
  cdsInvent.First;
  while not cdsInvent.Eof do
  begin
    Try
      DecimalSeparator := '.';
      dm.sqlsisAdimin.StartTransaction(TD);
      Sql1 := 'UPDATE INVENTARIO SET QTDE_INVENTARIO = ' +
        FloatToStr(cdsInventQTDE_INVENTARIO.AsFloat) + ' WHERE CODIVENTARIO = ' +
        QuotedStr(cdsInventCODIVENTARIO.AsString) +
        ' AND CODPRODUTO = ' + IntToStr(cdsInventCODPRODUTO.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(sql1);
      DecimalSeparator := ',';
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro ao Gravar o Inventário', mtError, [mbOK], 0);
      Exit;
    end;
    cdsInvent.Next;
  end;
end;

procedure TfInventario.cbCCustoChange(Sender: TObject);
begin
  inherited;
  if (cbCCusto.ItemIndex > -1) then
  begin
    cbCCusto1.ItemIndex := cbCCusto.ItemIndex;
  end;
end;

end.
