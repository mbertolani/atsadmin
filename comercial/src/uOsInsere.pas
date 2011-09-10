unit uOsInsere;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  JvExStdCtrls, JvMemo, Menus, XPMenu, DB, Buttons, ExtCtrls, MMJPanel;

type
  TfOsInsere = class(TfPai_new)
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    edServico: TJvMemo;
    edQtdeServ: TJvCalcEdit;
    edPrecoServ: TJvCalcEdit;
    edDescServ: TJvCalcEdit;
    edDescVlrServ: TJvCalcEdit;
    edTotalServ: TJvCalcEdit;
    edColaborador: TEdit;
    edProduto: TEdit;
    BitBtn3: TBitBtn;
    Edit3: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    lblServico: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOsInsere: TfOsInsere;

implementation

uses uOs;

{$R *.dfm}

end.
