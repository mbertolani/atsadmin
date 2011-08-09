unit uCliente1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel;

type
  TfCliente1 = class(TfPai_new)
    rgTipo: TRadioGroup;
    gbNome: TGroupBox;
    edNomeCliente: TEdit;
    lblNome: TLabel;
    lblRazao: TLabel;
    edRazaoSocial: TEdit;
    procedure rgTipoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCliente1: TfCliente1;

implementation

{$R *.dfm}

procedure TfCliente1.rgTipoClick(Sender: TObject);
begin
  inherited;
  if (rgTipo.ItemIndex = 0) then
  begin
    lblNome.Caption  := 'Nome';
    lblRazao.Caption := 'Apelido';
  end;
  if (rgTipo.ItemIndex = 1) then
  begin
    lblNome.Caption  := 'Razão';
    lblRazao.Caption := 'Fantasia';
  end;
end;

end.
