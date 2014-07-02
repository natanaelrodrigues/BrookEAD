unit uBrookClient1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btObter: TButton;
    edId: TEdit;
    edNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btObterClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

uses BrookUtils, BrookHttpClient, BrookFCLHttpClientBroker, Cliente;

{ TForm1 }

procedure TForm1.btObterClick(Sender: TObject);
var
  VDados: TStream;
  VClient: TCliente;
  VLista : TStringList;
  VHttp: TBrookHttpClient;
begin
  VClient:= TCliente.Create;
  VLista := TStringList.Create;
  VDados := TMemoryStream.Create;
  VHttp  := TBrookHttpClient.Create('FCLWeb');
  Try
    if not VHttp.Get('http://localhost:8081/cgi-bin/BrookWrite.cgi',VDados) then
      raise Exception.Create('Não foi possível obter os dados do cliente');
    VDados.Seek(0,0);
    VLista.LoadFromStream(VDados);
    BrookSafeStringsToObject(VClient,VLista);
    edId.Text   := IntToStr(VClient.id);
    edNome.Text := VClient.nome;
  finally
    VClient.free;
    VLista.free;
    VDados.free;
    VHttp.free;
  end;

end;

end.

