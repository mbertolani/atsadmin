unit uBancoExtrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, DBCtrls, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, ImgList, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, uUtils, uPagarCls;

type
  TfBancoExtrato = class(TfPai_new)
    Label4: TLabel;
    ds_conta: TDataSource;
    JvDBUltimGrid1: TJvDBUltimGrid;
    sdsExtrato: TSQLDataSet;
    dspExtrato: TDataSetProvider;
    cdsExtrato: TClientDataSet;
    cdsExtratoEXTRATODATA: TDateField;
    cdsExtratoCAIXA: TIntegerField;
    cdsExtratoEXTRATODOC: TStringField;
    cdsExtratoEXTRATOTIPO: TStringField;
    cdsExtratoEXTRATOVALOR: TFloatField;
    cdsExtratoEXTRATOCOD: TStringField;
    cdsExtratoSEL: TStringField;
    cdsExtratoCONCILIADO: TStringField;
    ImageList1: TImageList;
    grid2: TJvDBUltimGrid;
    sdsLanc: TSQLDataSet;
    dspLanc: TDataSetProvider;
    cdsLanc: TClientDataSet;
    dsLanc: TDataSource;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label7: TLabel;
    cbMes: TComboBox;
    MaskEdit1: TJvDatePickerEdit;
    MaskEdit2: TJvDatePickerEdit;
    cdsLancDTAPAGTO: TDateField;
    cdsLancORDEM: TIntegerField;
    cdsLancDESCRICAO: TStringField;
    cdsLancVALORC: TFloatField;
    cdsLancVALORD: TFloatField;
    cdsLancVALOR: TFloatField;
    cdsLancCONTACONTABIL: TStringField;
    cdsLancCAIXA: TStringField;
    cdsLancCODCONTA: TStringField;
    cdsLancFORMA: TStringField;
    cdsLancN_DOC: TStringField;
    cdsLancORDENA: TIntegerField;
    cdsLancCOMPENSADO: TStringField;
    cbConta: TComboBox;
    cdsExtratoCONTA: TIntegerField;
    sdsExtratoEXTRATOCOD: TStringField;
    sdsExtratoEXTRATODATA: TDateField;
    sdsExtratoCAIXA: TIntegerField;
    sdsExtratoEXTRATODOC: TStringField;
    sdsExtratoEXTRATOTIPO: TStringField;
    sdsExtratoEXTRATOVALOR: TFloatField;
    sdsExtratoSEL: TStringField;
    sdsExtratoCONCILIADO: TStringField;
    sdsExtratoCONTA: TIntegerField;
    sqlFornecedor: TSQLQuery;
    Label1: TLabel;
    ComboBox1: TComboBox;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbContaClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure JvDBUltimGrid1CellClick(Column: TColumn);
    procedure JvDBUltimGrid1ColEnter(Sender: TObject);
    procedure JvDBUltimGrid1ColExit(Sender: TObject);
    procedure JvDBUltimGrid1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cbMesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbContaChange(Sender: TObject);
  private
    contaCaixa : Integer;
    contaLanc  : String;
    util: TUtils;
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
    procedure abrirExtrato;
    procedure abrirCaixa;
    procedure LancamentoNaoLancadoComConta;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBancoExtrato: TfBancoExtrato;

implementation

uses uBancoOFX, UDm, uBancoDePara;

{$R *.dfm}

procedure TfBancoExtrato.btnProcurarClick(Sender: TObject);
var
  BancoOFX1: TBancoOFX;
  i:integer;
begin
  if (not cdsExtrato.Active) then
    cdsExtrato.Open;
  if (cdsExtrato.IsEmpty) then
  begin
    BancoOFX1 := TBancoOFX.create(self);
    BancoOFX1.OFXFile := 'C:\Home\2012_02.ofx';
    BancoOFX1.Process;
    //ListBox1.Clear;
    for i := 0 to BancoOFX1.Count-1 do
    begin
      if (cdsExtrato.State in [dsBrowse]) then
        cdsExtrato.Append;
      cdsExtratoEXTRATOCOD.AsString    := BancoOFX1.Get(i).ID;
      cdsExtratoEXTRATODATA.AsDateTime := BancoOFX1.Get(i).MovDate;
      cdsExtratoCAIXA.AsInteger        := contaCaixa;
      cdsExtratoEXTRATODOC.AsString    := BancoOFX1.Get(i).Desc; // + ' - ' + BancoOFX1.Get(i).Document;
      cdsExtratoEXTRATOTIPO.AsString   := BancoOFX1.Get(i).MovType;
      cdsExtratoEXTRATOVALOR.AsFloat   := BancoOFX1.Get(i).Value;
      cdsExtrato.ApplyUpdates(0);

      {ListBox1.Items.Add(BancoOFX1.Get(i).Desc + ' ' +
                         FloatToStr(BancoOFX1.Get(i).Value) + ' ' +
                         BancoOFX1.Get(i).MovType + ' ' +
                         dateToStr(BancoOFX1.Get(i).MovDate) + ' ' +
                         BancoOFX1.Get(i).ID + ' ' +
                         BancoOFX1.Get(i).Document + ' '  );}
    end;
  end;
  abrirCaixa;
