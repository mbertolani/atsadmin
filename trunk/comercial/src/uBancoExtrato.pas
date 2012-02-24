unit uBancoExtrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel;

type
  TfBancoExtrato = class(TfPai_new)
    ListBox1: TListBox;
    procedure btnProcurarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBancoExtrato: TfBancoExtrato;

implementation

uses uBancoOFX;

{$R *.dfm}

procedure TfBancoExtrato.btnProcurarClick(Sender: TObject);
var
  BancoOFX1: TBancoOFX;
  i:integer;
begin
  BancoOFX1 := TBancoOFX.create(self);
  BancoOFX1.OFXFile := 'C:\Home\2012_02.ofx';
  BancoOFX1.Process;
  ListBox1.Clear;
  for i := 0 to BancoOFX1.Count-1 do
  begin
    ListBox1.Items.Add(BancoOFX1.Get(i).Desc + ' ' +
                       FloatToStr(BancoOFX1.Get(i).Value) + ' ' +
                       BancoOFX1.Get(i).MovType + ' ' +
                       dateToStr(BancoOFX1.Get(i).MovDate) + ' ' +
                       BancoOFX1.Get(i).ID + ' ' +
                       BancoOFX1.Get(i).Document + ' '  );
  end;
end;

end.
