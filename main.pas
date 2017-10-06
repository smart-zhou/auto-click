unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmMain = class(TForm)
    pnlBottom: TPanel;
    pnlClient: TPanel;
    chkEnter: TCheckBox;
    lblTime: TLabel;
    edtTime: TEdit;
    btnStart: TButton;
    btnEnd: TButton;
    procedure btnStartClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEndClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure doProcess();

var
  frmMain: TfrmMain;

implementation

var
  status: Boolean;
  hMutex: THandle;

{$R *.dfm}

procedure TfrmMain.btnStartClick(Sender: TObject);
begin
  ReleaseMutex(hMutex);
end;

procedure doProcess();
begin
  //
  while True do
  begin
    if WaitForSingleObject(hMutex, INFINITE) = WAIT_OBJECT_0 then
    begin
      try
        sleep(5000);
        mouse_event(MOUSEEVENTF_RIGHTDOWN,0,0,0,0);//模拟按下鼠标右键。
        mouse_event(MOUSEEVENTF_RIGHTUP,0,0,0,0);//模拟放开鼠标右键。
        sleep(100);
        keybd_event(VK_RETURN,MapVirtualKey(VK_RETURN,0),0,0);//按下R键。
        keybd_event(VK_RETURN,MapVirtualKey(VK_RETURN,0),KEYEVENTF_KEYUP,0);//放开R键。
      finally
        ReleaseMutex(hMutex);
      end;
    end;
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  td: THandle;
  dw: DWORD;
begin
  hMutex := CreateMutex(nil, false, 'autoClick');
  WaitForSingleObject(hMutex,INFINITE);
  td := CreateThread(nil, 0, @doProcess, nil, 0, dw); //创建一个线程，同时调用线程函数
end;

procedure TfrmMain.btnEndClick(Sender: TObject);
begin
  WaitForSingleObject(hMutex,INFINITE);
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  CloseHandle(hMutex);
end;

end.
