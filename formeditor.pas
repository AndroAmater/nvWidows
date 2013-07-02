unit FormEditor;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls, Menus;

type

  { TFormDFEditor }

  TFormDFEditor = class(TForm)
    Memo1: TMemo;
    procedure MenuItem1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormDFEditor: TFormDFEditor;

implementation

{$R *.lfm}

{ TFormDFEditor }

procedure TFormDFEditor.MenuItem1Click(Sender: TObject);
begin

end;

end.

