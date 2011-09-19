unit uOsInsere;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  JvExStdCtrls, JvMemo, Menus, XPMenu, DB, Buttons, ExtCtrls, MMJPanel;

type
  TfOsInsere = class(TfPai_new)
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    edServico: TJvMemo;
    edQtdeServ: TJvCalcEdit;
    edPrecoServ: TJvCalcEdit;
    edDescServ: TJvCalcEdit;
    edDescVlrServ: TJvCalcEdit;
    edTotalServ: TJvCalcEdit;
    edColaborador: TEdit;
    edProduto: TEdit;
    BitBtn3: TBitBtn;
    edProdDescr: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    lblServico: TLabel;
    edCodUsuario: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure edCodUsuarioExit(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure edDescServExit(Sender: TObject);
    procedure edDescVlrServExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtSrcStateChange(Sender: TObject);
  private
    codProduto: Integer;

    { Private declarations }
  public
    modoOsInsere : String;
    { Public declarations }
  end;

var
  fOsInsere: TfOsInsere;

implementation

uses uOs, uProcurar, UDm, uProcura_prodOficina, sCtrlResize;

{$R *.dfm}

procedure TfOsInsere.BitBtn1Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.usuarioproc := 'VENDEDOR';
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
  try
   if fProcurar.ShowModal=mrOk then
    begin
      if (modoOsInsere = 'SERVICO') then
      begin
        if (fOs.dtSrc.State = dsBrowse) then
          fOs.cdsServico.Edit;
        fOs.cdsServicoCODUSUARIO.AsInteger := dm.scds_usuario_ProcCODusuario.AsInteger;
        fOs.cdsServicoNOMEUSUARIO.AsString := dm.scds_usuario_procNOMEUSUARIO.AsString;
        edColaborador.Text := dm.scds_usuario_procNOMEUSUARIO.AsString;
        edCodUsuario.Text  := IntToStr(dm.scds_usuario_procCODUSUARIO.AsInteger);
      end;
      if (modoOsInsere = 'PECA') then
      begin
        if (fOs.dsPecas.State = dsBrowse) then
          fOs.cdsPecas.Edit;
        fOs.cdsServicoCODUSUARIO.AsInteger := dm.scds_usuario_ProcCODusuario.AsInteger;
        fOs.cdsServicoNOMEUSUARIO.AsString := dm.scds_usuario_procNOMEUSUARIO.AsString;
        edColaborador.Text := dm.scds_usuario_procNOMEUSUARIO.AsString;
        edCodUsuario.Text  := IntToStr(dm.scds_usuario_procCODUSUARIO.AsInteger);
      end;
    end;
   finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
   end;

end;

procedure TfOsInsere.BitBtn3Click(Sender: TObject);
begin
  //fProcura_prodOficina.btnIncluir.Visible := true;
  if (procprod <> 'PROC_PROD_COMPLETO') then
  begin
    fProcura_prodOficina.Panel1.Visible := false;
    fProcura_prodOficina.Panel2.Visible := true;
  end
  else begin
    fProcura_prodOficina.Panel2.Visible := false;
    fProcura_prodOficina.Panel1.Visible := true;
    if (fProcura_prodOficina.cds_proc.Active) then
      fProcura_prodOficina.cds_proc.Close;
  end;
  varonde := 'compra';
  var_F := 'venda';

  fProcura_prodOficina.ShowModal;
  if (procprod = 'PROC_PROD_COMPLETO') then
  begin
    {if (cdsPecas.State in [dsInsert, dsEdit]) then
    begin
      cdsPecasCODPRO.AsString := fProcura_prodOficina.cds_procCODPRO.AsString;
      cdsPecasCODPRODUTO.asInteger := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
      cdsPecasDESCRICAO_SERV.asString := fProcura_prodOficina.cds_procPRODUTO.AsString;
      cdsPecasPRECO.AsFloat := fProcura_prodOficina.cds_procPRECO_VENDA.AsFloat;
      if ( fProcura_prodOficina.cds_procQTDE_PCT.AsFloat < 1) then
        cdsPecasQTDE.AsFloat := 1
      else
        cdsPecasQTDE.AsFloat := fProcura_prodOficina.cds_procQTDE_PCT.AsFloat; }
      {qtde         := fProcura_prodOficina.cds_procPESO_QTDE.AsFloat;
      estoque      := fProcura_prodOficina.cds_procESTOQUEATUAL.AsFloat;
      codProduto   := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger; }
    //end;
  end;
  edProduto.Text    := fProcura_prodOficina.cds_procCODPRO.AsString;
  edProdDescr.Text  := fProcura_prodOficina.cds_procPRODUTO.AsString;
  edPrecoServ.Value := fProcura_prodOficina.cds_procPRECO_VENDA.AsFloat;
  codProduto        := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
  if (modoOsInsere = 'SERVICO') then
  begin
    if (fOs.dtSrc.State = dsBrowse) then
      fOs.cdsServico.Edit;
    fOs.cdsServicoCODPRODUTO.AsInteger := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
    fOs.cdsServicoQTDE.AsFloat         := 1;
    fOs.cdsServicoPRECO.AsFloat        := fProcura_prodOficina.cds_procPRECO_VENDA.AsFloat;
  end;
  if (modoOsInsere = 'PECA') then
  begin
    if (fOs.dtSrc.State = dsBrowse) then
      fOs.cdsServico.Edit;
    fOs.cdsServicoCODPRODUTO.AsInteger := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
    fOs.cdsServicoQTDE.AsFloat         := 1;
    fOs.cdsServicoPRECO.AsFloat        := fProcura_prodOficina.cds_procPRECO_VENDA.AsFloat;
  end;
end;

procedure TfOsInsere.edCodUsuarioExit(Sender: TObject);
begin
   if(edCodUsuario.Text <> '') then
   begin
     if dm.scds_usuario_proc.Active then
       dm.scds_usuario_proc.Close;
     dm.scds_usuario_proc.Params[0].Clear;
     dm.scds_usuario_proc.Params[1].AsInteger := StrToInt(edCodUsuario.Text);
     dm.scds_usuario_proc.Open;
     if dm.scds_usuario_proc.IsEmpty then
     begin
       MessageDlg('Código não cadastrado.', mtWarning,
       [mbOk], 0);
       exit;
     end;
     edColaborador.Text := dm.scds_usuario_procNOMEUSUARIO.AsString;
   end;
end;

procedure TfOsInsere.edProdutoExit(Sender: TObject);
begin
  if (modoOsInsere = 'SERVICO') then
  begin
    if (edProduto.Text = '') then exit;

    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].AsInteger := 0;
    dm.scds_produto_proc.Params[1].AsString := edProduto.Text;
    dm.scds_produto_proc.Open;
    if (dm.scds_produto_proc.IsEmpty) then
    begin
      MessageDlg('Código não cadastrado.', mtWarning,
      [mbOk], 0);
      exit;
    end;

    edProduto.Text    := dm.scds_produto_procCODPRO.AsString;
    edProdDescr.Text  := dm.scds_produto_procPRODUTO.AsString;
    edPrecoServ.Value := dm.scds_produto_procVALOR_PRAZO.AsFloat;
    codProduto        := dm.scds_produto_procCODPRODUTO.AsInteger;
    if (modoOsInsere = 'SERVICO') then
    begin
      if (fOs.dtSrc.State = dsBrowse) then
        fOs.cdsServico.Edit;
      fOs.cdsServicoCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      fOs.cdsServicoQTDE.AsFloat         := 1;
      fOs.cdsServicoPRECO.AsFloat        := dm.scds_produto_procVALOR_PRAZO.AsFloat;
    end;
    if (modoOsInsere = 'PECA') then
    begin
      if (fOs.dtSrc.State = dsBrowse) then
        fOs.cdsServico.Edit;
      fOs.cdsServicoCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      fOs.cdsServicoQTDE.AsFloat         := 1;
      fOs.cdsServicoPRECO.AsFloat        := dm.scds_produto_procVALOR_PRAZO.AsFloat;
    end;
  end;
