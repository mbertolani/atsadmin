unit uDescontoTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, JvExStdCtrls, JvEdit, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  DBCtrls;

type
  TfDescontoTitulos = class(TfPai_new)
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    ds_conta: TDataSource;
    edPreco: TJvCalcEdit;
    Label2: TLabel;
    JvCalcEdit1: TJvCalcEdit;
    Label3: TLabel;
    JvCalcEdit2: TJvCalcEdit;
    Label4: TLabel;
    JvCalcEdit3: TJvCalcEdit;
    Label5: TLabel;
    JvEdit1: TJvEdit;
    Label6: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDescontoTitulos: TfDescontoTitulos;

implementation

uses UDm;

{$R *.dfm}

end.
