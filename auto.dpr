program auto;

uses
  Forms,
  main in 'main.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Hello World';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
