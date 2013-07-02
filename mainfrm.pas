unit MainFrm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  StdCtrls, ExtCtrls, ActnList, Menus;

type

  { TFormMain }

  TFormMain = class(TForm)
    ListBox1: TListBox;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    FileMenu: TMenuItem;
    OpenEditor: TMenuItem;
    Panel1: TPanel;
    SettingsButton: TButton;
    SearchButton: TButton;
    SearchEdit: TEdit;
    Timer1: TTimer;
    ToolBarMain: TToolBar;
    procedure Action1Execute(Sender: TObject);
    procedure FileInEditorClick(Sender: TObject);
    procedure FileMenuClick(Sender: TObject);
    procedure OpenEditorClick(Sender: TObject);
    procedure SettingsButtonClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormMain: TFormMain;

implementation

Uses
    FormEditor, Unit1;

{$R *.lfm}

{ TFormMain }

procedure TFormMain.Action1Execute(Sender: TObject);
begin

end;

procedure TFormMain.FileInEditorClick(Sender: TObject);
begin
  FormDFEditor.Show;
end;

procedure TFormMain.FileMenuClick(Sender: TObject);
begin

end;

procedure TFormMain.OpenEditorClick(Sender: TObject);
begin
  FormDFEditor.Show;
end;

procedure TFormMain.SettingsButtonClick(Sender: TObject);
begin
  FormSettings.Show;
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
begin
  if FormMain.Width < 500 then
    FormMain.Width:=500;
  if FormMain.Height < 320 then
     FormMain.Height:=320;

  if ListBox1.Height < FormMain.Height - 26 then
    ListBox1.Height:=FormMain.Height - 26
  else if ListBox1.Height > FormMain.Height - 26 then
    ListBox1.Height:=FormMain.Height - 26;

  if Memo1.Width < FormMain.Width - 131 then
    Memo1.Width:=FormMain.Width - 131
  else if Memo1.Width > FormMain.Width - 131 then
    Memo1.Width:=FormMain.Width - 131;

  if Memo1.Height < FormMain.Height - 26 then
    Memo1.Height:=FormMain.Height - 26
  else if Memo1.Height > FormMain.Height - 26 then
    Memo1.Height:=FormMain.Height - 26;

  if SearchEdit.Width < FormMain.Width - 76 * 2 then
    SearchEdit.Width:=FormMain.Width - 76 * 2
  else if SearchEdit.Width > FormMain.Width - 76 * 2 then
    SearchEdit.Width:=FormMain.Width - 76 * 2;
end;


end.

