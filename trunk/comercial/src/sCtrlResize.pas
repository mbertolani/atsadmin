unit sCtrlResize;

interface

uses StdCtrls, Controls, Forms, JvLabel,
      Dialogs, ExtCtrls, JvExStdCtrls, JvGroupBox, Mask, DBCtrls,
      Grids, DBGrids, JvExDBGrids, JvDBGrid, Buttons, MMJPanel, FMTBcd, DB,
      DBClient, Provider, SqlExpr, ComCtrls, uUtils, JvExMask, JvToolEdit,
      JvBaseEdits, JvDBControls, Menus, DBXpress, jpeg, JvExExtCtrls, JvImage,
      JvSpin, JvDBSpinEdit;

procedure CtrlResize(var Sender: TForm); export;

implementation

procedure CtrlResize(var Sender: TForm);
//Aqui vc especifica a resolução que vc
//desenvolveu o aplicativo
const
  iWidth = 800; //1024;
  iHeight = 600; //768;
var
  i : Integer;
begin
    with Sender do
    for i := 0 to ComponentCount -1 do
    begin { Varre todos os componentes do form que possam ser redefinidos (classe TWinControl) }
      if Components[i] is TWinControl then
      begin { Redefine os componentes em proporção ao original }
        TWinControl(Components[i]).Width := Round(TWinControl(Components[i]).Width * (Screen.Width / iWidth));
        TWinControl(Components[i]).Height := Round(TWinControl(Components[i]).Height * (Screen.Height / iHeight));
        TWinControl(Components[i]).Left := Round(TWinControl(Components[i]).Left * (Screen.Width / iWidth));
        TWinControl(Components[i]).Top := Round(TWinControl(Components[i]).Top * (Screen.Height / iHeight));
      end
      else
      if Components[i] is TLabel then
      begin // Redefine os componentes em proporção ao original
        TLabel(Components[i]).Width := Canvas.TextWidth(TLabel(Components[i]).Caption); // Round(TWinControl(Components[i]).Width * (Screen.Width / iWidth));
        TLabel(Components[i]).Height := Canvas.TextHeight(TLabel(Components[i]).Caption); // Round(TWinControl(Components[i]).Height * (Screen.Height / iHeight));
        TLabel(Components[i]).Left := Round(TWinControl(Components[i]).Left * (Screen.Width / iWidth));
        TLabel(Components[i]).Top := Round(TWinControl(Components[i]).Top * (Screen.Height / iHeight));
      end;
      if Components[i] is TJvLabel then
      begin // Redefine os componentes em proporção ao original
        TJvLabel(Components[i]).Width := Canvas.TextWidth(TJvLabel(Components[i]).Caption); // Round(TWinControl(Components[i]).Width * (Screen.Width / iWidth));
        TJvLabel(Components[i]).Height := Canvas.TextHeight(TJvLabel(Components[i]).Caption); // Round(TWinControl(Components[i]).Height * (Screen.Height / iHeight));
        TJvLabel(Components[i]).Left := Round(TWinControl(Components[i]).Left * (Screen.Width / iWidth));
        TJvLabel(Components[i]).Top := Round(TWinControl(Components[i]).Top * (Screen.Height / iHeight));
      end;
     { if Components[i] is TJvGroupBox then
      begin // Redefine os componentes em proporção ao original
        TJvGroupBox(Components[i]).Width := Canvas.TextWidth(TJvGroupBox(Components[i]).Caption); // Round(TWinControl(Components[i]).Width * (Screen.Width / iWidth));
        TJvGroupBox(Components[i]).Height := Canvas.TextHeight(TJvGroupBox(Components[i]).Caption); // Round(TWinControl(Components[i]).Height * (Screen.Height / iHeight));
        TJvGroupBox(Components[i]).Left := Round(TWinControl(Components[i]).Left * (Screen.Width / iWidth));
        TJvGroupBox(Components[i]).Top := Round(TWinControl(Components[i]).Top * (Screen.Height / iHeight));
      end;
      }

    end;


    //Para não alterar o tamanho e posição do form
    //Comente as linhas abaixo
   { Redefine o Formulário }
    Sender.Width := Round(Sender.Width * (Screen.Width / iWidth));
    Sender.Height := Round(Sender.Height * (Screen.Height / iHeight));
    Sender.Top := Round(Sender.Top * (Screen.Height / iHeight));
    Sender.Left := Round(Sender.Left * (Screen.Width / iWidth));
   
   { Altera o tamanho da Fonte do Formulário }
   Sender.Font.Size := Round(Sender.Font.Size * (Screen.Height / iHeight));
end;


end.


 