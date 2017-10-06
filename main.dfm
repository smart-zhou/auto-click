object frmMain: TfrmMain
  Left = 732
  Top = 363
  Width = 272
  Height = 287
  Caption = 'Welcome!!'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 19
  object pnlBottom: TPanel
    Left = 0
    Top = 219
    Width = 256
    Height = 30
    Align = alBottom
    TabOrder = 0
  end
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 256
    Height = 219
    Align = alClient
    TabOrder = 1
    object lblTime: TLabel
      Left = 32
      Top = 72
      Width = 67
      Height = 19
      Caption = #25191#34892#38388#38548':'
    end
    object chkEnter: TCheckBox
      Left = 32
      Top = 32
      Width = 129
      Height = 17
      Caption = #26159#21542#25353#19979#22238#36710
      TabOrder = 0
    end
    object edtTime: TEdit
      Left = 108
      Top = 68
      Width = 75
      Height = 27
      TabOrder = 1
    end
    object btnStart: TButton
      Left = 32
      Top = 144
      Width = 89
      Height = 28
      Caption = #24320#22987'(Home)'
      TabOrder = 2
      OnClick = btnStartClick
    end
    object btnEnd: TButton
      Left = 144
      Top = 144
      Width = 81
      Height = 28
      Caption = #32467#26463'(End)'
      TabOrder = 3
      OnClick = btnEndClick
    end
  end
end
