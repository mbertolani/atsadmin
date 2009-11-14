unit uTurma;

interface

type
  TTurma = Class
  private
    FCodTurma: Integer;
    FNomeTurma: String;
    FHorarioInicial: TDateTime;
    FHorarioFinal: TDateTime;
    FStatus: String;
    procedure SetCodTurma(const Value: Integer);
    procedure SetHorarioFinal(const Value: TDateTime);
    procedure SetHorarioInicial(const Value: TDateTime);
    procedure SetNomeTurma(const Value: String);
    procedure SetStatus(const Value: String);
  public
    property CodTurma: Integer read FCodTurma write SetCodTurma;
    property NomeTurma: String read FNomeTurma write SetNomeTurma;
    property HorarioInicial: TDateTime read FHorarioInicial write SetHorarioInicial;
    property HorarioFinal: TDateTime read FHorarioFinal write SetHorarioFinal;
    property Status: String read FStatus write SetStatus;
    procedure InserirTurma;
    procedure AlterarTurma;
    procedure ExcluirTurma;
  end;
implementation

{ TTurma }

procedure TTurma.AlterarTurma;
begin

end;

procedure TTurma.ExcluirTurma;
begin

end;

procedure TTurma.InserirTurma;
begin

end;

procedure TTurma.SetCodTurma(const Value: Integer);
begin
  FCodTurma := Value;
end;

procedure TTurma.SetHorarioFinal(const Value: TDateTime);
begin
  FHorarioFinal := Value;
end;

procedure TTurma.SetHorarioInicial(const Value: TDateTime);
begin
  FHorarioInicial := Value;
end;

procedure TTurma.SetNomeTurma(const Value: String);
begin
  FNomeTurma := Value;
end;

procedure TTurma.SetStatus(const Value: String);
begin
  FStatus := Value;
end;

end.
