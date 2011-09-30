unit ufParametro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, Grids, DBGrids, DBClient, Provider, DB, SqlExpr,
  Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel, Mask, DBCtrls,
  ComCtrls,DBXpress, JvExExtCtrls, JvExtComponent, JvDBRadioPanel,
  JvExStdCtrls, JvCheckBox, JvExMask, JvToolEdit, JvBaseEdits,
  JvComponentBase, JvNavigationPane, ImgList, JvExControls, JvOutlookBar;

type
  TfParametro = class(TfPai)
    DataSource1: TDataSource;
    Parametro: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Edit12: TEdit;
    BitBtn4: TBitBtn;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    BitBtn5: TBitBtn;
    Image1: TImage;
    sbusca: TSQLDataSet;
    TabSheet3: TTabSheet;
    GroupBox6: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit17: TEdit;
    BitBtn7: TBitBtn;
    Edit18: TEdit;
    Edit19: TEdit;
    ComboBox2: TComboBox;
    GroupBox9: TGroupBox;
    Label19: TLabel;
    BitBtn9: TBitBtn;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Label20: TLabel;
    GroupBox12: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    BitBtn12: TBitBtn;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    GroupBox13: TGroupBox;
    Label24: TLabel;
    Label27: TLabel;
    BitBtn13: TBitBtn;
    ComboBox8: TComboBox;
    Edit15: TEdit;
    TabSheet4: TTabSheet;
    GroupBox14: TGroupBox;
    BitBtn14: TBitBtn;
    JvCheckBox1: TJvCheckBox;
    JvCheckBox2: TJvCheckBox;
    JvCheckBox3: TJvCheckBox;
    JvCheckBox4: TJvCheckBox;
    JvCheckBox5: TJvCheckBox;
    JvCheckBox6: TJvCheckBox;
    GroupBox15: TGroupBox;
    Label28: TLabel;
    Edit16: TEdit;
    BitBtn15: TBitBtn;
    TabSheet5: TTabSheet;
    GroupBox16: TGroupBox;
    Label29: TLabel;
    BitBtn16: TBitBtn;
    ComboBox7: TComboBox;
    GroupBox17: TGroupBox;
    Label30: TLabel;
    BitBtn17: TBitBtn;
    cbUsaJuros: TComboBox;
    Label31: TLabel;
    Label32: TLabel;
    edJuros: TJvCalcEdit;
    TabSheet6: TTabSheet;
    GroupBox20: TGroupBox;
    Label35: TLabel;
    BitBtn20: TBitBtn;
    ComboBox10: TComboBox;
    GroupBox21: TGroupBox;
    BitBtn21: TBitBtn;
    GroupBox22: TGroupBox;
    BitBtn22: TBitBtn;
    GroupBox23: TGroupBox;
    Label36: TLabel;
    BitBtn23: TBitBtn;
    GroupBox24: TGroupBox;
    Label37: TLabel;
    BitBtn24: TBitBtn;
    Label38: TLabel;
    Label39: TLabel;
    Image3: TImage;
    Image2: TImage;
    Image4: TImage;
    Compras: TTabSheet;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Edit13: TEdit;
    BitBtn2: TBitBtn;
    GroupBox11: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    BitBtn11: TBitBtn;
    ComboBox6: TComboBox;
    meDta3: TMaskEdit;
    meDta4: TMaskEdit;
    GroupBox19: TGroupBox;
    Label34: TLabel;
    BitBtn19: TBitBtn;
    ComboBox9: TComboBox;
    GroupBox25: TGroupBox;
    Label40: TLabel;
    BitBtn25: TBitBtn;
    ComboBox11: TComboBox;
    Label41: TLabel;
    edUserRespAprovaCompra: TEdit;
    GroupBox26: TGroupBox;
    Label43: TLabel;
    BitBtn26: TBitBtn;
    Edit22: TEdit;
    GroupBox27: TGroupBox;
    Label42: TLabel;
    Image5: TImage;
    Image6: TImage;
    BitBtn27: TBitBtn;
    GroupBox28: TGroupBox;
    Label44: TLabel;
    Image7: TImage;
    Image8: TImage;
    BitBtn28: TBitBtn;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    TabSheet7: TTabSheet;
    GroupBox8: TGroupBox;
    BitBtn8: TBitBtn;
    RadioGroup2: TRadioGroup;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    RadioGroup1: TRadioGroup;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    GroupBox29: TGroupBox;
    Label45: TLabel;
    Label46: TLabel;
    Edit23: TEdit;
    ComboBox12: TComboBox;
    GroupBox10: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BitBtn10: TBitBtn;
    ComboBox5: TComboBox;
    meDta1: TMaskEdit;
    meDta2: TMaskEdit;
    GroupBox7: TGroupBox;
    Label9: TLabel;
    Label47: TLabel;
    ComboBox1: TComboBox;
    MaskEdit4: TMaskEdit;
    BitBtn6: TBitBtn;
    BitBtn29: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox30: TGroupBox;
    Label10: TLabel;
    TabSheet8: TTabSheet;
    GroupBox18: TGroupBox;
    Label33: TLabel;
    Edit20: TEdit;
    BitBtn18: TBitBtn;
    cbCentroCusto: TComboBox;
    Edit21: TEdit;
    Label48: TLabel;
    Label49: TLabel;
    TabSheet9: TTabSheet;
    JvOutlookBar1: TJvOutlookBar;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    ImageList1: TImageList;
    ImageList2: TImageList;
    JvNavPaneStyleManager1: TJvNavPaneStyleManager;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtSrcStateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure ComboBox14Change(Sender: TObject);
    procedure ComboBox13Change(Sender: TObject);
  private
    { Private declarations }
  public
    procedure DoCustomDraw(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
    AStage: TJvOutlookBarCustomDrawStage; AIndex:integer; ADown, AInside: boolean;
    var DefaultDraw:boolean);
    { Public declarations }
  end;

