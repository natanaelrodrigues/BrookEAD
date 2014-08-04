unit Brokers;

{$mode objfpc}{$H+}

interface

uses
{$IFDEF DEBUG}
  BrookFCLHttpAppBroker
{$ELSE}
  BrookFCLCGIBroker
{$ENDIF},
  BrookUtils, BrookHttpConsts;

implementation

initialization
{$IFDEF DEBUG}
  BrookSettings.Port := 8080;
{$ENDIF}
  BrookSettings.Page404 :=
    '<html><head><title>Página não encontrada</title></head><body>' +
    '<h1>404 - Página não encontrada.</h1></body></html>';
  BrookSettings.Page500 :=
    '<html><head><title>Erro interno do servidor</title></head><body>' +
    '<h1>500 - Erro interno do servidor.</h1>' +
    '<p style="color: red;">@error</p>' +
{$IFDEF TRACE}
    '<pre style="color: gray;">@trace</pre>' +
{$ENDIF}
    '</body></html>';

end.