end;

procedure TfOsInsere.FormShow(Sender: TObject);
begin
  //inherited;
  if (modoOsInsere = 'SERVICO') then
  begin
    DtSrc.DataSet := fOs.cdsServico;
  end;
  if (modoOsInsere = 'PECA') then
  begin
    DtSrc.DataSet := fOs.cdsPecas;
  end;
end;

procedure TfOsInsere.FormCreate(Sender: TObject);
begin
  //inherited;
  sCtrlResize.CtrlResize(TForm(fOs));
end;

procedure TfOsInsere.btnIncluirClick(Sender: TObject);
begin
  inherited;

  fOs.numOsDet := fOs.numOsDet + 1;

  if (modoOsInsere = 'SERVICO') then
  begin
    fOs.cdsServico.Append;
    fOs.cdsServicoID_OS_DET.AsInteger := fOs.numOsDet;
  end;
  if (modoOsInsere = 'PECA') then
  begin
    fOs.cdsPecas.Append;
    fOs.cdsPecasID_OS_DET.AsInteger := fOs.numOsDet;
  end;
  edCodUsuario.SetFocus;
end;

procedure TfOsInsere.edDescServExit(Sender: TObject);
begin
  if (edDescServ.Value > 0) then
  begin
    edDescVlrServ.Value := edPrecoServ.Value * (edDescServ.Value / 100);
    edTotalServ.Value   := (edPrecoServ.Value * edQtdeServ.Value) - edDescVlrServ.Value;
  end;
