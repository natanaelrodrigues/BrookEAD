unit Cliente;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TCliente = Class (TObject)
  private
    FId:Integer;
    FNome:String;
  Published
    property id : Integer read FId write FId;
    property nome : String read FNome write FNome;
  end;

implementation

end.

