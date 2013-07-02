unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TFormSettigs }

  TFormSettigs = class(TForm)
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
  FormSettigs: TFormSettigs;

implementation

{$R *.lfm}

{ TFormSettigs }

procedure TFormSettigs.ToggleDarkChange(Sender: TObject);
begin

end;

end.