var
  fParametro: TfParametro;

implementation

uses UDm, JvJVCLUtils, uAtsAdmin;

{$R *.dfm}

procedure TfParametro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
 if dm.cds_param.Active then
   dm.cds_param.Close;
  fAtsAdmin.ComboBox14.ItemIndex := ComboBox14.ItemIndex;
  fAtsAdmin.ComboBox13.ItemIndex := ComboBox13.ItemIndex;
end;

procedure TfParametro.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfParametro.BitBtn1Click(Sender: TObject);
begin
  inherited;
  If (RadioGroup1.ItemIndex = 0) then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'ANOTACOESVENDAS';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Preenche a Combobox na tela de vendas com os dados D1 .. D9';
      dm.cds_parametroPARAMETRO.AsString := 'ANOTACOESVENDAS';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := 'S';
    end
    else
      dm.cds_parametro.Edit;
      edit3.Text := dm.cds_parametroD1.AsString;
      edit4.Text := dm.cds_parametroD2.AsString;
      edit5.Text := dm.cds_parametroD3.AsString;
      edit6.Text := dm.cds_parametroD4.AsString;
      edit7.Text := dm.cds_parametroD5.AsString;
      edit8.Text := dm.cds_parametroD6.AsString;
      edit9.Text := dm.cds_parametroD7.AsString;
      edit10.Text := dm.cds_parametroD8.AsString;
      edit11.Text := dm.cds_parametroD9.AsString;
  end
  else begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'ANOTACOESVENDAS';
    dm.cds_parametro.Open;
    if (not dm.cds_parametro.IsEmpty) then
      dm.cds_parametro.Delete;
  end;

  if (dm.cds_parametro.State in [dsInsert, dsEdit]) then
  begin
    try
      dm.cds_parametroD1.AsString := edit3.Text;
      dm.cds_parametroD2.AsString := edit4.Text;
      dm.cds_parametroD3.AsString := edit5.Text;
      dm.cds_parametroD4.AsString := edit6.Text;
      dm.cds_parametroD5.AsString := edit7.Text;
      dm.cds_parametroD6.AsString := edit8.Text;
      dm.cds_parametroD7.AsString := edit9.Text;
      dm.cds_parametroD8.AsString := edit10.Text;
      dm.cds_parametroD9.AsString := edit11.Text;
      dm.cds_parametro.ApplyUpdates(0);
      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;
  end;
end;

procedure TfParametro.BitBtn3Click(Sender: TObject);
begin
  inherited;
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'VIDEO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Configuração de Video';
      dm.cds_parametroPARAMETRO.AsString := 'VIDEO';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString := edit1.Text;
      dm.cds_parametroD2.AsString := edit2.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroD1.AsString := edit1.Text;
      dm.cds_parametroD2.AsString := edit2.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;
end;

