unit Brokers;

{$mode objfpc}{$H+}

interface

uses
  {$IfDef RELEASE}
    BrookFCLCGIBroker
  {$Else}
    BrookFCLHttpAppBroker
  {$EndIf}
  ,BrookUtils
  ;

implementation
initialization
  BrookSettings.Port := 8183;

end.
