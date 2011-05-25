unit uNFClasse;

interface

uses SysUtils, Classes, DBXpress;

Type
  TuNFClasse = class(TObject)
  private
    {FPeriodoIni: String;
    FPeriodoFim: String;
    FBusca: String;
    procedure AbreTabela(Sql: String);
    function pegaBusca(Txt: String): string;
    procedure criaBusca(const Value: String);}
  public
    {bPausa: Boolean;
    function pegaIni: String;
    function pegaFim: String;
    function pegaMes: String;
    procedure criaIni(const Value: String);
    procedure criaFim(const Value: String);
    function StatusRec:TStringList;
    function Forma:TStringList;
    function DeleteChar(const Ch: Char; const S: string): string;
    function StatusPag:TStringList;
    function pegaForma(forma: String) : String;
    function retornaForma(forma: String) : Integer;
    procedure CriaForm(FormClasse : TComponentClass; NomeForm : TForm);
    function buscaChave(generator: String) : String;
    procedure relatorio(rel: String);
    function verificapermissao : Boolean;}
  end;


implementation

uses UDm, ufDlgLogin, uAtsAdmin;
{ TuNFClasse }


end.