end;

procedure TfBancoExtrato.FormCreate(Sender: TObject);
begin
  //inherited;
  util := TUtils.Create;
end;

procedure TfBancoExtrato.FormShow(Sender: TObject);
var conta_local : String;
begin
   // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if not dm.cds_7_contas.Active then
  begin
    dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
    dm.cds_7_contas.Open;
  end;
  cbConta.Items.Clear;
  dm.cds_7_contas.First;
  while (not dm.cds_7_contas.Eof) do
  begin
    cbConta.Items.Add(dm.cds_7_contasNOME.AsString);
    dm.cds_7_contas.Next;
  end;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;
  conta_local := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := conta_local;
  dm.cds_ccusto.Open;
  ComboBox1.Items.Add('TODOS');
  While not dm.cds_ccusto.Eof do
  begin
    ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
    dm.cds_ccusto.Next;
  end;
  dm.cds_parametro.Close;


  dm.cds_parametro.Close;
  abrirExtrato;
end;

procedure TfBancoExtrato.cbContaClick(Sender: TObject);
begin
  //inherited;

end;

procedure TfBancoExtrato.btnIncluirClick(Sender: TObject);
begin
  //inherited;
  abrirExtrato;
  LancamentoNaoLancadoComConta;
end;

procedure TfBancoExtrato.btnExcluirClick(Sender: TObject);
begin
  //inherited;
  fBancoDePara.caixa := dm.cds_7_contasCODIGO.AsInteger;
  fBancoDePara.ShowModal;
end;

procedure TfBancoExtrato.JvDBUltimGrid1CellClick(Column: TColumn);
begin
  ChkDBGridCellClick(Column);
end;

procedure TfBancoExtrato.JvDBUltimGrid1ColEnter(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfBancoExtrato.JvDBUltimGrid1ColExit(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfBancoExtrato.JvDBUltimGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//***************************************************
// destacando Campos
//***************************************************
  if (Column.Field = cdsExtratoCONCILIADO)  then
  begin
    if ((cdsExtratoCONCILIADO.IsNull) or (cdsExtratoCONCILIADO.AsString = 'N')) then
    begin
      //JvDBUltimGrid1.Canvas.Font.Color:= clRed;
      JvDBUltimGrid1.Columns[1].Color := clRed;
      JvDBUltimGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    end
    else if (cdsExtratoCONCILIADO.AsString = 'S') then
    begin
      //JvDBUltimGrid1.Canvas.Font.Color := clBlue;
      JvDBUltimGrid1.Columns[1].Color := clBlue;
      JvDBUltimGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    end;
    ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect,
      DataCol, Column, State);
  end;
end;

procedure TfBancoExtrato.ChkDBGridCellClick(Column: TColumn);
var
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'cdsExtratoSEL')
      and Field.CanModify and not Column.ReadOnly then
  with Field.Dataset do
  begin
    if State = dsBrowse then
      Edit;
    if (cdsExtratoSEL.AsString <> 'S') then
    begin
      //dbGrid1.SelectedRows.CurrentRowSelected := True;
      //dbgrid1.Refresh;
      cdsExtratoSEL.AsString := 'S';
      cdsExtrato.Post;
    end
    else begin
      cdsExtratoSEL.AsString := 'N';
    end;
  end;
end;

procedure TfBancoExtrato.ChkDBGridColEnter(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'cdsExtratoSEL') then
    DBGrid.Options := DBGrid.Options - [dgEditing];
end;

procedure TfBancoExtrato.ChkDBGridColExit(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'cdsExtratoSEL') then
    DBGrid.Options := DBGrid.Options + [dgEditing];
end;

procedure TfBancoExtrato.ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  X, Y, Index: integer;
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'cdsExtratoSEL') then
  begin
    // Fill the cell with the background color
    DBGrid.Canvas.FillRect(Rect);
    // Determine the position of the graphic inside the cell
    case Column.Alignment of
      taRightJustify:
        X := Rect.Right - 2 - 16;
      taCenter:
        X := (Rect.Right - Rect.Left - 16) div 2 + Rect.Left;
      else // taLeftJustify:
        X := Rect.Left + 2;
    end;
    Y := (Rect.Bottom - Rect.Top - 16) div 2 + Rect.Top;
    // Determine the image to be used
    // if Field.AsBoolean then Index := 1 else Index := 0;
    if cdsExtratoSEL.AsString <> 'S' then Index := 1 else Index := 0;
    // Draw the graphic
    ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
  end else // Default drawing
    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TfBancoExtrato.ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'cdsExtratoSEL') then
    if (Key = ' ') and Field.CanModify and
        not DBGrid.Columns[DBGrid.SelectedIndex].ReadOnly then
      with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
        //Field.AsBoolean := not Field.AsBoolean;
      if (cdsExtratoSEL.AsString <> 'S') then
      begin
        cdsExtratoSEL.AsString := 'S';
        cdsExtrato.Post;
      end
      else begin
        cdsExtratoSEL.AsString := '';
      end;
  end;

end;

