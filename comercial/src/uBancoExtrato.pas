unit uBancoExtrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, DBCtrls, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, ImgList, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, uUtils;

type
  TfBancoExtrato = class(TfPai_new)
    Label4: TLabel;
    cbConta: TDBLookupComboBox;
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
    procedure cdsExtratoAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
  private
    util: TUtils;
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
    procedure abrirExtrato;
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
      cdsExtratoCAIXA.AsInteger        := dm.cds_7_contasCODIGO.AsInteger;
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
end;

procedure TfBancoExtrato.FormCreate(Sender: TObject);
begin
  //inherited;
  util := TUtils.Create;
end;

procedure TfBancoExtrato.FormShow(Sender: TObject);
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

procedure TfBancoExtrato.cdsExtratoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if (cdsLanc.Active) then
    cdsLanc.Close;
  cdsLanc.Params.ParamByName('CAIXA').AsInteger := dm.cds_7_contasCODIGO.AsInteger;
  cdsLanc.Params.ParamByName('DTA1').AsDate     := MaskEdit1.Date;
  cdsLanc.Params.ParamByName('DTA2').AsDate     := MaskEdit2.Date;
end;

procedure TfBancoExtrato.abrirExtrato;
begin
  if (cdsExtrato.Active) then
    cdsExtrato.Close;
  cdsExtrato.Params.ParamByName('CAIXA').Clear;
  cdsExtrato.Params.ParamByName('CAIXA').AsInteger := dm.cds_7_contasCODIGO.AsInteger;
  cdsExtrato.Params.ParamByName('DTA1').AsDate     := MaskEdit1.Date;
  cdsExtrato.Params.ParamByName('DTA2').AsDate     := MaskEdit2.Date;
  cdsExtrato.Open;
end;

procedure TfBancoExtrato.FormDestroy(Sender: TObject);
begin
  inherited;
  util.Destroy;
end;

end.
