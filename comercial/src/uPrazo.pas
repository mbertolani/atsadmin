unit uPrazo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls, MMJPanel;

type
  TfPrazo = class(TfPai_new)
    JvDBUltimGrid1: TJvDBUltimGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrazo: TfPrazo;

implementation

uses UDm;

{$R *.dfm}

procedure TfPrazo.FormCreate(Sender: TObject);
begin
//  inherited;

end;

end.
