unit Client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, IdBaseComponent, IdComponent,
  IdUDPBase, IdUDPServer, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, System.ImageList,
  Vcl.ImgList, System.Win.ScktComp;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Edit1: TMenuItem;
    View1: TMenuItem;
    Help1: TMenuItem;
    Aboutus1: TMenuItem;
    Top: TPanel;
    Label1: TLabel;
    ServerIP: TEdit;
    Button1: TButton;
    Label2: TLabel;
    ClientName: TEdit;
    Left: TPanel;
    Bottom: TPanel;
    StatusBar: TStatusBar;
    Right: TPanel;
    Center: TPanel;
    Menu11: TMenuItem;
    Menu21: TMenuItem;
    Menu31: TMenuItem;
    Exit1: TMenuItem;
    ImageList1: TImageList;
    Client: TClientSocket;
    Button2: TButton;
    RichEdit1: TRichEdit;
    Label3: TLabel;
    Edit2: TEdit;
    procedure Exit1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations}
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  self.Client.Host := ServerIP.Text; {edit host}
  self.Client.Port := 1234;          {edit port}
  self.Client.Open;
  self.StatusBar.Panels[0].Text := 'Connected Status: Connected';
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  self.Client.Close;
  self.StatusBar.Panels[0].Text := 'Connected Status: Disconnected';
end;

procedure TForm2.ClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  self.Client.Socket.SendText('NewCon|' + self.ClientName.Text);
end;

procedure TForm2.ClientRead(Sender: TObject; Socket: TCustomWinSocket);
var Utf8String: string;
begin
  Utf8String := UTF8ToString(Socket.ReceiveText); // convert UTF-8 to a Delphi string
   Application.MessageBox(Pchar(Utf8String), 'Received Message', MB_OK or MB_ICONINFORMATION);
end;

procedure TForm2.Exit1Click(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  self.ClientName.Text := System.SysUtils.GetEnvironmentVariable('COMPUTERNAME');
end;

end.
