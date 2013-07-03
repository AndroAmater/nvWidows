unit MainFrm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  StdCtrls, ExtCtrls, ActnList, Menus, DbCtrls, FileCtrl;

type

  { TFormMain }

  TFormMain = class(TForm)
    ListBox1: TListBox;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    SettingsMenu: TMenuItem;
    ViewMenu: TMenuItem;
    OpenEditor: TMenuItem;
    Panel1: TPanel;
    SearchButton: TButton;
    SearchEdit: TEdit;
    Timer1: TTimer;
    ToolBarMain: TToolBar;
    procedure Action1Execute(Sender: TObject);
    procedure FileInEditorClick(Sender: TObject);
    procedure SettingsMenuClick(Sender: TObject);
    procedure ViewMenuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OpenEditorClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    procedure FileSearch(const PathName : string) ;
  end;

var
  FormMain: TFormMain;
  test:integer;

implementation

Uses
    FormEditor, Unit1;

{$R *.lfm}

{ TFormMain }


procedure TFormMain.FileSearch(const PathName : string) ;
 var Rec : TSearchRec;
   Path : string;
 begin
   test:=FindFirst (PathName, faAnyFile - faDirectory - faHidden, Rec);
   if test = 0 then
     try
     repeat
       ListBox1.Items.Add(Rec.Name) ;
     until FindNext(Rec) <> 0;
     finally
       FindClose(Rec) ;
   end;
 end; 

procedure TFormMain.Action1Execute(Sender: TObject);
begin

end;

procedure TFormMain.FileInEditorClick(Sender: TObject);
begin
  FormDFEditor.Show;
end;

procedure TFormMain.SettingsMenuClick(Sender: TObject);
begin
  FormSettings.Show;
end;

procedure TFormMain.ViewMenuClick(Sender: TObject);
begin

end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  FileSearch('/Users/AndroAmater/Dropbox/Apps/Notes/*');
end;



procedure TFormMain.OpenEditorClick(Sender: TObject);
begin
  FormDFEditor.Show;
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
begin
  if FormMain.Width < 800 then
    FormMain.Width:=800;
  if FormMain.Height < 400 then
     FormMain.Height:=400;

  if ListBox1.Height < FormMain.Height - 26 then
    ListBox1.Height:=FormMain.Height - 26
  else if ListBox1.Height > FormMain.Height - 26 then
    ListBox1.Height:=FormMain.Height - 26;

  if Memo1.Width < FormMain.Width - 400 then
    Memo1.Width:=FormMain.Width - 400
  else if Memo1.Width > FormMain.Width - 400 then
    Memo1.Width:=FormMain.Width - 400;

  if Memo1.Height < FormMain.Height - 26 then
    Memo1.Height:=FormMain.Height - 26
  else if Memo1.Height > FormMain.Height - 26 then
    Memo1.Height:=FormMain.Height - 26;

  if SearchEdit.Width < FormMain.Width - 76 then
    SearchEdit.Width:=FormMain.Width - 76 
  else if SearchEdit.Width > FormMain.Width - 76 then
    SearchEdit.Width:=FormMain.Width - 76;
end;


end.

