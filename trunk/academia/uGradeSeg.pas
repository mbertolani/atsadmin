unit uGradeSeg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  Buttons, JvExButtons, JvButtons, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, Mask, JvExMask, JvToolEdit, ComCtrls, JvExComCtrls,
  JvListView, ImgList, DateUtils, uUtils;

type
  MinhaThread = class (TThread)
  private
    procedure abreGrade;
    procedure abreGrade_terca;
    procedure abreGrade_quarta;
    procedure abreGrade_quinta;
    procedure abreGrade_sexta;
  protected
    procedure Execute(); override;
  end;
  TForm1 = class(TForm)
    sqlGrade: TSQLDataSet;
    dspGrade: TDataSetProvider;
    cdsGrade: TClientDataSet;
    dsGrade: TDataSource;
    JvHTButton1: TJvHTButton;
    cdsGradeDIASEMANA: TStringField;
    cdsGradeCODALUNO: TIntegerField;
    cdsGradeNOMEALUNO: TStringField;
    cdsGradeTURMA: TStringField;
    cdsGradePRESENCA: TStringField;
    cdsGradeCODTURMA: TIntegerField;
    cdsGradeCOLUNA: TSmallintField;
    cdsGradeDIASEM: TSmallintField;
    cdsGradeDATADIA: TDateField;
    cdsGradePRIMDIA: TStringField;
    cdsGradeSEGUDIA: TStringField;
    cdsGradeTERCDIA: TStringField;
    cdsGradeQUARDIA: TStringField;
    cdsGradeQUINDIA: TStringField;
    cdsGradeCONTALINHA: TSmallintField;
    data1: TJvDateEdit;
    data2: TJvDateEdit;
    cdsGradeNUMVAGA: TSmallintField;
    cdsGradeDIA1: TSmallintField;
    cdsGradeDIA2: TSmallintField;
    cdsGradeDIA3: TSmallintField;
    cdsGradeDIA4: TSmallintField;
    cdsGradeDIA5: TSmallintField;
    ComboBox1: TComboBox;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Grid1: TStringGrid;
    Grid2: TStringGrid;
    grid3: TStringGrid;
    Grid4: TStringGrid;
    Grid5: TStringGrid;
    grid6: TStringGrid;
    grid7: TStringGrid;
    grid8: TStringGrid;
    grid9: TStringGrid;
    grid10: TStringGrid;
    grid11: TStringGrid;
    grid12: TStringGrid;
    grid13: TStringGrid;
    grid14: TStringGrid;
    grid15: TStringGrid;
    grid16: TStringGrid;
    grid17: TStringGrid;
    grid18: TStringGrid;
    TabSheet2: TTabSheet;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    StringGrid6: TStringGrid;
    StringGrid7: TStringGrid;
    StringGrid8: TStringGrid;
    StringGrid9: TStringGrid;
    StringGrid10: TStringGrid;
    StringGrid11: TStringGrid;
    StringGrid12: TStringGrid;
    StringGrid13: TStringGrid;
    StringGrid14: TStringGrid;
    StringGrid15: TStringGrid;
    StringGrid16: TStringGrid;
    StringGrid17: TStringGrid;
    StringGrid18: TStringGrid;
    TabSheet3: TTabSheet;
    StringGrid19: TStringGrid;
    StringGrid20: TStringGrid;
    StringGrid21: TStringGrid;
    StringGrid22: TStringGrid;
    StringGrid23: TStringGrid;
    StringGrid24: TStringGrid;
    StringGrid25: TStringGrid;
    StringGrid26: TStringGrid;
    StringGrid27: TStringGrid;
    StringGrid28: TStringGrid;
    StringGrid29: TStringGrid;
    StringGrid30: TStringGrid;
    StringGrid31: TStringGrid;
    StringGrid32: TStringGrid;
    StringGrid33: TStringGrid;
    StringGrid34: TStringGrid;
    StringGrid35: TStringGrid;
    StringGrid36: TStringGrid;
    TabSheet4: TTabSheet;
    StringGrid37: TStringGrid;
    StringGrid38: TStringGrid;
    StringGrid39: TStringGrid;
    StringGrid40: TStringGrid;
    StringGrid41: TStringGrid;
    StringGrid42: TStringGrid;
    StringGrid43: TStringGrid;
    StringGrid44: TStringGrid;
    StringGrid45: TStringGrid;
    StringGrid46: TStringGrid;
    StringGrid47: TStringGrid;
    StringGrid48: TStringGrid;
    StringGrid49: TStringGrid;
    StringGrid50: TStringGrid;
    StringGrid51: TStringGrid;
    StringGrid52: TStringGrid;
    StringGrid53: TStringGrid;
    StringGrid54: TStringGrid;
    TabSheet5: TTabSheet;
    StringGrid55: TStringGrid;
    StringGrid56: TStringGrid;
    StringGrid57: TStringGrid;
    StringGrid58: TStringGrid;
    StringGrid59: TStringGrid;
    StringGrid60: TStringGrid;
    StringGrid61: TStringGrid;
    StringGrid62: TStringGrid;
    StringGrid63: TStringGrid;
    StringGrid64: TStringGrid;
    StringGrid65: TStringGrid;
    StringGrid66: TStringGrid;
    StringGrid67: TStringGrid;
    StringGrid68: TStringGrid;
    StringGrid69: TStringGrid;
    StringGrid70: TStringGrid;
    StringGrid71: TStringGrid;
    StringGrid72: TStringGrid;
    TabSheet6: TTabSheet;
    procedure JvHTButton1Click(Sender: TObject);
    procedure Grid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure PreencheGrid(grid : TStringGrid);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses uDmGrade;

