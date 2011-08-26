unit uCliente1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, uCliente,
  Mask, JvExMask, JvToolEdit, JvMaskEdit;

type
  TfCliente1 = class(TfPai_new)
    rgTipo: TRadioGroup;
    gbNome: TGroupBox;
    edNomeCliente: TEdit;
    lblNome: TLabel;
    lblRazao: TLabel;
    edRazaoSocial: TEdit;
    GroupBox1: TGroupBox;
    JvDBUltimGrid1: TJvDBUltimGrid;
    GroupBox2: TGroupBox;
    lblCnpj: TLabel;
    edCnpj: TEdit;
    lblIE: TLabel;
    edIE: TEdit;
    edOrgaoEmissor: TEdit;
    lblOrgaoEmissor: TLabel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    edContato: TEdit;
    RadioGroup1: TRadioGroup;
    procedure rgTipoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvDBUltimGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    FCli : TCliente;
  public
    { Public declarations }
  end;

var
  fCliente1: TfCliente1;

implementation

uses uEndereco, UDm;


{$R *.dfm}

procedure TfCliente1.rgTipoClick(Sender: TObject);
begin
  inherited;
  if (rgTipo.ItemIndex = 0) then
  begin
    lblNome.Caption  := 'Nome';
    lblRazao.Caption := 'Apelido';
    lblIE.Caption    := 'R.G.';
    lblCnpj.Caption  := 'CPF';
  end;
  if (rgTipo.ItemIndex = 1) then
  begin
    lblNome.Caption  := 'Razão Soc.';
    lblRazao.Caption := 'Nome Fantasia';
    lblIE.Caption    := 'Insc. Estadual';
    lblCnpj.Caption  := 'CNPJ';
  end;
end;

procedure TfCliente1.btnGravarClick(Sender: TObject);
begin
  inherited;
  Fcli.NomeCliente := edNomeCliente.Text;
  FCli.RazaoSocial := edRazaoSocial.Text;
  FCli.TipoFirma   := rgTipo.ItemIndex;
  
end;

procedure TfCliente1.FormCreate(Sender: TObject);
begin
  inherited;
  Fcli := TCliente.Create;
end;

procedure TfCliente1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FCli.Destroy;
end;

procedure TfCliente1.JvDBUltimGrid1DblClick(Sender: TObject);
begin
  inherited;
  fEndereco.ShowModal;
end;

end.
