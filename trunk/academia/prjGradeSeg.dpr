program prjGradeSeg;

uses
  Forms,
  uGradeSeg in 'uGradeSeg.pas' {Form1},
  uDmGrade in 'uDmGrade.pas' {dm: TDataModule},
  uUtils in 'uUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