procedure TfParametro.BitBtn4Click(Sender: TObject);
begin
  inherited;
  try
    if (not dm.c_1_planoc.Active) then
      dm.c_1_planoc.Open;
    if (not dm.c_1_planoc.Locate('CONTA',Edit12.Text, [loCaseInsensitive])) then
    begin
      MessageDlg('A Conta informada não existe no plano de contas.', mtInformation,
      [mbOk], 0);
      Edit12.SetFocus;
      exit;
    end;
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'CONTA_CLIENTE';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Conta usada no cadastro de cada Cliente (CONTA_CLIENTE)';
      dm.cds_parametroPARAMETRO.AsString := 'CONTA_CLIENTE';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString := edit12.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroD1.AsString := edit12.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;
  try
    if  MessageDlg('Deseja atualizar a Tabela Cliente com está conta ?',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    begin
      dm.sqlsisAdimin.ExecuteDirect('UPDATE CLIENTES SET CONTA_CLIENTE = ' +
        '''' + Edit12.Text + '''');
      MessageDlg('Atualização realizada com sucesso.', mtInformation,
        [mbOk], 0);
    end;
  except
    MessageDlg('A Tabela cliente não foi atualizada, notifique o administrador !', mtError,
    [mbOk], 0);
  end;
end;

procedure TfParametro.FormCreate(Sender: TObject);
begin
  ComboBox14.ItemIndex := 0;
  JvOutlookBar1.OnCustomDraw := DoCustomDraw;
  ComboBox13.ItemIndex := 0;
  ComboBox14Change(ComboBox14);
  ComboBox13Change(ComboBox13);

  //inherited;
  dm.cds_param.Open;
  if (dm.cds_param.Locate('PARAMETRO','ANOTACOESVENDAS', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramDADOS.AsString = 'S') then
      RadioGroup1.ItemIndex := 0
    else
      RadioGroup1.ItemIndex := 1;
    edit3.Text := dm.cds_paramD1.AsString;
    edit4.Text := dm.cds_paramD2.AsString;
    edit5.Text := dm.cds_paramD3.AsString;
    edit6.Text := dm.cds_paramD4.AsString;
    edit7.Text := dm.cds_paramD5.AsString;
    edit8.Text := dm.cds_paramD6.AsString;
    edit9.Text := dm.cds_paramD7.AsString;
    edit10.Text := dm.cds_paramD8.AsString;
    edit11.Text := dm.cds_paramD9.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','VIDEO', [loCaseInsensitive])) then
  begin
    Edit1.Text := dm.cds_paramD1.AsString;
    Edit2.Text := dm.cds_paramD2.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','CONTA_CLIENTE', [loCaseInsensitive])) then
  begin
    Edit12.Text := dm.cds_paramD1.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','CONTA_FORNECEDOR', [loCaseInsensitive])) then
  begin
    Edit13.Text := dm.cds_paramD1.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','PDV', [loCaseInsensitive])) then
  begin
    Edit18.Text := dm.cds_paramDADOS.AsString;
    Edit17.Text := dm.cds_paramD1.AsString;
    Edit19.Text := dm.cds_paramD2.AsString;
    ComboBox2.Text := dm.cds_paramD3.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO', 'TERMINALVENDAS', [loCaseInsensitive])) then
  begin
     if (dm.cds_parametroDADOS.AsString = 'PROC_PROD_SIMPLES') then
       RadioGroup2.ItemIndex := 0
     else
       RadioGroup2.ItemIndex := 1;
  end;
  if (dm.cds_param.Locate('PARAMETRO','PRECOLISTA', [loCaseInsensitive])) then
  begin
    ComboBox3.Text := dm.cds_paramDADOS.AsString;
  end;

  if (dm.cds_param.Locate('PARAMETRO','CADASTROVEICULO', [loCaseInsensitive])) then
  begin
    ComboBox4.Text := dm.cds_paramDADOS.AsString;
  end;

  if (dm.cds_param.Locate('PARAMETRO','CONTROLE', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
      ComboBox12.ItemIndex := 0
    else
      ComboBox12.ItemIndex := 1;
    edit23.Text := dm.cds_paramDADOS.AsString;
  end;

  if (dm.cds_param.Locate('PARAMETRO','PADRAOFILTROVENDA', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
    begin
      ComboBox5.ItemIndex := 0;
      meDta1.Text := dm.cds_paramD1.AsString;
      meDta2.Text := dm.cds_paramD2.AsString;
    end
    else
      ComboBox5.ItemIndex := 1;
  end;

  if (dm.cds_param.Locate('PARAMETRO','PADRAOFILTROCOMPRA', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
    begin
      ComboBox6.ItemIndex := 0;
      meDta3.Text := dm.cds_paramD1.AsString;
      meDta4.Text := dm.cds_paramD2.AsString;
    end
    else
      ComboBox6.ItemIndex := 1;
  end;
  if (dm.cds_param.Locate('PARAMETRO','FORMATACAO', [loCaseInsensitive])) then
  begin
    MaskEdit1.Text := dm.cds_paramD1.AsString;
    MaskEdit2.Text := dm.cds_paramD2.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','EMPRESA', [loCaseInsensitive])) then
  begin
    Edit15.Text := dm.cds_paramDADOS.AsString;
    ComboBox8.Text := dm.cds_paramD1.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','MODULO', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramD1.AsString = 'S') then
      jvCheckBox1.Checked := True
    else
      jvCheckBox1.Checked := False;
    if (dm.cds_paramD2.AsString = 'S') then
      jvCheckBox2.Checked := True
    else
      jvCheckBox2.Checked := False;
    if (dm.cds_paramD3.AsString = 'S') then
      jvCheckBox3.Checked := True
    else
      jvCheckBox3.Checked := False;
    if (dm.cds_paramD4.AsString = 'S') then
      jvCheckBox4.Checked := True
    else
      jvCheckBox4.Checked := False;
    if (dm.cds_paramD5.AsString = 'S') then
      jvCheckBox5.Checked := True
    else
      jvCheckBox5.Checked := False;
    if (dm.cds_paramD6.AsString = 'S') then
      jvCheckBox6.Checked := True
    else
      jvCheckBox6.Checked := False;
  end;
  if (dm.cds_param.Locate('PARAMETRO','GRUPOMARCA', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramDADOS.AsString = 'SIM') then
    begin
      Edit16.Text := 'SIM';
    end
    else
      Edit16.text := '';
  end;
  if (dm.cds_param.Locate('PARAMETRO','USARECEITAS', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramDADOS.AsString = 'S') then
    begin
      ComboBox7.Text := 'S';
    end
    else
      ComboBox7.text := '';
  end;
  if (dm.cds_param.Locate('PARAMETRO','RECEBERJUROS', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
    begin
      cbUsaJuros.Text := dm.cds_paramCONFIGURADO.AsString;
      edJuros.Text := dm.cds_paramDADOS.AsString;
    end
    else begin
      cbUsaJuros.Text := 'N';
      edJuros.Text := '0';
    end;
  end;

  if (dm.cds_param.Locate('PARAMETRO','CENTROCUSTO', [loCaseInsensitive])) then
  begin
    cbCentroCusto.Text := dm.cds_paramCONFIGURADO.AsString;
    Edit20.Text := dm.cds_paramDADOS.AsString;
    Edit21.Text := dm.cds_paramD1.AsString;
  end;

  if (dm.cdsBusca.Active) then
    dm.cdsBusca.Close;
  dm.cdsBusca.CommandText := 'SELECT SERIE, ULTIMO_NUMERO FROM SERIES WHERE SERIE = ' + QuotedStr('I') +
    ' OR SERIE = ' + QuotedStr('O');
  dm.cdsBusca.Open;
  if (dm.cdsBusca.RecordCount > 0) then
  begin
    While not dm.cdsBusca.Eof do
    begin
      if (dm.cdsBusca.FieldByName('SERIE').AsString = 'O') then
      begin
        Label39.Caption := 'Sério "O"  = ' + IntToStr(dm.cdsBusca.FieldByName('ULTIMO_NUMERO').AsInteger);
        Label39.Font.Color := clHotLight;
        Image9.Visible := False;
        Image10.Visible := True;
      end;
      if (dm.cdsBusca.FieldByName('SERIE').AsString = 'I') then
      begin
        Label38.Caption := 'Sério "I"  = ' + IntToStr(dm.cdsBusca.FieldByName('ULTIMO_NUMERO').AsInteger);
        Label38.Font.Color := clHotLight;
        Image12.Visible := False;
        Image11.Visible := True;
      end;
      dm.cdsBusca.Next;
    end;
  end
  else begin
    Label39.Caption := 'Sério "O" não incluída.';
    Label39.Font.Color := clRed;
    Label38.Caption := 'Sério "I" não incluída.';
    Label38.Font.Color := clRed;
    Image10.Visible := False;
    Image9.Visible := True;
    Image11.Visible := False;
    Image12.Visible := True;
  end;

  // Usuarios Obrigatorios
  if (dm.cdsBusca.Active) then
    dm.cdsBusca.Close;
  dm.cdsBusca.CommandText := 'SELECT CODUSUARIO FROM USUARIO WHERE CODUSUARIO = 0' + 
    ' OR CODUSUARIO = 1';
  dm.cdsBusca.Open;
  if (dm.cdsBusca.RecordCount > 0) then
  begin
    While not dm.cdsBusca.Eof do
    begin
      if (dm.cdsBusca.FieldByName('CODUSUARIO').AsInteger = 0) then
      begin
       Image1.Visible := False;
       Image3.Visible := True;
      end;
      if (dm.cdsBusca.FieldByName('CODUSUARIO').AsInteger = 1) then
      begin
       Image2.Visible := False;
       Image4.Visible := True;
      end;
      dm.cdsBusca.Next;
    end;
  end
  else begin
    Image1.Visible := True;
    Image2.Visible := True;
    Image3.Visible := False;
    Image4.Visible := False;
  end;

  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'COMPRA';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
      ComboBox11.ItemIndex := 0;
    if (dm.cds_parametroCONFIGURADO.AsString = 'N') then
      ComboBox11.ItemIndex := 1;
    edUserRespAprovaCompra.Text  := dm.cds_parametroD1.AsString;
    edit22.Text := dm.cds_parametroD1.AsString;
  end;


  // Cliente Obrigatorio
  if (dm.cdsBusca.Active) then
    dm.cdsBusca.Close;
  dm.cdsBusca.CommandText := 'SELECT CODCLIENTE FROM CLIENTES WHERE CODCLIENTE = 0';
  dm.cdsBusca.Open;
  if (not dm.cdsBusca.IsEmpty) then
  begin
    Image5.Visible := False;
    Image6.Visible := True;
  end
  else begin
    Image6.Visible := True;
    Image5.Visible := False;
  end;

  // Fornecedor Obrigatorio
  if (dm.cdsBusca.Active) then
    dm.cdsBusca.Close;
  dm.cdsBusca.CommandText := 'SELECT CODFORNECEDOR FROM FORNECEDOR WHERE CODFORNECEDOR = 0';
  dm.cdsBusca.Open;
  if (not dm.cdsBusca.IsEmpty) then
  begin
    Image7.Visible := False;
    Image8.Visible := True;
  end
  else begin
    Image7.Visible := True;
    Image8.Visible := False;
  end;

  // Margem Venda
  if (dm.cds_param.Locate('PARAMETRO','MARGEMVENDA', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
    begin
      ComboBox1.ItemIndex := 0;
      MaskEdit4.Text := dm.cds_paramD1.AsString;
    end
    else
      ComboBox1.ItemIndex := 1;
  end;
end;

procedure TfParametro.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
    if (not dm.c_1_planoc.Active) then
      dm.c_1_planoc.Open;
    if (not dm.c_1_planoc.Locate('CONTA',Edit13.Text, [loCaseInsensitive])) then
    begin
      MessageDlg('A Conta informada não existe no plano de contas.', mtInformation,
      [mbOk], 0);
      Edit13.SetFocus;
      exit;
    end;
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'CONTA_FORNECEDOR';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Conta usada no cadastro de cada Fornecedor (CONTA_FORNECEDOR)';
      dm.cds_parametroPARAMETRO.AsString := 'CONTA_FORNECEDOR';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString := edit13.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroD1.AsString := edit13.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;
  try
    if  MessageDlg('Deseja atualizar a Tabela FORNECEDOR com está conta ?',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    begin
      dm.sqlsisAdimin.ExecuteDirect('UPDATE FORNECEDOR SET CONTA_FORNECEDOR = ' +
        '''' + Edit13.Text + '''');
      MessageDlg('Atualização realizada com sucesso.', mtInformation,
        [mbOk], 0);
    end;
  except
    MessageDlg('A Tabela Fornecedor não foi atualizada, notifique o administrador !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn5Click(Sender: TObject);
var
   TD: TTransactionDesc;
   strsql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  strsql := 'insert into USUARIO (CODUSUARIO, NOMEUSUARIO, STATUS' +
            ', PERFIL) VALUES (0, ' + QuotedStr('Usuário Sistema') +
            ',0,'+ QuotedStr('Vendas') + ')';
  dm.sqlsisAdimin.ExecuteDirect(strsql);
  Try
     dm.sqlsisAdimin.Commit(TD);
     Image1.Visible := True;
     Image3.Visible := False;
     MessageDlg('Usuário inserido com sucesso!', mtInformation,
         [mbOk], 0);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, Usuário não incluído!', mtError,
         [mbOk], 0);
  end;
end;
procedure TfParametro.BitBtn7Click(Sender: TObject);
var
   strsql : string;
begin
  // Pesquisando se os dados inseridos existem no sistema
  // -----------------CODCLIENTE------------------------------
  if (sbusca.Active) then
    sbusca.Close;
  strsql := 'SELECT CODCLIENTE FROM CLIENTES where CODCLIENTE = ';
  strsql := strsql + Edit18.Text;
  sbusca.CommandText := strsql;
  sbusca.Open;
  if (sbusca.IsEmpty) then
  begin
    MessageDlg('Não existe cliente com esse código no sistema, informe um cliente válido !', mtWarning, [mbOK], 0);
    exit;
  end;
  // -----------------CODALMOXARIFADO------------------------------
  // Não tem chave estrangeira
  // --------------------------------------------------------------
  // -----------------CODNATUREZA----------------------------------
  if (sbusca.Active) then
    sbusca.Close;
  strsql := 'SELECT CODNATUREZA FROM NATUREZAOPERACAO where CODNATUREZA = ';
  strsql := strsql + Edit19.Text;
  sbusca.CommandText := strsql;
  sbusca.Open;
  if (sbusca.IsEmpty) then
  begin
    MessageDlg('Não existe NaturezaOperação com esse código'+#13#10+'no sistema, informe um código válido !', mtWarning, [mbOK], 0);
    exit;
  end;
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'PDV';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usado PDV: Inseri CODCLIENTE, CODALMOXARIFADO, CODNATUREZA';
      dm.cds_parametroPARAMETRO.AsString := 'PDV';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := edit18.Text;
      dm.cds_parametroD1.AsString := edit17.Text;
      dm.cds_parametroD2.AsString := edit19.Text;
      dm.cds_parametroD3.AsString := ComboBox2.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := edit18.Text;
      dm.cds_parametroD1.AsString := edit17.Text;
      dm.cds_parametroD2.AsString := edit19.Text;
      dm.cds_parametroD3.AsString := ComboBox2.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;


end;

procedure TfParametro.BitBtn8Click(Sender: TObject);
begin
  inherited;
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'TERMINALVENDAS';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Form Procura usado terminal Vendas';
      dm.cds_parametroPARAMETRO.AsString := 'TERMINALVENDAS';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      Case RadioGroup2.ItemIndex of
        0: dm.cds_parametroDADOS.AsString := 'PROC_PROD_SIMPLES';
        1: dm.cds_parametroDADOS.AsString := 'PROC_PROD_COMPLETO';
      end;
    end
    else begin
      dm.cds_parametro.Edit;
      Case RadioGroup2.ItemIndex of
        0: dm.cds_parametroDADOS.AsString := 'PROC_PROD_SIMPLES';
        1: dm.cds_parametroDADOS.AsString := 'PROC_PROD_COMPLETO';
      end;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn9Click(Sender: TObject);
begin
  inherited;
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'PRECOLISTA';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usa Lista de Preço de Terceiros ?';
      dm.cds_parametroPARAMETRO.AsString := 'PRECOLISTA';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := ComboBox3.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := ComboBox3.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CADASTROVEICULO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usa Cadastro de Veículos ?';
      dm.cds_parametroPARAMETRO.AsString := 'CADASTROVEICULO';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := ComboBox4.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := ComboBox4.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;


end;

procedure TfParametro.BitBtn6Click(Sender: TObject);
begin
  inherited;
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CONTROLE';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Campo usado no Form Finalizar Venda';
      dm.cds_parametroPARAMETRO.AsString := 'CONTROLE';
      if (ComboBox1.ItemIndex = 0) then
        dm.cds_parametroCONFIGURADO.AsString := 'S'
       else
        dm.cds_parametroCONFIGURADO.AsString := 'N';
      dm.cds_parametroDADOS.AsString := edit23.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      if (ComboBox1.ItemIndex = 0) then
        dm.cds_parametroCONFIGURADO.AsString := 'S'
       else
        dm.cds_parametroCONFIGURADO.AsString := 'N';
      dm.cds_parametroDADOS.AsString := edit23.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn10Click(Sender: TObject);
begin
  inherited;
  // PADRAOFILTROVENDA
  if (ComboBox5.ItemIndex = 0) then
  begin
    // ----------------------------------------------------
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'PADRAOFILTROVENDA';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Append;
        dm.cds_parametroDESCRICAO.AsString := 'Dados Padrões usado no FiltroMovimento';
        dm.cds_parametroPARAMETRO.AsString := 'PADRAOFILTROVENDA';
        dm.cds_parametroCONFIGURADO.AsString := 'S';
        dm.cds_parametroD1.AsString := meDta1.Text;
        dm.cds_parametroD2.AsString := meDta2.Text;
      end
      else begin
        dm.cds_parametro.Edit;
        dm.cds_parametroD1.AsString := meDta1.Text;
        dm.cds_parametroD2.AsString := meDta2.Text;
      end;
      dm.cds_parametro.ApplyUpdates(0);
      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;

  end;
  if (ComboBox5.ItemIndex = 1) then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'PADRAOFILTROVENDA';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Delete;
        dm.cds_parametro.ApplyUpdates(0);
        meDta1.Text := '';
        meDta2.Text := '';
      end;
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;

  end;
end;

procedure TfParametro.BitBtn11Click(Sender: TObject);
begin
  inherited;
  // PADRAOFILTROCOMPRA
  if (ComboBox6.ItemIndex = 0) then
  begin
    // ----------------------------------------------------
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'PADRAOFILTROCOMPRA';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Append;
        dm.cds_parametroDESCRICAO.AsString := 'Dados Padrões usado no FiltroMovimentoCompra';
        dm.cds_parametroPARAMETRO.AsString := 'PADRAOFILTROCOMPRA';
        dm.cds_parametroCONFIGURADO.AsString := 'S';
        dm.cds_parametroD1.AsString := meDta3.Text;
        dm.cds_parametroD2.AsString := meDta4.Text;
      end
      else begin
        dm.cds_parametro.Edit;
        dm.cds_parametroD1.AsString := meDta3.Text;
        dm.cds_parametroD2.AsString := meDta4.Text;
      end;
      dm.cds_parametro.ApplyUpdates(0);
      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;

  end;
  if (ComboBox6.ItemIndex = 1) then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'PADRAOFILTROCOMPRA';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Delete;
        dm.cds_parametro.ApplyUpdates(0);
        meDta3.Text := '';
        meDta4.Text := '';
      end;
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;

  end;

end;

procedure TfParametro.BitBtn12Click(Sender: TObject);
begin
  inherited;
  { Usado para configurar o Display Format em alguns forms }
  // FORMATACAO
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'FORMATACAO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Formatação usadas no sistema (n. casas decimais...) D1 : Qtde, D2 : Valor';
      dm.cds_parametroPARAMETRO.AsString := 'FORMATACAO';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString := MaskEdit1.Text;
      dm.cds_parametroD2.AsString := MaskEdit2.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroD1.AsString := MaskEdit1.Text;
      dm.cds_parametroD2.AsString := MaskEdit2.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;
end;

procedure TfParametro.BitBtn13Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'EMPRESA';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'empresa que usa (Dados - Nome empresa, D1 - AUTOMOTIVA (OFICINA, PECAS, ETc.)';
      dm.cds_parametroPARAMETRO.AsString := 'EMPRESA';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := Edit15.Text;
      dm.cds_parametroD1.AsString := combobox8.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := Edit15.Text;
      dm.cds_parametroD1.AsString := combobox8.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn14Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'MODULO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Módulos utilizados.';
      dm.cds_parametroPARAMETRO.AsString := 'MODULO';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      if (jvCheckBox1.Checked) then
        dm.cds_parametroD1.AsString := 'S'
      else
        dm.cds_parametroD1.AsString := 'N';
      if (jvCheckBox2.Checked) then
        dm.cds_parametroD2.AsString := 'S'
      else
        dm.cds_parametroD2.AsString := 'N';
      if (jvCheckBox3.Checked) then
        dm.cds_parametroD3.AsString := 'S'
      else
        dm.cds_parametroD3.AsString := 'N';
      if (jvCheckBox4.Checked) then
        dm.cds_parametroD4.AsString := 'S'
      else
        dm.cds_parametroD4.AsString := 'N';
      if (jvCheckBox5.Checked) then
        dm.cds_parametroD5.AsString := 'S'
      else
        dm.cds_parametroD5.AsString := 'N';
      if (jvCheckBox6.Checked) then
        dm.cds_parametroD6.AsString := 'S'
      else
        dm.cds_parametroD6.AsString := 'N';
    end
    else begin
      dm.cds_parametro.Edit;
      if (jvCheckBox1.Checked) then
        dm.cds_parametroD1.AsString := 'S'
      else
        dm.cds_parametroD1.AsString := 'N';
      if (jvCheckBox2.Checked) then
        dm.cds_parametroD2.AsString := 'S'
      else
        dm.cds_parametroD2.AsString := 'N';
      if (jvCheckBox3.Checked) then
        dm.cds_parametroD3.AsString := 'S'
      else
        dm.cds_parametroD3.AsString := 'N';
      if (jvCheckBox4.Checked) then
        dm.cds_parametroD4.AsString := 'S'
      else
        dm.cds_parametroD4.AsString := 'N';
      if (jvCheckBox5.Checked) then
        dm.cds_parametroD5.AsString := 'S'
      else
        dm.cds_parametroD5.AsString := 'N';
      if (jvCheckBox6.Checked) then
        dm.cds_parametroD6.AsString := 'S'
      else
        dm.cds_parametroD6.AsString := 'N';
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn15Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'GRUPOMARCA';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Se GRUPOMARCA DADOS = SIM então ' +
        'usa o campo MARCA relacionado com o campo GRUPO';
      dm.cds_parametroPARAMETRO.AsString := 'GRUPOMARCA';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := Edit16.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := Edit16.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn16Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'USARECEITAS';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Se USA O BOTÃO RECEITAS E O MENU LANÇAR COBRANÇA ' +
        ' no FINANCEIRO.';
      dm.cds_parametroPARAMETRO.AsString := 'USARECEITAS';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := ComboBox7.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := ComboBox7.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn17Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'RECEBERJUROS';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usa no Títulos de Contas a Receber o Cálculo ' +
        ' de Juros.';
      dm.cds_parametroPARAMETRO.AsString := 'RECEBERJUROS';
      dm.cds_parametroCONFIGURADO.AsString := cbUsaJuros.Text;
      dm.cds_parametroDADOS.AsString := edJuros.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroCONFIGURADO.AsString := cbUsaJuros.Text;
      dm.cds_parametroDADOS.AsString := edJuros.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn18Click(Sender: TObject);
begin
  inherited;
  if ((edit20.Text = '') or (edit21.Text = '')) then
  begin
    MessageDlg('Preencha a Conta Padrão e o Local Padrão.', mtWarning,
    [mbOk], 0) ;
    Exit;
  end;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CENTROCUSTO';   // Centro de Custo Padrao
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usado no Form de COMPRA';
      dm.cds_parametroPARAMETRO.AsString := 'CENTROCUSTO';
      dm.cds_parametroCONFIGURADO.AsString := cbCentroCusto.Text;
      dm.cds_parametroDADOS.AsString := Edit20.Text;
      dm.cds_parametroD1.AsString := Edit21.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroCONFIGURADO.AsString := cbCentroCusto.Text;
      dm.cds_parametroDADOS.AsString := Edit20.Text;
      dm.cds_parametroD1.AsString := Edit21.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

  // USA CENTRO DE CUSTO
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CENTRO CUSTO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usado para Buscar Estoque por Centro Custo';
      dm.cds_parametroPARAMETRO.AsString := 'CENTRO CUSTO';
      dm.cds_parametroCONFIGURADO.AsString := cbCentroCusto.Text;
      dm.cds_parametroD1.AsString := Edit21.Text;
      dm.cds_parametro.ApplyUpdates(0);
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroCONFIGURADO.AsString := cbCentroCusto.Text;
      dm.cds_parametroD1.AsString := Edit21.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CENTRO RECEITA PADRAO';   // Centro de Custo Padrao
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Centro de Receita PADRÃO';
      dm.cds_parametroPARAMETRO.AsString := 'CENTRO RECEITA PADRAO';
      dm.cds_parametroCONFIGURADO.AsString := cbCentroCusto.Text;
      dm.cds_parametroDADOS.AsString := Edit20.Text;
      dm.cds_parametroD1.AsString := Edit21.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroCONFIGURADO.AsString := cbCentroCusto.Text;
      dm.cds_parametroDADOS.AsString := Edit20.Text;
      dm.cds_parametroD1.AsString := Edit21.Text;      
    end;
    dm.cds_parametro.ApplyUpdates(0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

  MessageDlg('Registro gravado com sucesso.', mtInformation,
  [mbOk], 0);
end;

procedure TfParametro.BitBtn19Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'LISTAPRECO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usa preço pôr Fornecedor';
      dm.cds_parametroPARAMETRO.AsString := 'LISTAPRECO';
      if (combobox9.text = 'Sim') then
        dm.cds_parametroCONFIGURADO.AsString := 'S'
      else
        dm.cds_parametroCONFIGURADO.AsString := 'N';
    end
    else begin
      dm.cds_parametro.Edit;
      if (combobox9.text = 'Sim') then
        dm.cds_parametroCONFIGURADO.AsString := 'S'
      else
        dm.cds_parametroCONFIGURADO.AsString := 'N';
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn20Click(Sender: TObject);
begin
  inherited;
  if (ComboBox10.Text = 'REPRESENTANTE') then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'CADASTROREPRESENTANTE';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Append;
        dm.cds_parametroDESCRICAO.AsString := 'Usa no cadastro do cliente o cadastro de representante.';
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROREPRESENTANTE';
        dm.cds_parametroDADOS.AsString := 'S';
      end
      else begin
        dm.cds_parametro.Edit;
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROREPRESENTANTE';
        dm.cds_parametroDADOS.AsString := 'S';
      end;
      dm.cds_parametro.ApplyUpdates(0);
      // Removo a REFERENCIA
      if (dm.cds_parametro.Active) then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].asString := 'CADASTROCLIENTE';
      dm.cds_parametro.Open;

      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Edit;
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROCLIENTE';
        dm.cds_parametroDADOS.AsString := '';
        dm.cds_parametro.ApplyUpdates(0);
      end;

      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;
  end;
  if (ComboBox10.Text = 'REFERENCIA') then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'CADASTROCLIENTE';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Append;
        dm.cds_parametroDESCRICAO.AsString := 'Usa no cadastro do cliente o cadastro de REFERÊNCIA COMRERCIAL.';
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROCLIENTE';
        dm.cds_parametroDADOS.AsString := 'REFERENCIA';
      end
      else begin
        dm.cds_parametro.Edit;
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROCLIENTE';
        dm.cds_parametroDADOS.AsString := 'REFERENCIA';
      end;
      dm.cds_parametro.ApplyUpdates(0);
      //Removo o Representante
      if (dm.cds_parametro.Active) then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].asString := 'CADASTROREPRESENTANTE';
      dm.cds_parametro.Open;

      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Edit;
        dm.cds_parametroDESCRICAO.AsString := 'Usa no cadastro do cliente o cadastro de representante.';
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROREPRESENTANTE';
        dm.cds_parametroDADOS.AsString := 'N';
      end;
      dm.cds_parametro.ApplyUpdates(0);

      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;
  end;
  if (ComboBox10.Text = '') then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'CADASTROCLIENTE';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Edit;
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROCLIENTE';
        dm.cds_parametroDADOS.AsString := '';
      end;
      dm.cds_parametro.ApplyUpdates(0);
      if (dm.cds_parametro.Active) then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].asString := 'CADASTROREPRESENTANTE';
      dm.cds_parametro.Open;

      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Edit;
        dm.cds_parametroDESCRICAO.AsString := 'Usa no cadastro do cliente o cadastro de representante.';
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROREPRESENTANTE';
        dm.cds_parametroDADOS.AsString := 'N';
      end;
      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;
  end;

end;

procedure TfParametro.BitBtn23Click(Sender: TObject);
var
   TD: TTransactionDesc;
   strsql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  strsql := 'insert into USUARIO (CODUSUARIO, NOMEUSUARIO, STATUS' +
            ', PERFIL) VALUES (1, ' + QuotedStr('Usuário Sistema') +
            ',0,'+ QuotedStr('Ambos') + ')';
  dm.sqlsisAdimin.ExecuteDirect(strsql);
  Try
     dm.sqlsisAdimin.Commit(TD);
     Image2.Visible := True;
     Image4.Visible := False;
     MessageDlg('Usuário inserido com sucesso!', mtInformation,
         [mbOk], 0);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, Usuário não incluído!', mtError,
         [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn24Click(Sender: TObject);
var
   TD: TTransactionDesc;
   strsql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  strsql := 'insert into SERIES (SERIE, ULTIMO_NUMERO' +
    ') VALUES (' + QuotedStr('O') + ', 0)';
  dm.sqlsisAdimin.ExecuteDirect(strsql);
  strsql := 'insert into SERIES (SERIE, ULTIMO_NUMERO' +
    ') VALUES (' + QuotedStr('I') + ', 0)';
  dm.sqlsisAdimin.ExecuteDirect(strsql);
  Try
     dm.sqlsisAdimin.Commit(TD);
     MessageDlg('Séries inserida com sucesso!', mtInformation,
         [mbOk], 0);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, Séries não incluída!', mtError,
         [mbOk], 0);
  end;
end;

procedure TfParametro.BitBtn25Click(Sender: TObject);
begin
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'COMPRA';
  dm.cds_parametro.Open;
  // Insere ou Altera a tabela PARAMETROS
  if (dm.cds_parametro.IsEmpty) then
  begin
    dm.cds_parametro.Append;
    dm.cds_parametroDESCRICAO.AsString := 'Compras - Paramentros.';
    dm.cds_parametroPARAMETRO.AsString := 'COMPRA';
    if (ComboBox11.ItemIndex = -1) then
    begin
      MessageDlg('Selecione a opção SIM/NÃO.', mtError,[mbOk], 0);
      exit;
    end;
    if (ComboBox11.ItemIndex = 0) then
    begin
      dm.cds_parametroDADOS.AsString := 'S';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString    := edUserRespAprovaCompra.Text;
    end;
    if (ComboBox11.ItemIndex = 1) then
    begin
      dm.cds_parametroDADOS.AsString := 'N';
      dm.cds_parametroCONFIGURADO.AsString := 'N';
      dm.cds_parametroD1.AsString    := '';
    end;
  end
  else begin
    dm.cds_parametro.Edit;
    if (ComboBox11.ItemIndex = 0) then
    begin
      dm.cds_parametroDADOS.AsString := 'S';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString    := edUserRespAprovaCompra.Text;
    end;
    if (ComboBox11.ItemIndex = 1) then
    begin
      dm.cds_parametroDADOS.AsString := 'N';
      dm.cds_parametroCONFIGURADO.AsString := 'N';
      dm.cds_parametroD1.AsString    := '';
    end;
  end;
  dm.cds_parametro.ApplyUpdates(0);
end;

procedure TfParametro.BitBtn26Click(Sender: TObject);
begin
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'COMPRA';
  dm.cds_parametro.Open;
  // Insere ou Altera a tabela PARAMETROS
  if (dm.cds_parametro.IsEmpty) then
  begin
    begin
      MessageDlg('O Parametro "Aprovação de Compras" é obrigatório para usar esta opção.', mtError,[mbOk], 0);
      exit;
    end;
  end
  else begin
    dm.cds_parametro.Edit;
    dm.cds_parametroD2.AsString := edit22.Text;
  end;
  dm.cds_parametro.ApplyUpdates(0);
end;

procedure TfParametro.BitBtn27Click(Sender: TObject);
var
   TD: TTransactionDesc;
   strsql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  strsql := 'INSERT INTO CLIENTES (CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL, ' +
    'CONTATO, TIPOFIRMA, CPF, CNPJ, INSCESTADUAL, RG, SEGMENTO, REGIAO, LIMITECREDITO, ' +
    'DATACADASTRO, CODUSUARIO, STATUS, CONTA_CLIENTE) VALUES (' +
    '0, ' + QuotedStr('Cliente Sistema') + ', ' + QuotedStr('Cliente Sistema') + ', NULL, 0, ' +
    ' NULL, NULL, NULL, NULL, 0, 0, NULL, ' + QuotedStr('01.01.2006') +
    ' , 1, 1, ' + QuotedStr('1.1.2.03.0') + ')';
  dm.sqlsisAdimin.ExecuteDirect(strsql);
  Try
     dm.sqlsisAdimin.Commit(TD);
     MessageDlg('Cliente inserido com sucesso!', mtInformation,
         [mbOk], 0);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, Cliente não incluído!', mtError,
         [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn28Click(Sender: TObject);
var
   TD: TTransactionDesc;
   strsql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  strsql := 'INSERT INTO FORNECEDOR (CODFORNECEDOR, NOMEFORNECEDOR, RAZAOSOCIAL, ' +
  ' CONTATO, TIPOFIRMA, CPF, CNPJ, INSCESTADUAL, RG, SEGMENTO, REGIAO, LIMITECREDITO, ' +
  ' DATACADASTRO, CODUSUARIO, STATUS, HOMEPAGE, PRAZOPAGAMENTO, PRAZOENTREGA, ' +
  ' CONTA_FORNECEDOR) VALUES (0, ' +
  QuotedStr('Fornecedor  do Sistema') + ', ' +  QuotedStr('Fornecedor  do Sistema') +
  ', NULL, 1, NULL, NULL, NULL, NULL, 1, 1, NULL,' + QuotedStr('09.10.2006') + ', 1, 1, ' +
  ' NULL, NULL, NULL, ' + QuotedStr('2.1.1.01.15') + ')';
  dm.sqlsisAdimin.ExecuteDirect(strsql);
  Try
     dm.sqlsisAdimin.Commit(TD);
     MessageDlg('Fornecedor inserido com sucesso!', mtInformation,
         [mbOk], 0);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, Fornecedor não incluído!', mtError,
         [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn29Click(Sender: TObject);
var
   TD: TTransactionDesc;
   strsql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'MARGEMVENDA';
  dm.cds_parametro.Open;
  if (dm.cds_parametro.IsEmpty) then
  begin
    strsql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO, DADOS, D1, D2)' +
      ' VALUES (' + QuotedStr('Margem de venda Minima permitida por Pedido') + ', ' +
      QuotedStr('MARGEMVENDA') + ', ' + QuotedStr('S') + ', NULL,' + QuotedStr(MaskEdit4.Text) +
      ', NULL)';
  end
  else
    strsql := 'UPDATE PARAMETRO SET D1 = ' + QuotedStr(MaskEdit4.Text) + ' WHERE PARAMETRO = ' + QuotedStr('MARGEMVENDA');

  dm.sqlsisAdimin.ExecuteDirect(strsql);
  Try
     dm.sqlsisAdimin.Commit(TD);
     MessageDlg('Margem Venda inserida/alterada com sucesso!', mtInformation,
         [mbOk], 0);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, Margem não incluída!', mtError,
         [mbOk], 0);
  end;

end;

procedure TfParametro.ComboBox14Change(Sender: TObject);
begin
//  inherited;
  JvNavPaneStyleManager1.Theme := TJvNavPanelTheme(ComboBox14.ItemIndex);
  JvOutlookBar1.Invalidate;
end;

procedure TfParametro.ComboBox13Change(Sender: TObject);
begin
//  inherited;
  JvOutlookBar1.ButtonSize := TJvBarButtonSize(ComboBox13.ItemIndex);
end;

procedure TfParametro.DoCustomDraw(Sender: TObject; ACanvas: TCanvas;  ARect: TRect; AStage: TJvOutlookBarCustomDrawStage; AIndex: integer;  ADown, AInside: boolean; var DefaultDraw: boolean);
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

end.