end;

procedure TfOsInsere.edDescVlrServExit(Sender: TObject);
begin
  if ((edDescVlrServ.Value > 0) and (edDescServ.Value = 0) and (edPrecoServ.Value > 0)) then
  begin
    edDescServ.Value  := (edDescVlrServ.Value / edPrecoServ.Value) * 100;
    edTotalServ.Value := (edPrecoServ.Value * edQtdeServ.Value) - edDescVlrServ.Value;
  end;

end;

procedure TfOsInsere.btnGravarClick(Sender: TObject);
var str: string;
  I : Integer;
begin
  if (modoOsInsere = 'SERVICO') then
  begin
    fOs.cdsServicoSTATUS.AsString := 'O';
    fOs.cdsServicoCODUSUARIO.AsInteger := 1;
    fOs.cdsServicoNOMEUSUARIO.AsString := 'Usuario';
    str := '';
    for I := 0 to edServico.Lines.Count -1 do
      str := str + edServico.Lines[I] + #13#10;
    fOs.cdsServicoDESCRICAO_SERV.AsString := str;
    fOs.cdsServicoCODPRO.AsString         := edProduto.Text;
    fOs.cdsServicoCODPRODUTO.asInteger    := codProduto;
    fOs.cdsServicoQTDE.AsFloat            := edQtdeServ.Value;
    fOs.cdsServicoPRECO.AsFloat           := edPrecoServ.Value;
    fOs.cdsServicoDESCONTO.AsFloat        := edDescVlrServ.Value;
    fOs.cdsServicoVALORTOTAL.AsFloat      := edQtdeServ.Value * edPrecoServ.Value;
    fOs.cdsServico.Post;
  end;

  if (modoOsInsere = 'PECA') then
  begin
    str := '';
    for I := 0 to edServico.Lines.Count -1 do
      str := str + edServico.Lines[I] + #13#10;
    fOs.cdsServicoDESCRICAO_SERV.AsString := str;
    fOs.cdsPecasCODPRO.AsString         := edProduto.Text;
    fOs.cdsPecasCODPRODUTO.asInteger    := codProduto;
    fOs.cdsPecasSTATUS.AsString         := 'O';
    fOs.cdsPecasTIPO.AsString           := 'P';
    fOs.cdsPecasQTDE.AsFloat            := edQtdeServ.Value;
    fOs.cdsPecasPRECO.AsFloat           := edPrecoServ.Value;
    fOs.cdsPecasDESCONTO.AsFloat        := edDescVlrServ.Value;
    //cdsPecasDESCPERCENT.AsFloat     := edDesc.Value;
    fOs.cdsPecasCODPRODUTO.AsInteger    := codProduto;
    fOs.cdsPecas.Post;
  end;
  edServico.Lines.Clear;
  edProduto.Text        := '';
  edQtdeServ.Value      := 0;
  edPrecoServ.Value     := 0;
  edDescVlrServ.Value   := 0;
  edTotalServ.Value     := 0;
end;

procedure TfOsInsere.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //inherited;

end;

procedure TfOsInsere.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  edCodUsuario.Enabled := DtSrc.State in [dsEdit, dsInsert];
  edProduto.Enabled    := DtSrc.State in [dsEdit, dsInsert];
  edServico.Enabled    := DtSrc.State in [dsEdit, dsInsert];
  edQtdeServ.Enabled   := DtSrc.State in [dsEdit, dsInsert];
  edPrecoServ.Enabled  := DtSrc.State in [dsEdit, dsInsert];
  edDescServ.Enabled   := DtSrc.State in [dsEdit, dsInsert];
  edDescVlrServ.Enabled := DtSrc.State in [dsEdit, dsInsert];
end;

end.
