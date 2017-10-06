unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmMain = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  sleep(5000);
  mouse_event(MOUSEEVENTF_RIGHTDOWN,0,0,0,0);//模拟按下鼠标右键。
  mouse_event(MOUSEEVENTF_RIGHTUP,0,0,0,0);//模拟放开鼠标右键。
  sleep(100);
  keybd_event(VK_RETURN,MapVirtualKey(VK_RETURN,0),0,0);//按下R键。
  keybd_event(VK_RETURN,MapVirtualKey(VK_RETURN,0),KEYEVENTF_KEYUP,0);//放开R键。
end;

end.
