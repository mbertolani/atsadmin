unit uImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, JvCsvData,  ExtCtrls, DBCtrls,
  ComCtrls, JvCSVParse, Buttons;

type
  TfImport = class(TForm)
    JvCsvDataSet1: TJvCsvDataSet;
    DataSource1: TDataSource;
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    JvCsvDataSet1Sequencial: TStringField;
    JvCsvDataSet1Cdigo: TStringField;
    JvCsvDataSet1DescriodoProduto: TStringField;
    JvCsvDataSet1Qutde: TStringField;
    JvCsvDataSet1UN: TStringField;
    JvCsvDataSet1RCompra: TStringField;
    JvCsvDataSet1RVenda: TStringField;
    JvCsvDataSet1Marca: TStringField;
    JvCsvDataSet1Grupo: TStringField;
    JvCsvDataSet1SubGrupo: TStringField;
    JvCsvDataSet1LocalEstoque: TStringField;
    JvCsvDataSet1ICMS: TStringField;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImport: TfImport;

implementation

{$R *.dfm}

procedure TfImport.BitBtn1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);

   JvCsvDataSet1.Active := False;
   JvCsvDataSet1.AssignFromStrings(Memo1.Lines);
   JvCsvDataSet1.Active := True;

end;

end.
