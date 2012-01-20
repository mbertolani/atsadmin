unit uRelNfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, rpcompobase, rpvclreport,
  Buttons;

type
  TfRelNfe = class(TForm)
    Label5: TLabel;
    Label7: TLabel;
    Dta1: TJvDateEdit;
    Dta2: TJvDateEdit;
    VCLReport1: TVCLReport;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelNfe: TfRelNfe;

implementation

uses UDm;

{$R *.dfm}


procedure TfRelNfe.BitBtn2Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'nota_fiscal_rel_emissao.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DTAINI').Value := StrToDate(Dta1.Text);
  VCLReport1.Report.Params.ParamByName('DTAFIM').Value := StrToDate(Dta2.Text);
  VCLReport1.execute;
end;

procedure TfRelNfe.BitBtn1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'nota_fiscal_UF.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DTAINI').Value := StrToDate(Dta1.Text);
  VCLReport1.Report.Params.ParamByName('DTAFIM').Value := StrToDate(Dta2.Text);
  VCLReport1.execute;
end;

end.
