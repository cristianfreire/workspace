object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Cadastro de Livros'
  ClientHeight = 406
  ClientWidth = 581
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
    Top = 24
    Width = 172
    Height = 25
    Caption = 'Cadastro de Livros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 69
    Width = 91
    Height = 16
    Caption = 'T'#237'tulo do Livro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 121
    Width = 38
    Height = 16
    Caption = 'Autor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 174
    Width = 46
    Height = 16
    Caption = 'G'#234'nero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 234
    Width = 43
    Height = 16
    Caption = 'Idioma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 352
    Top = 116
    Width = 51
    Height = 16
    Caption = 'Resumo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 352
    Top = 234
    Width = 114
    Height = 16
    Caption = 'Canais de Vendas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 24
    Top = 91
    Width = 289
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 24
    Top = 143
    Width = 201
    Height = 21
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 197
    Width = 201
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Romance'
      'Autoajuda'
      'Autobiografia')
  end
  object RadioButton1: TRadioButton
    Left = 32
    Top = 256
    Width = 113
    Height = 17
    Caption = 'Portugu'#234's'
    TabOrder = 3
  end
  object RadioButton2: TRadioButton
    Left = 32
    Top = 279
    Width = 113
    Height = 17
    Caption = 'Ingl'#234's'
    TabOrder = 4
  end
  object RadioButton3: TRadioButton
    Left = 32
    Top = 300
    Width = 113
    Height = 17
    Caption = 'Espanhol'
    TabOrder = 5
  end
  object CheckBox1: TCheckBox
    Left = 352
    Top = 93
    Width = 129
    Height = 17
    Caption = 'Dispon'#237'vel em Estoque'
    TabOrder = 6
  end
  object Memo1: TMemo
    Left = 352
    Top = 138
    Width = 185
    Height = 89
    TabOrder = 7
  end
  object CheckBox2: TCheckBox
    Left = 369
    Top = 256
    Width = 97
    Height = 17
    Caption = 'Internet'
    TabOrder = 8
  end
  object CheckBox3: TCheckBox
    Left = 369
    Top = 279
    Width = 97
    Height = 17
    Caption = 'Telefone'
    TabOrder = 9
  end
  object CheckBox4: TCheckBox
    Left = 369
    Top = 302
    Width = 97
    Height = 17
    Caption = 'Loja F'#237'sica'
    TabOrder = 10
  end
  object Button1: TButton
    Left = 32
    Top = 352
    Width = 113
    Height = 33
    Caption = 'Cadastrar'
    TabOrder = 11
  end
  object Button2: TButton
    Left = 160
    Top = 352
    Width = 113
    Height = 33
    Caption = 'Excluir'
    TabOrder = 12
  end
  object Button3: TButton
    Left = 279
    Top = 352
    Width = 113
    Height = 33
    Caption = 'Pesquisar'
    TabOrder = 13
  end
end
