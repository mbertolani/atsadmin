unit uTerminalNTC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvButton, JvTransparentButton, Mask, DBCtrls, StdCtrls,
  JvExStdCtrls, JvEdit, JvValidateEdit, JvExControls, JvLabel, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, jpeg, ExtCtrls, JvExExtCtrls, JvImage,
  ComCtrls, Buttons, JvExButtons, JvBitBtn, MMJPanel, uFiscalCls, uMovimento,
  uVendaCls, DBXpress, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  FMTBcd, DB, SqlExpr, Provider, DBClient;

type
  TfTerminalNTC = class(TForm)
    MMJPanel5: TMMJPanel;
    JvExcluir: TJvBitBtn;
    JvImprimir: TJvBitBtn;
    JvFinalizar: TJvBitBtn;
    JvSair: TJvBitBtn;
    JvBitBtn3: TJvBitBtn;
    JvBitBtn6: TJvBitBtn;
    JvBitBtn7: TJvBitBtn;
    MMJPanel2: TMMJPanel;
    JvDBGrid1: TJvDBGrid;
    MMJPanel9: TMMJPanel;
    JvLabel3: TJvLabel;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    edtCodBarra: TEdit;
    JvBitBtn1: TJvBitBtn;
    rg1: TRadioGroup;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    JvDBCalcEdit3: TJvDBCalcEdit;
    JvBitBtn2: TJvBitBtn;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    MMJPanel3: TMMJPanel;
    pgc1: TPageControl;
    ts1: TTabSheet;
    pnl1: TPanel;
    pnl2: TPanel;
    JvImage1: TJvImage;
    MMJPanel7: TMMJPanel;
    JvTransparentButton1: TJvTransparentButton;
    JvTransparentButton2: TJvTransparentButton;
    JvTransparentButton3: TJvTransparentButton;
    JvTransparentButton4: TJvTransparentButton;
    JvTransparentButton6: TJvTransparentButton;
    JvTransparentButton7: TJvTransparentButton;
    JvTransparentButton8: TJvTransparentButton;
    JvTransparentButton9: TJvTransparentButton;
    JvTransparentButton11: TJvTransparentButton;
    JvTransparentButton12: TJvTransparentButton;
    JvTransparentButton13: TJvTransparentButton;
    JvTransparentButton14: TJvTransparentButton;
    JvTransparentButton21: TJvTransparentButton;
    JvTransparentButton22: TJvTransparentButton;
    JvTransparentButton23: TJvTransparentButton;
    JvTransparentButton24: TJvTransparentButton;
    ts2: TTabSheet;
    JvTransparentButton16: TJvTransparentButton;
    JvTransparentButton17: TJvTransparentButton;
    JvTransparentButton18: TJvTransparentButton;
    JvTransparentButton19: TJvTransparentButton;
    JvTransparentButton20: TJvTransparentButton;
    JvDBGrid2: TJvDBGrid;
    MMJPanel1: TMMJPanel;
    procedure edtCodBarraKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvBitBtn6Click(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    // Classes utilizadas
    v_ClassePDV   : TFiscalCls;
    v_ClasseMov   : TMovimento;
    v_ClasseVenda : TVendaCls;
    v_sqlConsulta : TSQLDataSet;
    p_sqlconsulta : TDataSetProvider;
    c_sqlConsulta : TClientDataSet;
    // Variaveis
    var_codMovimento : Integer;
    TD: TTransactionDesc;
    var_TEXTOSQL : string;
    procedure EditaComanda;
    procedure InsereComanda;
    procedure Incluir_Produtos;
    procedure ColocaNomeNosBotoes;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTerminalNTC: TfTerminalNTC;

implementation

uses UDm, uAbrirCaixa, UDM_MOV, uIncluirProdutos, u_mesas, uSuites,
  uCadClientes2;

{$R *.dfm}

procedure TfTerminalNTC.edtCodBarraKeyPress(Sender: TObject; var Key: Char);
begin
   // se a tecla precionada não for numero e nem o Enter =#13 executa o tab = pula para proximo campo
   if ((not (Key in['0'..'9',Chr(8)])) and (key <> #13)) then
      Key:= #0;

   if (key = #13) then
   begin
     if (edtCodBarra.Text = '') then
     begin
       ShowMessage('Digite o nº da COMANDA ou COLABORADOR');
       Exit;
     end;

     if (v_ClassePDV.VerificaCaixaAberto = False) then
     begin
       ShowMessage('não existe "CAIXA" aberto');
       Exit;
     end;
     //v_ClassePDV.var_TipoCliente := 0; // Clientes
     if (rg1.ItemIndex = 0) then
        v_ClassePDV.var_TipoCliente := 1; // Comanda
     if (rg1.ItemIndex = 1) then
        v_ClassePDV.var_TipoCliente := 2; // Colaborador

     if (v_ClassePDV.PegaStatusdoMovimento(StrToInt(edtCodBarra.Text), v_ClassePDV.v_DataCaixa) = 'SEMAUTORIZACAO') then
     begin
       if (rg1.ItemIndex = 0) then
          ShowMessage('Usuario não tem Permissão para abertura de "COMANDA"');
       if (rg1.ItemIndex = 1) then
          ShowMessage('Usuario não tem Permissão para abertura de "COLABORADORES"');
       Exit;
     end;
     if (v_ClassePDV.PegaStatusdoMovimento(StrToInt(edtCodBarra.Text), v_ClassePDV.v_DataCaixa) = 'FINALIZADA') then
     begin
       ShowMessage('Comanda Finalizada');
       Exit;
     end;
     if (v_ClassePDV.PegaStatusdoMovimento(StrToInt(edtCodBarra.Text), v_ClassePDV.v_DataCaixa) = 'CANCELADA') then
     begin
       ShowMessage('Comanda Cancelada');
       Exit;
     end;
     if (v_ClassePDV.PegaStatusdoMovimento(StrToInt(edtCodBarra.Text), v_ClassePDV.v_DataCaixa) = 'BLOQUEADO') then
     begin
       if (rg1.ItemIndex = 0) then
          ShowMessage('Comanda Bloqueada');
       if (rg1.ItemIndex = 1) then
          ShowMessage('Colaborador Bloqueado para consumo.');
       Exit;
     end;
     if (v_ClassePDV.PegaStatusdoMovimento(StrToInt(edtCodBarra.Text), v_ClassePDV.v_DataCaixa) = 'ABERTA') then
     begin
        EditaComanda;
        if (MessageDlg('Lançar produtos ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
          Incluir_Produtos;
     end;
     if (v_ClassePDV.PegaStatusdoMovimento(StrToInt(edtCodBarra.Text), v_ClassePDV.v_DataCaixa) = 'ABRIRCOMANDA') then
     begin
        InsereComanda;
        EditaComanda;
        if (MessageDlg('Lançar produtos ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
          Incluir_Produtos;
     end;
   end;
end;


procedure TfTerminalNTC.EditaComanda;
begin
   if (DM_MOV.c_movimento.Active) then
       DM_MOV.c_movimento.Close;
   var_TEXTOSQL := 'select mov.* ,cli.NOMECLIENTE,usu.NOMEUSUARIO from MOVIMENTO mov ' +
                   'inner join CLIENTES cli on cli.CODCLIENTE = mov.CODCLIENTE ' +
                   'inner join USUARIO usu on usu.CODUSUARIO= mov.CODUSUARIO ' +
                   'where mov.CODMOVIMENTO = ' + IntToStr(v_ClassePDV.v_CodMovimento);
   DM_MOV.c_movimento.CommandText := var_TEXTOSQL;
   DM_MOV.c_movimento.Open;

   if (DM_MOV.c_movdet.Active) then
     DM_MOV.c_movdet.Close;
   DM_MOV.c_movdet.Params[0].AsInteger := v_ClassePDV.v_CodMovimento;
   DM_MOV.c_movdet.Open;
end;

procedure TfTerminalNTC.InsereComanda;
begin
  if (rg1.ItemIndex = 0) then
     v_ClassePDV.var_TipoCliente := 1; // Comanda
  if (rg1.ItemIndex = 1) then
     v_ClassePDV.var_TipoCliente := 2; // Colaborador

  v_ClasseMov.CodCliente := v_ClassePDV.PegaCodigoCliente(edtCodBarra.Text, v_ClassePDV.var_TipoCliente);
  v_ClasseMov.Status := 0;
  v_ClasseMov.CodNatureza := 3; // Venda
  v_ClasseMov.CodCCusto := v_ClassePDV.v_Cod_Caixa;
  v_ClasseMov.CodUsuario := usulog;
  v_ClasseMov.DataMov := v_ClassePDV.v_DataCaixa;
  v_ClasseMov.TipoPedido := 'C'; //C = Comanda F = Funcionarios

  try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    var_codMovimento := v_ClasseMov.inserirMovimento(0); //Zero insere novo movimento e retorna o codMovimento
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;

end;

procedure TfTerminalNTC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  v_ClassePDV.Destroy;
  v_ClasseMov.Destroy;
end;

procedure TfTerminalNTC.JvBitBtn6Click(Sender: TObject);
begin
  fAbrirCaixa := TfAbrirCaixa.create(Application);
  try
    fAbrirCaixa.ShowModal;
  finally
    fAbrirCaixa.Free;
  end;
end;

procedure TfTerminalNTC.Incluir_Produtos;
begin
  fIncluirProdutos := TfIncluirProdutos.Create(Application);
  try
     fIncluirProdutos.ShowModal;
  finally
     fIncluirProdutos.Free;
  end;
end;

procedure TfTerminalNTC.JvBitBtn2Click(Sender: TObject);
begin
  F_MESAS := TF_MESAS.Create(Application);
  try
    F_MESAS.ShowModal;
  finally
    F_MESAS.Free;
  end;
end;

procedure TfTerminalNTC.ColocaNomeNosBotoes;
var
  i : integer;
  numeroComp : Smallint;
begin
  numeroComp := 0;
  for i := 0 to  componentCount -1 do
  begin
    if (numeroComp = 0) then
    begin
      if Components[i] is TJvTransparentButton then
      begin
        numeroComp := i-1;
      end;
    end;
  end;
  // Abre a Tabela Clientes contendo as Comandas ou Mesas
  try
    v_sqlConsulta := TSQLDataSet.Create(DM);
    p_sqlConsulta := TDataSetProvider.Create(DM);
    c_sqlConsulta := TClientDataSet.Create(DM);
    v_sqlConsulta.SQLConnection := dm.sqlsisAdimin;
    p_sqlconsulta.DataSet := v_sqlConsulta;
    p_sqlconsulta.Name := 'pdsp';
    c_sqlConsulta.ProviderName := p_sqlconsulta.Name;

    var_TEXTOSQL := 'SELECT PARAMETRO FROM PARAMETRO WHERE D1 = ' + QuotedStr('SUITES') +
                  ' and D2 <> ' + QuotedStr('S');
    v_sqlConsulta.CommandText := var_TEXTOSQL;
    v_sqlConsulta.Open;
    c_sqlConsulta.Open;
    c_sqlConsulta.First;
    while not (c_sqlConsulta.Eof) do
    begin
      TJvTransparentButton(Components[c_sqlConsulta.RecNo + numeroComp]).Visible := True;
      TJvTransparentButton(Components[c_sqlConsulta.RecNo + numeroComp]).Caption := c_sqlConsulta.Fields[0].AsString;
      TJvTransparentButton(Components[c_sqlConsulta.RecNo + numeroComp]).Font.Name := 'Cooper Black';
      TJvTransparentButton(Components[c_sqlConsulta.RecNo + numeroComp]).Font.Color := clBlack;
      c_sqlConsulta.Next;
    end;
  finally
    v_sqlConsulta.Destroy;
    p_sqlConsulta.Destroy;
    c_sqlConsulta.Destroy;
  end;

end;

procedure TfTerminalNTC.JvBitBtn3Click(Sender: TObject);
begin
  fCadClientes2 := TfCadClientes2.Create(Application);
  try
    fCadClientes2.ShowModal;
  finally
    fCadClientes2.Free;
  end;
end;

procedure TfTerminalNTC.FormShow(Sender: TObject);
begin
   v_ClassePDV := TFiscalCls.Create;
   v_ClasseMov := TMovimento.Create;
   ColocaNomeNosBotoes;
end;

end.
