unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TFormSettings }

  TFormSettings = class(TForm)
    PanelThemes: TPanel;
    ToggleBox1: TToggleBox;
    ToggleBox2: TToggleBox;
    ToggleDark: TToggleBox;
    procedure ToggleDarkChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormSettings: TFormSettings;

implementation

{$R *.lfm}

{ TFormSettings }

procedure TFormSettings.ToggleDarkChange(Sender: TObject);
begin

end;

end.

