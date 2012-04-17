unit uIncluirProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EDBFind, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  ExtCtrls, MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvExStdCtrls,
  JvEdit, JvDBSearchEdit;

type
  TfIncluirProdutos = class(TForm)
    MMJPanel1: TMMJPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    Edit3: TJvCalcEdit;
    Edit4: TJvCalcEdit;
    JvCalcEdit1: TJvCalcEdit;
    edPorcento: TJvCalcEdit;
    edt1: TEdit;
    cbbGarcom: TComboBox;
    cbbGarota: TComboBox;
    cbbSuites: TComboBox;
    cbb1: TComboBox;
    cbbCortesia: TComboBox;
    JvDBGrid1: TJvDBGrid;
    JvDBSearchEdit1: TJvDBSearchEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIncluirProdutos: TfIncluirProdutos;

implementation

{$R *.dfm}

end.
