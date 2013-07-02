unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Menus;

type

  { TFormSettings }

  TFormSettings = class(TForm)
    PanelThemes: TPanel;
    ToggleBox1: TToggleBox;
    ToggleBox2: TToggleBox;
    procedure FormCreate(Sender: TObject);
    procedure ToggleBox1Change(Sender: TObject);
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

procedure TFormSettings.ToggleBox1Change(Sender: TObject);
begin

end;

procedure TFormSettings.FormCreate(Sender: TObject);
begin

end;

end.

