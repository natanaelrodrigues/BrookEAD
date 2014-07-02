unit uBrookWrite;

{$mode objfpc}{$H+}

interface

uses
  BrookAction,Cliente;

type
  TMyAction = class(specialize TBrookGAction<TCliente>)
  public
    procedure Get; override;
  end;

implementation

procedure TMyAction.Get;
begin
  Entity.id   := 10;
  Entity.nome := 'Natanael Rodrigues';
  Write(Entity);
end;

initialization
  TMyAction.Register('*');

end.