procedure TfBancoExtrato.cbMesChange(Sender: TObject);
begin
  //inherited;
  util.criaIni(cbMes.text);
  util.criaFim(cbMes.text);
  MaskEdit1.Text := util.PeriodoIni;
  MaskEdit2.Text := util.PeriodoFim;
end;

procedure TfBancoExtrato.abrirExtrato;
begin
  if (cdsExtrato.Active) then
    cdsExtrato.Close;
  cdsExtrato.Params.ParamByName('CAIXA').Clear;
  cdsExtrato.Params.ParamByName('CAIXA').AsInteger := contaCaixa;
  cdsExtrato.Params.ParamByName('DTA1').AsDate     := MaskEdit1.Date;
  cdsExtrato.Params.ParamByName('DTA2').AsDate     := MaskEdit2.Date;
  cdsExtrato.Open;
end;

procedure TfBancoExtrato.FormDestroy(Sender: TObject);
begin
  inherited;
  util.Destroy;
end;

procedure TfBancoExtrato.cbContaChange(Sender: TObject);
begin
  inherited;
  dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive]);
  contaCaixa := dm.cds_7_contasCODIGO.AsInteger;
  contaLanc  := dm.cds_7_contasCONTA.AsString;
end;

procedure TfBancoExtrato.abrirCaixa;
begin
  if (cdsLanc.Active) then
    cdsLanc.Close;
  cdsLanc.Params.ParamByName('CAIXA').AsInteger := contaCaixa;
  cdsLanc.Params.ParamByName('DTA1').AsDate     := MaskEdit1.Date;
  cdsLanc.Params.ParamByName('DTA2').AsDate     := MaskEdit2.Date;
  cdsLanc.Open;
end;

procedure TfBancoExtrato.LancamentoNaoLancadoComConta;
var despesa: TPagarCls;
   codFornec, cCusto : Integer;
   multiplicador : Double;
begin
  if (cbConta.ItemIndex = -1) then
  begin
    MessageDlg('Escolha o caixa a ser lançado.', mtWarning, [mbOK], 0);
    Exit;
  end;

  if (sqlFornecedor.Active) then
    sqlFornecedor.Close;
  sqlFornecedor.ParamByName('CONTA').AsString := contaLanc;
  sqlFornecedor.Open;
  if (sqlFornecedor.IsEmpty) then
  begin
    MessageDlg('Não existe nenhum fornecedor cadastrado com esta conta de Caixa.', mtWarning, [mbOK], 0);
    Exit;
  end;
  codFornec := sqlFornecedor.Fields[0].AsInteger;

  //------------------------------------------------------------------------------
  //Centro de Custo
  //------------------------------------------------------------------------------
  if (ComboBox1.Text = '') then
  begin
    MessageDlg('Informe o Centro de Custo.', mtWarning, [mbOK], 0);
    Exit;
  end;
  dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive]);
  cCusto := dm.cds_ccustoCODIGO.AsInteger;
  Try
    despesa := TPagarCls.Create;

    cdsExtrato.DisableControls;
    cdsExtrato.First;

    multiplicador := 1;

    While not cdsExtrato.Eof do
    begin
      if (cdsExtratoCONTA.AsInteger > 0) then
      begin
        despesa.CodFornecedor := codFornec;
        despesa.CodCCusto     := cCusto;
        despesa.CodUsuario    := dm.varUSERID;
        despesa.Caixa         := contaCaixa;
        despesa.NParcela      := 1;
        despesa.Via           := 1;
        despesa.DtEmissao     := cdsExtratoEXTRATODATA.AsDateTime;
        despesa.DtVcto        := cdsExtratoEXTRATODATA.AsDateTime;
        despesa.dtPag         := cdsExtratoEXTRATODATA.AsDateTime;
        despesa.DtBaixa       := cdsExtratoEXTRATODATA.AsDateTime;
        despesa.DtConsolida   := cdsExtratoEXTRATODATA.AsDateTime;

        if (cdsExtratoEXTRATOVALOR.AsFloat < 0) then
          multiplicador := -1;

        despesa.Valor         := cdsExtratoEXTRATOVALOR.AsFloat * multiplicador;
        despesa.valorPag      := cdsExtratoEXTRATOVALOR.AsFloat * multiplicador;
        despesa.Status        := '5-';
        despesa.Titulo        := cdsExtratoEXTRATOCOD.AsString;
        despesa.ContaCredito  := cdsExtratoCONTA.AsInteger;

        despesa.geraTitulo(0, 0);
        despesa.baixaTitulo(despesa.Valor, 0, 0, 0, 0, cdsExtratoEXTRATODATA.AsDateTime,
        cdsExtratoEXTRATODATA.AsDateTime, cdsExtratoEXTRATODATA.AsDateTime,
        '1', cdsExtratoEXTRATOCOD.AsString, contaCaixa, codFornec,
        '5-', fAtsAdmin.UserControlComercial.CurrentUser.UserID);

      end;
      cdsExtrato.Next;
    end;
  Finally
    cdsExtrato.EnableControls;
    despesa.Free;
  end;
end;

end.
