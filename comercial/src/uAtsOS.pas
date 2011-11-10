unit uAtsOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvComponentBase, JvNavigationPane, JvExControls, JvOutlookBar,
  JvMenus, ImgList, Menus,  JvGIF, WinInet, JvLinkLabel, jpeg, ExtCtrls,
  JvExExtCtrls, JvImage, ComCtrls, MMJPanel, UCHist_Base, UCBase,
  rpcompobase, rpvclreport, DBXPress, ActnList, RXCtrls;

type
  TfAtsOS = class(TForm)
    JvNavPaneStyleManager1: TJvNavPaneStyleManager;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    MMJPanel1: TMMJPanel;
    Timer1: TTimer;
    VCLReport1: TVCLReport;
    Image1: TImage;
    ImageList2: TImageList;
    JvOutlookBar1: TJvOutlookBar;
    RxLabel1: TRxLabel;
    procedure FormCreate(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons0Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure Timer1Timer(Sender: TObject);
    procedure JvOutlookBar1Pages1Buttons0Click(Sender: TObject);
    procedure JvOutlookBar1Pages1Buttons1Click(Sender: TObject);
    procedure JvOutlookBar1Pages1Buttons2Click(Sender: TObject);
    procedure JvOutlookBar1Pages2Buttons2Click(Sender: TObject);
    procedure JvOutlookBar1Pages2Buttons1Click(Sender: TObject);
    procedure JvOutlookBar1Pages2Buttons0Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons4Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons2Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons3Click(Sender: TObject);
    procedure JvOutlookBar1Pages5Buttons4Click(Sender: TObject);
    procedure JvOutlookBar1Pages5Buttons0Click(Sender: TObject);
    procedure JvOutlookBar1Pages5Buttons3Click(Sender: TObject);
    procedure JvOutlookBar1Pages5Buttons2Click(Sender: TObject);
    procedure JvOutlookBar1Pages5Buttons1Click(Sender: TObject);
  private
    Saudacao : string;
    TD: TTransactionDesc;
    { Private declarations }
  public
    procedure DoCustomDraw(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
    AStage: TJvOutlookBarCustomDrawStage; AIndex:integer; ADown, AInside: boolean;
    var DefaultDraw:boolean);
    function GetVersion: string;
    Function NomeComputador: string;
    { Public declarations }
  end;

var
  fAtsOS: TfAtsOS;

implementation

uses
  JvJVCLUtils, uEmpresa, UDm, uAgendamento, uselectempresa, sCtrlResize,
  uClienteCadastro, uOs, uOsFiltro, uCompra, uVendas, ufcr, ufcpproc,
  uCrTituloPagto, uAtsAdmin, uProdutoCadastro, uFornecedorCadastro,
  ufuncionario, uPainelControle, uSobre, ufParametro, U_Terminal, UDM_MOV,
  uCliente1;

{$R *.dfm}

{ TForm2 }

procedure TfAtsOS.DoCustomDraw(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; AStage: TJvOutlookBarCustomDrawStage; AIndex: integer;
  ADown, AInside: boolean; var DefaultDraw: boolean);
begin
  DefaultDraw := False;
  case AStage of
  odsBackground:
     with JvNavPaneStyleManager1.Colors do
       GradientFillRect(ACanvas, ARect, HeaderColorFrom, HeaderColorTo, fdTopToBottom, 255);
  odsPage:
     with JvNavPaneStyleManager1.Colors do
       GradientFillRect(ACanvas,ARect, ButtonColorFrom, ButtonColorTo, fdTopToBottom, 255);
  odsPageButton:
  begin
     with JvNavPaneStyleManager1.Colors do
       GradientFillRect(ACanvas,ARect, HeaderColorFrom, HeaderColorTo, fdTopToBottom, 255);
     if ADown then
       OffsetRect(ARect,1,1);
     ACanvas.Font.Color := clWhite;
     DrawText(ACanvas.Handle, PChar(JvOutlookBar1.Pages[AIndex].Caption), Length(JvOutlookBar1.Pages[AIndex].Caption), ARect, DT_SINGLELINE or DT_VCENTER or DT_CENTER);
  end;
  odsButtonFrame:
  begin
    if ADown then
      ACanvas.Brush.Color := clNavy
    else
      ACanvas.Brush.Color := clBlack;
    ACanvas.FrameRect(ARect);
    InflateRect(ARect,-1,-1);
    if not ADown then
      ACanvas.Brush.Color := clWhite;
    ACanvas.FrameRect(ARect);
  end;
  odsButton:
    DefaultDraw := True;
  end;
end;

function TfAtsOS.GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

function TfAtsOS.NomeComputador: string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;

procedure TfAtsOS.FormCreate(Sender: TObject);
var
 vSaudacao : string;
begin
  JvOutlookBar1.OnCustomDraw := DoCustomDraw;

  //DM.MODULOUSERCONTROL := 'atsadmin';
  sCtrlResize.CtrlResize(TForm(fAtsOS));
  StatusBar1.Panels[0].Text := ' ATS - Admin versão: ' + GetVersion;
  StatusBar1.Panels[2].Text := Saudacao + ' Hoje é '+formatdatetime('dddddd',date);

  if (FileExists('logo.jpg')) then
    Image1.Picture.LoadFromFile('logo.jpg');


end;

procedure TfAtsOS.JvOutlookBar1Pages0Buttons0Click(Sender: TObject);
begin
  fEmpresa := TfEmpresa.Create(Self);
{  fEmpresa := TfEmpresa.Create(Application);
  try
    fEmpresa.ShowModal;
  finally
    fEmpresa.Free;
  end;}
end;

procedure TfAtsOS.FormShow(Sender: TObject);
var TD: TTransactionDesc;
 caminho, arquivo, empresa: String;
begin

  usulog    := fAtsAdmin.UserControlComercial.CurrentUser.UserID;
  nome_user := fAtsAdmin.UserControlComercial.CurrentUser.UserName;
  DM.varAplicacaoID := fAtsAdmin.UserControlComercial.ApplicationID;
  Dm.varUSERID      := fAtsAdmin.UserControlComercial.CurrentUser.UserID;


  if (not dm.cds_empresa.Active) then
      dm.cds_empresa.Open;
  RxLabel1.Caption := dm.cds_empresaEMPRESA.AsString;
  // Dm.varLogado := UserControlComercial.CurrentUser.UserLogin;
  //Se tiver Agendamento para o dia abro a agenda
  if (dm.cds_ag.Active) then
    dm.cds_ag.Close;
  dm.cds_ag.Params[0].Clear;
  dm.cds_ag.Params[1].AsInteger := 9999999;
  dm.cds_ag.Params[2].Value := Now;
  dm.cds_ag.Params[3].Value := Now;
  dm.cds_ag.Params[4].Clear;
  dm.cds_ag.Params[5].AsInteger := 9999999;
  dm.cds_ag.Open;
  if (not dm.cds_ag.IsEmpty) then
  begin
    dm.cds_ag.Close;
    fAgendamento := TfAgendamento.Create(Application);
    try
      fAgendamento.ShowModal;
    finally
      fAgendamento.Free;
    end;
  end
  else
  begin
    dm.cds_ag.Close;
    if (dm.ag_dia.Active) then
      dm.ag_dia.Close;
    dm.ag_dia.Params[0].Value := now;
    dm.ag_dia.Open;
    if (dm.ag_dia.IsEmpty) then
      dm.ag_dia.Close
    else
      begin
        dm.ag_dia.Close;
        fAgendamento := TfAgendamento.Create(Application);
      try
        fAgendamento.ShowModal;
      finally
        fAgendamento.Free;
      end;
    end;
  end;

 if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SELECIONAEMPRESA';
  dm.cds_parametro.Open;
  if not dm.cds_parametro.IsEmpty then
  begin
    fSelecionaEmpresa := TfSelecionaEmpresa.Create(Application);
    try
      fSelecionaEmpresa.ShowModal;
    finally
      fSelecionaEmpresa.Free;
    end;
  end
  else
  begin
    dm.emppadrao := '';
  end;

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROCLIENTE';
  dm.cds_parametro.Open;
  if (dm.cds_parametroD3.AsString = 'BLOQUEIOATRASADOS') then
  if (dm.cds_parametroD4.AsString <> FormatDateTime('ddmmyyyy', Now) ) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('execute procedure BLOQUEIACLIENTES');
    dm.sqlsisAdimin.Commit(TD);
    dm.cds_parametro.edit;
    dm.cds_parametroD4.AsString := FormatDateTime('ddmmyyyy', Now);
    dm.cds_parametro.ApplyUpdates(0);
  end;

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROCLIENTE';
  dm.cds_parametro.Open;
  if (dm.cds_parametroD2.AsString = 'EXIBEANIVERSARIO') then
  begin
    VCLReport1.Filename := str_relatorio + 'clienteAniversario.rep';
    VCLReport1.Title := VCLReport1.Filename;
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.execute;
  end;

end;

procedure TfAtsOS.JvOutlookBar1Pages0Buttons1Click(Sender: TObject);
begin
  if (varform <> '') then
    varform := '';
  fCliente1 := TfCliente1.Create(Application);
  try
    fCliente1.ShowModal;
  finally
    fCliente1.Free;
    varform := '';
  end;

end;

procedure TfAtsOS.FormClose(Sender: TObject; var Action: TCloseAction);
var
  X : Byte;
begin
  if MDIChildCount > 0 then
   for X := 0 to Pred(MDIChildCount) do
    MDIChildren[X].Close;
end;

procedure TfAtsOS.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
 statusBar1.Canvas.Brush.Color := clSkyBlue;//$00AEB7D2;
 StatusBar1.Canvas.FillRect(rect);
 StatusBar1.Canvas.TextOut(Rect.Left+18,rect.Top,Panel.Text);
// ImageList1.Draw(StatusBar.Canvas,rect.Left,rect.Top,Panel.Index+0)
end;

procedure TfAtsOS.Timer1Timer(Sender: TObject);
begin
 StatusBar1.Panels[1].Text := TimetoStr(Time);
end;

procedure TfAtsOS.JvOutlookBar1Pages1Buttons0Click(Sender: TObject);
begin
  if (fOsFiltro = nil) then
    fOsFiltro := TfOsFiltro.Create(Self);

 // sCtrlResize.CtrlResize(TForm(fClienteCadastro));

  fOsFiltro.Show;
end;

procedure TfAtsOS.JvOutlookBar1Pages1Buttons1Click(Sender: TObject);
begin
    DM.tipoCompra := 'COMPRA';
    fCompra.ShowModal;
end;

procedure TfAtsOS.JvOutlookBar1Pages1Buttons2Click(Sender: TObject);
begin
//   DM.tipoVenda := 'VENDA';
  // fVendas.ShowModal;
  usulog :=  fAtsAdmin.UserControlComercial.CurrentUser.UserID;
  nome_user := fAtsAdmin.UserControlComercial.CurrentUser.UserName;

  F_Terminal := TF_Terminal.Create(Application);
  try
   sCtrlResize.CtrlResize(TForm(F_Terminal));
    F_Terminal.ShowModal;
  finally
    F_Terminal.Free;
  end;

end;

procedure TfAtsOS.JvOutlookBar1Pages2Buttons2Click(Sender: TObject);
begin
  { Limpo a Tabela caso o sistema foi fechado de forma incorreta }
  try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set DP = null where DP is not null');
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD);
  end;

  fcrproc := Tfcrproc.Create(Application);
  try
     fcrproc.ShowModal;
  finally
     fcrproc.Free;
  end;

