unit uListaPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, DB;

type
  TfListaPedido = class(TForm)
    DBGrid1: TDBGrid;
    dsPedido: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fListaPedido: TfListaPedido;

implementation

{$R *.dfm}

end.
