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
    ToolBarMain: TToolBar;
    procedure Action1Execute(Sender: TObject);
    procedure FileInEditorClick(Sender: TObject);
    procedure FileMenuClick(Sender: TObject);
    procedure OpenEditorClick(Sender: TObject);
    procedure SettingsButtonClick(Sender: TObject);
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


end.

