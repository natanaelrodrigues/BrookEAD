unit uBrookRender;

{$mode objfpc}{$H+}

interface

uses
  BrookAction;

type
  TMyAction = class(TBrookAction)
  public
    procedure Get; override;
  end;

implementation

procedure TMyAction.Get;
begin
  Render('C:\APP_NR\src\Lazarus\BrookAula1Exemplo2Render\DadosDoCliente.txt',[51,'Natanael Roberto Rodrigues']);
end;

initialization
  TMyAction.Register('*');

end.
