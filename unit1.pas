unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, usingleton;

type

  { TForm1 }

  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormShow(Sender: TObject);
var
  s1: TSettingsManager = nil;
  s2: TSettingsManager = nil;
begin
  s1:= SettingsManager;
  //s1.inTestName:= 's1';

  s2:= SettingsManager;
  s2.InstanceName:= 's2';

  Label1.Caption:= s1.InstanceName;
  Label2.Caption:= s2.InstanceName;

end;

end.

