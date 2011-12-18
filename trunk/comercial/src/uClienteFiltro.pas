unit uClienteFiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, StdCtrls, Buttons, ExtCtrls;

type
  TfClienteFiltro = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    codVen: TEdit;
    nomeVen: TEdit;
    BitBtn5: TBitBtn;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn13: TBitBtn;
    Panel2: TPanel;
    GroupBox7: TGroupBox;
    cbfisica: TRadioButton;
    cbjuridica: TRadioButton;
    cbttipo: TRadioButton;
    GroupBox1: TGroupBox;
    CBox1: TRadioButton;
    CBox2: TRadioButton;
    GroupBox6: TGroupBox;
    CBox3: TRadioButton;
    CBox4: TRadioButton;
    cbtemail: TRadioButton;
    Panel3: TPanel;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    edCodigo: TEdit;
    edNome: TEdit;
    edRazao: TEdit;
    GroupBox4: TGroupBox;
    edCidade: TEdit;
    BitBtn1: TBitBtn;
    edtUF: TEdit;
    Label5: TLabel;
    edtDDD: TEdit;
    Label7: TLabel;
    GroupBox5: TGroupBox;
    JvDatePickerEdit2: TJvDatePickerEdit;
    JvDatePickerEdit3: TJvDatePickerEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClienteFiltro: TfClienteFiltro;

implementation

{$R *.dfm}

procedure TfClienteFiltro.BitBtn3Click(Sender: TObject);
begin
  //ListaCliente.Close;
  edCodigo.Text     := '';
  edNome.Text       := '';
  edCidade.Text     := '';
  codVen.Text       := '';
  nomeVen.Text      := '';
  cbtemail.Checked  := true;
  cbttipo.Checked   := true;
  CBox1.Checked     := true;
  //RadioButton5.Checked := False;
  //BitBtn2.Click;
end;

procedure TfClienteFiltro.BitBtn13Click(Sender: TObject);
begin
  Close;
end;

procedure TfClienteFiltro.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