{$R *.dfm}

procedure TForm1.JvHTButton1Click(Sender: TObject);
var i : integer;
begin
  //JvList1.Clear;
  if (comboBox1.Text = '2') then // Segunda Feira
    Form1.PageControl1.ActivePageIndex := 0;
  MinhaThread.Create(false);
end;

procedure TForm1.PreencheGrid(grid: TStringGrid);
 var i: integer;
begin
  grid.ColWidths[0] := 140;
  grid.Cells[0,0] := cdsGradeTURMA.AsString;
  grid.Cells[1,0] := cdsGradeDIA1.AsString;
  grid.Cells[2,0] := cdsGradeDIA2.AsString;
  grid.Cells[3,0] := cdsGradeDIA3.AsString;
  grid.Cells[4,0] := cdsGradeDIA4.AsString;
  grid.Cells[5,0] := cdsGradeDIA5.AsString;
  grid.ColWidths[1] := 18;
  grid.ColWidths[2] := 18;
  grid.ColWidths[3] := 18;
  grid.ColWidths[4] := 18;
  grid.ColWidths[5] := 18;
  grid.RowCount := cdsGrade.RecordCount;
  for i := 1 to (cdsGrade.RecordCount) do
  begin
    grid.Cells[0,i] := cdsGradeNOMEALUNO.AsString;
    grid.Cells[1,i] := cdsGradePRIMDIA.AsString;
    grid.Cells[2,i] := cdsGradeSEGUDIA.AsString;
    grid.Cells[3,i] := cdsGradeTERCDIA.AsString;
    grid.Cells[4,i] := cdsGradeQUARDIA.AsString;
    grid.Cells[5,i] := cdsGradeQUINDIA.AsString;
    cdsGrade.Next;
  end;
end;

{ MinhaThread }

procedure MinhaThread.abreGrade;
begin
  Form1.cdsGrade.Filter := 'CONTALINHA=1';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid1);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=2';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid2);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=3';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid3);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=4';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid4);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=5';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid5);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=6';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid6);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=7';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid7);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=8';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid8);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=9';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid9);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=10';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid10);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=11';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid11);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=12';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid12);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=13';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid13);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=14';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid14);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=15';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid15);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=16';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid16);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=17';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid17);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=18';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.grid18);
end;

procedure MinhaThread.abreGrade_quarta;
begin
  Form1.cdsGrade.Filter := 'CONTALINHA=1';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.StringGrid19);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=2';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid20);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=3';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid21);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=4';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid22);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=5';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid23);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=6';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid24);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=7';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid25);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=8';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid26);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=9';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid27);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=10';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid28);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=11';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid29);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=12';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid30);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=13';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid31);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=14';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid32);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=15';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid33);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=16';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid34);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=17';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid35);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=18';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid36);

end;

procedure MinhaThread.abreGrade_quinta;
begin
  Form1.cdsGrade.Filter := 'CONTALINHA=1';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.StringGrid37);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=2';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid38);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=3';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid39);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=4';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid40);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=5';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid41);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=6';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid42);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=7';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid43);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=8';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid44);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=9';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid45);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=10';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid46);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=11';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid47);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=12';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid48);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=13';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid49);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=14';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid50);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=15';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid51);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=16';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid52);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=17';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid53);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=18';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid54);

end;

procedure MinhaThread.abreGrade_sexta;
begin
  Form1.cdsGrade.Filter := 'CONTALINHA=1';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.StringGrid55);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=2';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid56);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=3';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid57);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=4';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid58);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=5';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid59);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=6';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid60);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=7';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid61);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=8';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid62);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=9';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid63);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=10';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid64);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=11';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid65);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=12';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid66);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=13';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid67);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=14';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid68);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=15';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid69);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=16';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid70);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=17';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid71);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=18';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid72);

