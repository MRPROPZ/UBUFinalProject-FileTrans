object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 768
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label3: TLabel
    Left = 288
    Top = 13
    Width = 48
    Height = 15
    Alignment = taCenter
    Caption = 'Server IP:'
  end
  object Top: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1018
    object Label1: TLabel
      Left = 16
      Top = 13
      Width = 48
      Height = 15
      Alignment = taCenter
      Caption = 'Server IP:'
    end
    object Label2: TLabel
      Left = 560
      Top = 15
      Width = 62
      Height = 15
      Alignment = taCenter
      Caption = 'Your Name:'
    end
    object ServerIP: TEdit
      Left = 70
      Top = 12
      Width = 200
      Height = 23
      TabOrder = 0
    end
    object Button1: TButton
      Left = 852
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Connect'
      TabOrder = 1
      OnClick = Button1Click
    end
    object ClientName: TEdit
      Left = 628
      Top = 12
      Width = 200
      Height = 23
      Enabled = False
      TabOrder = 2
    end
    object Button2: TButton
      Left = 933
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object Left: TPanel
    Left = 0
    Top = 41
    Width = 185
    Height = 708
    Align = alLeft
    Caption = 'Left'
    TabOrder = 1
    ExplicitHeight = 699
  end
  object Bottom: TPanel
    Left = 0
    Top = 749
    Width = 1024
    Height = 19
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 740
    ExplicitWidth = 1018
    object StatusBar: TStatusBar
      Left = 1
      Top = -1
      Width = 1022
      Height = 19
      Color = clMedGray
      Panels = <
        item
          Text = 'Connect Status: disconnect'
          Width = 150
        end>
      ExplicitWidth = 1016
    end
  end
  object Right: TPanel
    Left = 839
    Top = 41
    Width = 185
    Height = 708
    Align = alRight
    Caption = 'Message'
    TabOrder = 3
    ExplicitLeft = 833
    ExplicitHeight = 699
    object RichEdit1: TRichEdit
      Left = -1
      Top = 1
      Width = 185
      Height = 706
      Align = alRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        'RichEdit1')
      ParentFont = False
      TabOrder = 0
      ExplicitHeight = 697
    end
  end
  object Center: TPanel
    Left = 185
    Top = 41
    Width = 654
    Height = 708
    Align = alClient
    Caption = 'Center'
    TabOrder = 4
    ExplicitWidth = 648
    ExplicitHeight = 699
  end
  object Edit2: TEdit
    Left = 342
    Top = 12
    Width = 200
    Height = 23
    TabOrder = 5
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 56
    object File1: TMenuItem
      Caption = 'File'
      object Menu11: TMenuItem
        Caption = 'Menu1'
      end
      object Menu21: TMenuItem
        Caption = 'Menu2'
      end
      object Menu31: TMenuItem
        Caption = 'Menu3'
      end
      object Exit1: TMenuItem
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000006800000065000000000000000000000000000000000000
          0000000000000000006500000067000000000000000000000000000000000000
          00000000000000000066000000FE000000720000000000000000000000000000
          000000000072000000FE00000065000000000000000000000000000000000000
          0000000000000000000000000071000000FF0000007800000000000000000000
          0070000000FF0000007900000000000000000000000000000000000000000000
          000000000000000000000000000000000071000000FF00000078000000700000
          00FF000000790000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000071000000FE000000FE0000
          0071000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000071000000FE000000FE0000
          0071000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000070000000FF00000078000000700000
          00FF000000780000000000000000000000000000000000000000000000000000
          0000000000000000000000000070000000FF0000007800000000000000000000
          0070000000FF0000007800000000000000000000000000000000000000000000
          00000000000000000065000000FE000000720000000000000000000000000000
          000000000072000000FE00000065000000000000000000000000000000000000
          0000000000000000006800000065000000000000000000000000000000000000
          0000000000000000006500000068000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
    end
    object View1: TMenuItem
      Caption = 'View'
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object Aboutus1: TMenuItem
        Caption = 'About us'
      end
    end
  end
  object ImageList1: TImageList
    Left = 96
    Top = 57
    Bitmap = {
      494C010101000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0068000000650000000000000000000000000000000000000000000000000000
      0065000000670000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0066000000FE0000007200000000000000000000000000000000000000720000
      00FE000000650000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000071000000FF00000078000000000000000000000070000000FF0000
      0079000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000071000000FF0000007800000070000000FF000000790000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000071000000FE000000FE00000071000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000071000000FE000000FE00000071000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000070000000FF0000007800000070000000FF000000780000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000070000000FF00000078000000000000000000000070000000FF0000
      0078000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0065000000FE0000007200000000000000000000000000000000000000720000
      00FE000000650000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0068000000650000000000000000000000000000000000000000000000000000
      0065000000680000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF000000000000E7E7000000000000E3C7000000000000F18F000000000000
      F81F000000000000FC3F000000000000FC3F000000000000F81F000000000000
      F18F000000000000E3C7000000000000E7E7000000000000FFFF000000000000
      FFFF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object Client: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnect = ClientConnect
    OnRead = ClientRead
    Left = 24
    Top = 121
  end
end