end;

procedure TfAtsOS.JvOutlookBar1Pages2Buttons1Click(Sender: TObject);
begin
 fCpProc:=TfCpProc.Create(Application);
 try
   fCpProc.ShowModal;
 finally
   fCpProc.Free;
 end;

end;

procedure TfAtsOS.JvOutlookBar1Pages2Buttons0Click(Sender: TObject);
begin
  fcrTituloPagto.ShowModal;
end;

procedure TfAtsOS.JvOutlookBar1Pages0Buttons4Click(Sender: TObject);
begin
  fProdutoCadastro := TfProdutoCadastro.Create(Application);
  try
    fProdutoCadastro.ShowModal;
  finally
    fProdutoCadastro.Free;
  end;
end;

procedure TfAtsOS.JvOutlookBar1Pages0Buttons2Click(Sender: TObject);
begin
  fFornecedorCadastro := TfFornecedorCadastro.Create(Application);
  try
    fFornecedorCadastro.ShowModal;
  finally
    fFornecedorCadastro.Free;
  end;
end;

procedure TfAtsOS.JvOutlookBar1Pages0Buttons3Click(Sender: TObject);
begin
  fFuncionario := TfFuncionario.Create(Application);
  try
    fFuncionario.ShowModal;
  finally
    fFuncionario.Free;
  end;
end;

procedure TfAtsOS.JvOutlookBar1Pages5Buttons4Click(Sender: TObject);
begin
  Close;
end;

procedure TfAtsOS.JvOutlookBar1Pages5Buttons0Click(Sender: TObject);
begin
// teste
  fAtsAdmin.Usuarios1.Click;
end;

procedure TfAtsOS.JvOutlookBar1Pages5Buttons3Click(Sender: TObject);
begin
// fPainelControle := fPainelControle.Create(Application);
// Try
   fPainelControle.ShowModal;
// finally
//   fPainelControle.Free;
// end;
end;

procedure TfAtsOS.JvOutlookBar1Pages5Buttons2Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Application);
  try
    fSobre.ShowModal;
  finally
    fSobre.Free;
  end;
end;

procedure TfAtsOS.JvOutlookBar1Pages5Buttons1Click(Sender: TObject);
begin
  fParametro := TfParametro.Create(Application);
  try
    fParametro.ShowModal;
  finally
    fParametro.Free;
  end;
end;

end.
