unit U_RelTerminal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, JvExControls, JvLabel, StdCtrls, Mask,
  JvExMask, JvToolEdit, ExtCtrls, MMJPanel, Buttons;

type
  TF_RelTerminal = class(TForm)
    MMJPanel7: TMMJPanel;
    MMJPanel1: TMMJPanel;
    lbl1: TLabel;
    cbb1: TComboBox;
    edData: TJvDateEdit;
    JvLabel11: TJvLabel;
    JvLabel1: TJvLabel;
    sVenda: TSQLDataSet;
    sVendaCODPRODUTO: TIntegerField;
    sVendaDESCRICAO: TStringField;
    sVendaQUTDE: TFloatField;
    sVendaVARLORUNIT: TFloatField;
    sVendaVARLORTOTAL: TFloatField;
    sVendaIDMOV: TIntegerField;
    sVendaVBASE: TFloatField;
    btnVendas: TBitBtn;
    chk1: TCheckBox;
    cCaixa: TSQLDataSet;
    cCaixaIDCAIXACONTROLE: TIntegerField;
    cCaixaCODCAIXA: TIntegerField;
    cCaixaCODUSUARIO: TIntegerField;
    cCaixaDATAFECHAMENTO: TDateField;
    cCaixaSITUACAO: TStringField;
    cCaixaMAQUINA: TStringField;
    cCaixaDATAABERTURA: TDateField;
    cCaixaVALORABRE: TFloatField;
    cCaixaVALORFECHA: TFloatField;
    cCaixaNOMECAIXA: TStringField;
    dlgSave1: TSaveDialog;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    JvDateEdit1: TJvDateEdit;
    JvLabel2: TJvLabel;
    bvl1: TBevel;
    procedure btnVendasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    IMPRESSORA:TextFile;
    Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6, texto7, logradouro,cep,fone : string;
    SqlCr, sqlTexto, sqlTexto1, DataStr, sqlGrupoCR, impCR: String;
    vUsercaixa, vAdm, nome, vNomeCliente, vEnderecoCliente, vFonecli, vObs : string;
    codigoCaixa, caixabanco, porta, tipoimpressao, nomeCLI, NOMECOLAB,NOMECOLABE1 : string;
    Totalgeral, totalprod , total, porc, totgeral, liquido, liquido1, diaria, hospedagem, diaria1, hospedagem1 : double;
    vValor, vTotal, Valor :Double;
    codigo, idCaixa : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

const
  cJustif = #27#97#51;
  cEject = #12;
  { Tamanho da fonte }
  c10cpi = #18;
  c12cpi = #27#77;
  c17cpi = #15;
  cIExpandido = #14;
  cFExpandido = #20;
  { Formatação da fonte }
  cINegrito = #27#71;
  cFNegrito = #27#72;
  cIItalico = #27#52;
  cFItalico = #27#53;
    

var
  F_RelTerminal: TF_RelTerminal;

implementation

uses UDm, uMovCaixa;

{$R *.dfm}

procedure TF_RelTerminal.btnVendasClick(Sender: TObject);
begin
  if( chk1.Checked = True)then
     tipoimpressao := 'txt';

  if (edData.Text = '  /  /    ') then
  begin
     MessageDlg('Preencha o campo data', mtWarning, [mbOK], 0);
     edData.SetFocus;
     exit;
  end;
{
  if (ComboBox1.Text <> '') then
  begin
    if (cCaixa.Active) then
      cCaixa.Close;
    cCaixa.Params[0].AsString := ComboBox1.Text;
    cCaixa.Params[1].AsDate := edData.Date;
    cCaixa.Open;
    if (not cCaixa.IsEmpty) then
    begin
      idCaixa := cCaixaIDCAIXACONTROLE.AsInteger;
    end
    else
    begin
      MessageDlg('Caixa não encontrado', mtWarning, [mbOK], 0);
      exit;
    end;
  end
  else
    idCaixa  := 9999999;
}
  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endereço-----}
  Texto  := '          ' + dm.cds_empresaEMPRESA.AsString;
  Texto1 := '----------------------------------------' ;
  Texto2 := '             RELATÓRIO DE VENDAS            ' ;
  Texto3 := 'Dia : ' + DateTimeToStr(edData.Date);
  Texto4 := 'Descricao    Qutde   Unt.R$   Total R$  ' ;
  {-------------------Imprimi Cabeçalho-----------------------}
  // Para gravar em arquivo
  if (tipoimpressao = 'txt') then
  begin
    dlgSave1.Execute;
    AssignFile(IMPRESSORA, dlgSave1.FileName);
  end
  else
  begin
    AssignFile(IMPRESSORA,'LPT1:');
  end;
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi, texto);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(Impressora, c10cpi, texto2);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(Impressora, c10cpi, texto3);
  Writeln(Impressora, c10cpi, texto4);
  Writeln(Impressora, c10cpi, texto1);
  if (sVenda.Active) then
    sVenda.Close;
  //sVenda.Params[0].AsInteger := idCaixa;
  sVenda.Params[0].AsDate := edData.Date;
  sVenda.Open;
  sVenda.First;
  Totalgeral := 0;
  while not sVenda.Eof do
  begin
    texto6 := Copy(sVendaDESCRICAO.AsString, 0, 38);
    Writeln(Impressora, c10cpi, texto6);
    Write(Impressora, c10cpi + Format('%16.2n',[sVendaQUTDE.value]));
    Write(Impressora, c10cpi + Format('%10.2n',[sVendaVARLORUNIT.value]));
    totalprod := sVendaQUTDE.value * sVendaVARLORUNIT.value;
    Writeln(Impressora, c10cpi + Format('%10.2n',[totalprod]));
    Totalgeral := Totalgeral + totalprod;
    sVenda.next;
  end;
  {-----------------------------------------------------------}
  {-------------------Imprimi final do Pedido-----------------}
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------']));
  Writeln(IMPRESSORA);
  Texto5 := '               Total : R$   ';
  Write(Impressora, c10cpi, texto5 );
  Writeln(Impressora, c10cpi + Format(' %8.2n',[Totalgeral]));
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  CloseFile(IMPRESSORA);
  //*************************************************************
    sVenda.Close;
    dm.cds_empresa.Close;
  //  cCaixa.Close;
end;

procedure TF_RelTerminal.FormShow(Sender: TObject);
begin
{  usaDll := 'FALSE';
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DLLBEMATECH';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    usaDll := 'TRUE';
    }
end;

procedure TF_RelTerminal.btn3Click(Sender: TObject);
begin
    Close;
end;

procedure TF_RelTerminal.btn2Click(Sender: TObject);
begin
  fMovCaixa := TfMovCaixa.Create(Application);
  try
    fMovCaixa.ShowModal;
  finally
    fMovCaixa.Free;
  end;
end;

end.
