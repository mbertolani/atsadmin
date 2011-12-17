unit uClienteFiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, StdCtrls, Buttons;

type
  TfClienteFiltro = class(TForm)
    GroupBox6: TGroupBox;
    CBox3: TRadioButton;
    CBox4: TRadioButton;
    cbtemail: TRadioButton;
    GroupBox1: TGroupBox;
    CBox1: TRadioButton;
    CBox2: TRadioButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    codVen: TEdit;
    nomeVen: TEdit;
    BitBtn5: TBitBtn;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    edtUF: TEdit;
    edtDDD: TEdit;
    GroupBox7: TGroupBox;
    cbfisica: TRadioButton;
    cbjuridica: TRadioButton;
    cbttipo: TRadioButton;
    Label10: TLabel;
    JvDatePickerEdit2: TJvDatePickerEdit;
    JvDatePickerEdit3: TJvDatePickerEdit;
    GroupBox4: TGroupBox;
    edCidade: TEdit;
    BitBtn1: TBitBtn;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    edCodigo: TEdit;
    edNome: TEdit;
    edRazao: TEdit;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    RadioButton5: TRadioButton;
    procedure BitBtn3Click(Sender: TObject);
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
  edCodigo.Text := '';
  edNome.Text := '';
  edCidade.Text := '';
  codVen.Text := '';
  nomeVen.Text := '';
  cbtemail.Checked := true;
  cbttipo.Checked := true;
  CBox1.Checked := true;
  //RadioButton5.Checked := False;
  //BitBtn2.Click;

end;

end.
