unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  BrookAction, sysutils;

type
  TMyAction = class(TBrookAction)
  public
    procedure Get; override;
  end;

implementation

procedure TMyAction.Get;
begin
  Write('Hello world <br>');
  Write('A hora atual é: %s <br>',[DateTimeToStr(Now)]);
  Write('Inteiro: %d <br>',[10]);
end;

initialization
  TMyAction.Register('*');

end.
