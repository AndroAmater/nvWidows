unit MainForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  StdCtrls, ExtCtrls;

type

  { TFormMain }

  TFormMain = class(TForm)
    ListBox1: TListBox;
    Memo1: TMemo;
    Panel1: TPanel;
    SettingsButton: TButton;
    SearchButton: TButton;
    SearchEdit: TEdit;
    ToolBarMain: TToolBar;
    procedure SettingsButtonClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;


var
  FormMain: TFormMain;

implementation

  uses
    Unit1;

{$R *.lfm}

{ TFormMain }

procedure TFormMain.SettingsButtonClick(Sender: TObject);
begin
  FormSettings.Show;
end;

end.
