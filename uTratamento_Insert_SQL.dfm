object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 508
  ClientWidth = 606
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 606
    Height = 41
    Align = alTop
    Caption = 'Tratamento de Insert em SQL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object edtRecebe: TRichEdit
    Left = 0
    Top = 40
    Width = 606
    Height = 330
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Zoom = 100
  end
  object btnFormatar: TBitBtn
    Left = 184
    Top = 376
    Width = 241
    Height = 50
    Caption = 'Formatar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnFormatarClick
  end
  object gridEnvia: TStringGrid
    Left = 0
    Top = 432
    Width = 606
    Height = 80
    DefaultColWidth = 128
    DefaultRowHeight = 30
    DrawingStyle = gdsGradient
    FixedCols = 0
    RowCount = 2
    TabOrder = 3
  end
end
