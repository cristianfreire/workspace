object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'L'#243'gica de Programa'#231#227'o'
  ClientHeight = 205
  ClientWidth = 303
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
    Left = 24
    Top = 32
    Width = 76
    Height = 13
    Caption = 'Digite seu nome'
  end
  object lblResultado: TLabel
    Left = 24
    Top = 168
    Width = 60
    Height = 13
    Caption = '---------------'
  end
  object Label2: TLabel
    Left = 24
    Top = 82
    Width = 76
    Height = 13
    Caption = 'Digite sua idade'
  end
  object txtNome: TEdit
    Left = 24
    Top = 51
    Width = 249
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 198
    Top = 156
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object txtIdade: TEdit
    Left = 24
    Top = 101
    Width = 249
    Height = 21
    TabOrder = 2
  end
end
