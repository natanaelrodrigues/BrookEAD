unit Brokers;

{$mode objfpc}{$H+}

interface

uses
  BrookFCLCGIBroker, BrookUtils;

implementation

initialization
BrookSettings.ContentType := 'text/plain';

end.
