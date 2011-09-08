unit uEndereco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, ExtCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  StdCtrls, Menus, XPMenu, DB, Buttons, MMJPanel;

type
  TfEndereco = class(TfPai_new)
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edLogradouro: TEdit;
    edNumero: TEdit;
    edBairro: TEdit;
    edComplemento: TEdit;
    BitBtn1: TBitBtn;
    edCidade: TEdit;
    edUF: TEdit;
    edCEP: TJvMaskEdit;
    edIBGE: TEdit;
    RadioGroup2: TRadioGroup;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEndereco: TfEndereco;

implementation

uses UDm, sCtrlResize;

{$R *.dfm}

procedure TfEndereco.FormShow(Sender: TObject);
begin
  //inherited;
  sCtrlResize.CtrlResize(TForm(fEndereco));
end;

end.
