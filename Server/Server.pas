unit Server;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, System.Win.ScktComp, Vcl.ToolWin,
  System.Actions, Vcl.ActnList, Vcl.CustomizeDlg;

type
  Tclientdata = record
  UserName:string;
  end;

type
  TForm1 = class(TForm)
    Menu: TMainMenu;
    File1: TMenuItem;
    Edit1: TMenuItem;
    View1: TMenuItem;
    Help1: TMenuItem;
    ListView1: TListView;
    Aboutus1: TMenuItem;
    Exit1: TMenuItem;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Menu11: TMenuItem;
    YourIP1: TMenuItem;
    Menu12: TMenuItem;
    Menu21: TMenuItem;
    Menu31: TMenuItem;
    Menu41: TMenuItem;
    Menu51: TMenuItem;
    Menu22: TMenuItem;
    Menu32: TMenuItem;
    Menu42: TMenuItem;
    Menu52: TMenuItem;
    Menu23: TMenuItem;
    Menu33: TMenuItem;
    Menu43: TMenuItem;
    Menu53: TMenuItem;
    Menu24: TMenuItem;
    Menu34: TMenuItem;
    Menu44: TMenuItem;
    Menu54: TMenuItem;
    Shutdown1: TMenuItem;
    Restart1: TMenuItem;
    Screencapture1: TMenuItem;
    SendMessagetoAllClient1: TMenuItem;
    SendMessageToSelectClientOnly1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    StatusBar1: TStatusBar;
    Server: TServerSocket;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ActionList1: TActionList;
    Connect: TAction;
    Disconnect: TAction;
    ToolButton2: TToolButton;
    Image1: TImage;
    ScrollBox1: TScrollBox;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label1: TLabel;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Lock1: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ServerClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure ServerClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure SendMessagetoAllClient1Click(Sender: TObject);
    procedure SendMessageToSelectClientOnly1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    totalclients:integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  totalClients := 0;
  self.Server.Port := 1234;
  self.Server.Open;
  self.StatusBar1.Panels[0].Text := 'Server Status: Online';
end;

procedure TForm1.SendMessagetoAllClient1Click(Sender: TObject);
var
  I: integer;
  MessageText: string;
begin
  // แสดง InputBox เพื่อกรอกข้อความที่ต้องการส่ง
  MessageText := InputBox('Broadcast Message', 'Enter the message to send to all clients:', '');

  // ตรวจสอบว่าผู้ใช้กรอกข้อความหรือกดยกเลิก
  if MessageText = '' then Exit;

  // ส่งข้อความไปยังทุกคนที่เชื่อมต่อกับเซิร์ฟเวอร์
  for I := 0 to self.Server.Socket.ActiveConnections - 1 do
  begin
    self.Server.Socket.Connections[I].SendText('Teacher: ' + MessageText);
  end;
end;

procedure TForm1.SendMessageToSelectClientOnly1Click(Sender: TObject);
var
  Client: TCustomWinSocket;
  I: integer;
  ClientData: ^TClientData;
  MessageText: string;
begin
  // ตรวจสอบว่ามีการเลือก client หรือไม่ ถ้าไม่มีให้หยุดการทำงาน
  if self.ListView1.Selected = nil then Exit;

  // แสดง InputBox เพื่อกรอกข้อความที่ต้องการส่ง
  MessageText := InputBox('Send Message', 'Enter the message to send to the selected client:', '');

  // ตรวจสอบว่าผู้ใช้กรอกข้อความหรือกดยกเลิก
  if MessageText = '' then Exit;

  // ส่งข้อความไปยัง client ที่เลือกเท่านั้น
  for I := 0 to self.Server.Socket.ActiveConnections - 1 do
  begin
    Client := self.Server.Socket.Connections[I];
    ClientData := Client.Data;

    if Assigned(ClientData) and (ClientData.UserName = self.ListView1.Selected.SubItems[0]) then
    begin
      Client.SendText(MessageText);
      Break;
    end;
  end;
end;


procedure TForm1.ServerClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
var
  clientdata: ^TClientData;
  I: integer;
begin
  Clientdata := Socket.Data;
  for I := 0 to Form1.ListView1.Items.Count - 1 do
  begin
    if Form1.ListView1.Items[I].SubItems[0] = clientdata.UserName then
    begin
      Form1.ListView1.Items[I].Delete;
      Socket.Data := nil;
      Dispose(clientdata);
      self.totalclients := self.totalclients - 1;
      self.StatusBar1.Panels[1].Text := 'Clients Online: [' + inttostr(totalclients) + ']';
      Break;
    end;
  end;

end;

procedure TForm1.ServerClientRead(Sender: TObject; Socket: TCustomWinSocket);
var
  ClientData: ^TClientData;
  sl:TstringList;
  li:Tlistitem;
begin
  sl := Tstringlist.Create;
  sl.Delimiter := '|';
  sl.StrictDelimiter;
  sl.DelimitedText := socket.ReceiveText;

  if sl[0] = 'NewCon' then
  begin
    // Create a new record place holder for the newly connected client
    New(clientdata);
    clientdata.UserName := sl[1];
    socket.Data := clientdata;
    // Add the newly connected client to a listview component...
    li := form1.ListView1.Items.Add;
    li.Caption := socket.RemoteAddress;
    li.SubItems.Add(sl[1]);
    // Increase a number of connected clients on our server!
    self.totalclients := self.totalclients + 1;
    self.StatusBar1.Panels[1].Text := 'Clients Online: [' + inttostr(totalclients) + ']';
  end;
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
  {}
end;

end.
