unit uCotacoesHist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, Grids, DBGrids, JvExDBGrids, JvDBGrid;

type
  TfCotacoesHist = class(TfPai_new)
    Label1: TLabel;
    edProduto: TEdit;
    Label4: TLabel;
    edFornec: TEdit;
    btnClienteProcura: TBitBtn;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    cbMes: TComboBox;
    dta1: TJvDatePickerEdit;
    dta2: TJvDatePickerEdit;
    edFornecNome: TEdit;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCotacoesHist: TfCotacoesHist;

implementation

{$R *.dfm}

procedure TfCotacoesHist.BitBtn1Click(Sender: TObject);
var strC, strCa : string;
begin
  strC := 'SELECT DISTINCT a.COTACAO_DATA, a.COTACAO_FORNEC, ' +
   ' a.COTACAO_SOLICIT, a.COTACAO_SITUACAO, ' +
   ' f.RAZAOSOCIAL ' +
   '  FROM COMPRA_COTACAO a , FORNECEDOR F' +
   ' WHERE a.COTACAO_FORNEC = f.CODFORNECEDOR';
  strCa := ' a.COTACAO_DATA BETWEEN ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', dta1.Date)) + ' AND '  +
    QuotedStr(FormatDateTime('mm/dd/yyyy', dta2.Date));
  if (edFornec.Text <> '') then
  begin
    strCa := strCa + ' a.COTACAO_FORNEC = ' + edFornec.Text;
  end;
  if (edProduto.Text <> '') then
  begin
    strCa := strCa + ' a.COTACAO_ITEM = ' + QuotedStr(edProduto.Text);
  end;

end;

procedure TfCotacoesHist.JvDBGrid1DblClick(Sender: TObject);
var strP: string;
begin
  strP := 'SELECT a.COTACAO_CODIGO, a.COTACAO_DATA, a.COTACAO_FORNEC, ' +
   ' a.COTACAO_SOLICIT, a.COTACAO_ITEM, a.COTACAO_ITEMDESCRICAO, a.COTACAO_SITUACAO, ' +
   ' a.COTACAO_QTDE, a.COTACAO_PRECO, a.COTACAO_USER, a.COTACAO_TIPO, ' +
   ' a.COTACAO_CODSOLIC, a.COTACAO_DTENTREGA, a.COTACAO_PRAZO, a.COTACAO_OBSERVACAO, ' +
   ' a.COTACAO_IPI, a.COTACAO_DESCONTO, a.COTACAO_FRETE' +
   '  FROM COMPRA_COTACAO a ';
  strP := strP + 'where a.COTACAO_FORNEC = ' + edFornec.Text;
  if (edProduto.Text <> '') then
  begin
    strP := strP + 'and a.COTACAO_ITEM = ' + QuotedStr(edProduto.Text);
  end;


end;

end.
