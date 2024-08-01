unit usingleton;

{$mode ObjFPC}{$H+}

interface

uses
  Classes
  , SysUtils
  ;

type

  { TSettingsManager }

  TSettingsManager = class
  private
    FInstanceName: String;
    constructor Init;
    class var FInstance: TSettingsManager;
    procedure ContinueCreate;
  public
    class function Create: TSettingsManager;
    destructor Destroy;override;
    property InstanceName: String read FInstanceName write FInstanceName;
  end;

  function SettingsManager: TSettingsManager;

implementation

function SettingsManager: TSettingsManager;
begin
  Result:= TSettingsManager.Create;
end;

{ TSettingsManager }

constructor TSettingsManager.Init;
begin
  inherited Create;
  ContinueCreate;
end;

procedure TSettingsManager.ContinueCreate;
begin
  FInstanceName:= 'default_name';
end;

class function TSettingsManager.Create: TSettingsManager;
begin
  if FInstance = nil then
    FInstance := TSettingsManager.Init;
  Result := FInstance;
end;

destructor TSettingsManager.Destroy;
begin
  inherited Destroy;
end;

end.