end;

procedure MinhaThread.abreGrade_terca;
begin
  Form1.cdsGrade.Filter := 'CONTALINHA=1';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.StringGrid1);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=2';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid2);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=3';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid3);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=4';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid4);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=5';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid5);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=6';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid6);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=7';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid7);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=8';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid8);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=9';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid9);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=10';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid10);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=11';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid11);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=12';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid12);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=13';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid13);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=14';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid14);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=15';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid15);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=16';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid16);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=17';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid17);

  Form1.cdsGrade.Filtered := False;
  Form1.cdsGrade.Filter := 'CONTALINHA=18';
  Form1.cdsGrade.Filtered := True;
  Form1.PreencheGrid(Form1.Stringgrid18);
end;

procedure MinhaThread.Execute;
begin
  inherited;
  if (Form1.cdsGrade.Active) then
    Form1.cdsGrade.Close;
  Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
  Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
  Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';

  Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := Form1.PageControl1.ActivePageIndex + 2;
  Form1.cdsGrade.Open;

  if ((Form1.PageControl1.ActivePageIndex + 2) = 2) then //é Segunda
  begin
    Synchronize(abreGrade);
    // depois faz Terça
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 3;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_terca);
    // depois faz Quarta
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 4;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_quarta);
    // depois faz Quinta
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 5;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_quinta);
    // depois faz Sexta
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 6;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_sexta);
  end;
  if ((Form1.PageControl1.ActivePageIndex + 2) = 3) then //é Terça
  begin
    Synchronize(abreGrade_terca);
    // depois faz Quarta
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 4;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_quarta);
    // depois faz Quinta
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 5;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_quinta);
    // depois faz Sexta
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 6;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_sexta);

    // depois faz Terça
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 2;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade);
  end;
  if ((Form1.PageControl1.ActivePageIndex + 2) = 4) then //é Quarta
  begin
    Synchronize(abreGrade_quarta);
    // depois faz Quinta
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 5;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_quinta);
    // depois faz Sexta
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 6;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_sexta);

    // depois faz Segunda
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 2;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade);

    // depois faz Terca
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 3;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_terca);
  end;
  if ((Form1.PageControl1.ActivePageIndex + 2) = 5) then //é Quinta
  begin
    Synchronize(abreGrade_quinta);
    // depois faz Sexta
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 6;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_sexta);

    // depois faz Segunda
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 2;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade);

    // depois faz Terca
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 3;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_terca);

    // depois faz Quarta
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 4;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_quarta);
  end;
  if ((Form1.PageControl1.ActivePageIndex + 2) = 6) then //é Sexta
  begin
    Synchronize(abreGrade_sexta);
    // depois faz Segunda
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 2;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade);

    // depois faz Terca
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 3;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_terca);

    // depois faz Quarta
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 4;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_quarta);

    // depois faz Quinta
    if (Form1.cdsGrade.Active) then
      Form1.cdsGrade.Close;
    Form1.cdsGrade.Params.ParamByName('DATA1').AsDate := Form1.data1.Date;
    Form1.cdsGrade.Params.ParamByName('DATA2').AsDate := Form1.data2.Date;
    Form1.cdsGrade.Params.ParamByName('GRUPO').AsString := 'NATACAO';
    Form1.cdsGrade.Params.ParamByName('DIA').AsSmallInt := 5;
    Form1.cdsGrade.Open;
    Synchronize(abreGrade_quinta);
  end;

end;

procedure TForm1.Grid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if (cdsGrade.Active) then
  begin
    if ((ACol = 1) and (ARow > 0)) then
    begin
      Grid1.Canvas.FillRect(Rect);
      //ImageList1.Draw(Grid1.Canvas,Rect.Left+10,Rect.top, 1);
      if (cdsGradePRIMDIA.AsString = 'F') then
        ImageList1.Draw(Grid1.Canvas,Rect.Left+10,Rect.top, 0);
      if (cdsGradePRIMDIA.AsString = 'P') then
        ImageList1.Draw(Grid1.Canvas,Rect.Left+10,Rect.top, 1);
      if (cdsGradePRIMDIA.AsString = 'R') then
        ImageList1.Draw(Grid1.Canvas,Rect.Left+10,Rect.top, 2);
    end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var pagina : smallint;
begin
end;

procedure TForm1.FormCreate(Sender: TObject);
var util: TUtils;
begin
  util := TUtils.Create;
  data1.Text := util.pegaIni;
  data2.Text := util.pegaFim;
  util.Destroy;
end;

end.
