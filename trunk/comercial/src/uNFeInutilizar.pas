unit uNFeInutilizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, JvExMask, JvToolEdit, Buttons,
  MMJPanel, ACBrNFe, xmldom, XMLIntf, msxmldom, XMLDoc;

type
  TfNFeInutilizar = class(TForm)
    MMJPanel1: TMMJPanel;
    edtAno: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtModelo: TEdit;
    edtSerie: TEdit;
    Label3: TLabel;
    edtNumIni: TEdit;
    Label4: TLabel;
    edtNumFim: TEdit;
    Label5: TLabel;
    edtJustificativa: TEdit;
    Label6: TLabel;
    btnInutilizar: TButton;
    btnSair: TButton;
    MemoResp: TMemo;
    procedure btnInutilizarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNFeInutilizar: TfNFeInutilizar;

implementation

uses uNFeletronica;

{$R *.dfm}

Function RemoveChar(Const Texto:String):String;
// Remove caracteres de uma string deixando apenas numeros
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;
end;

procedure TfNFeInutilizar.btnInutilizarClick(Sender: TObject);
begin
 fNFeletronica.ACBrNFe1.WebServices.Inutiliza(RemoveChar(fNFeletronica.sEmpresaCNPJ_CPF.AsString), edtJustificativa.text, StrToInt(edtAno.text), StrToInt(edtModelo.Text), StrToInt(edtSerie.Text), StrToInt(edtNumIni.Text), StrToInt(edtNumFim.Text));
 MemoResp.Lines.Text :=  UTF8Encode(fNFeletronica.ACBrNFe1.WebServices.Inutilizacao.RetWS);
end;

procedure TfNFeInutilizar.btnSairClick(Sender: TObject);
begin
  fNFeInutilizar.Close;
end;

end.
