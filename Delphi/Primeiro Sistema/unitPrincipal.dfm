object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Primeiro Sistema'
  ClientHeight = 148
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 76
    Height = 13
    Caption = 'Digite seu nome'
  end
  object CaixaNome: TEdit
    Left = 32
    Top = 51
    Width = 281
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 238
    Top = 88
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
