object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 490
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 89
    Width = 742
    Height = 401
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados Pessoais'
      ExplicitLeft = 8
      object Label2: TLabel
        Left = 20
        Top = 32
        Width = 84
        Height = 13
        Caption = 'C'#243'digo do Cliente'
      end
      object Label3: TLabel
        Left = 20
        Top = 88
        Width = 78
        Height = 13
        Caption = 'Nome do Cliente'
      end
      object Label4: TLabel
        Left = 200
        Top = 32
        Width = 71
        Height = 13
        Caption = 'Tipo de Cliente'
      end
      object Label5: TLabel
        Left = 418
        Top = 32
        Width = 14
        Height = 13
        Caption = 'RG'
      end
      object Label6: TLabel
        Left = 580
        Top = 32
        Width = 90
        Height = 13
        Caption = 'Data de Expedi'#231#227'o'
      end
      object Label7: TLabel
        Left = 20
        Top = 144
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label8: TLabel
        Left = 20
        Top = 200
        Width = 28
        Height = 13
        Caption = 'Bairro'
      end
      object Label9: TLabel
        Left = 200
        Top = 200
        Width = 49
        Height = 13
        Caption = 'Cidade'
      end
      object Label10: TLabel
        Left = 20
        Top = 248
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object Label11: TLabel
        Left = 96
        Top = 248
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label12: TLabel
        Left = 418
        Top = 88
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label13: TLabel
        Left = 580
        Top = 88
        Width = 33
        Height = 13
        Caption = 'Celular'
      end
      object Label14: TLabel
        Left = 418
        Top = 144
        Width = 28
        Height = 13
        Caption = 'E-mail'
      end
      object Edit1: TEdit
        Left = 20
        Top = 51
        Width = 149
        Height = 21
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 20
        Top = 107
        Width = 341
        Height = 21
        TabOrder = 1
      end
      object ComboBox1: TComboBox
        Left = 200
        Top = 51
        Width = 161
        Height = 21
        Style = csDropDownList
        TabOrder = 2
        Items.Strings = (
          'Pessoa F'#237'sica'
          'Pessoa Jur'#237'dica')
      end
      object Edit3: TEdit
        Left = 418
        Top = 51
        Width = 135
        Height = 21
        TabOrder = 3
      end
      object Edit4: TEdit
        Left = 580
        Top = 51
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object Edit5: TEdit
        Left = 20
        Top = 163
        Width = 341
        Height = 21
        TabOrder = 5
      end
      object Edit6: TEdit
        Left = 20
        Top = 219
        Width = 165
        Height = 21
        TabOrder = 6
      end
      object Edit7: TEdit
        Left = 200
        Top = 219
        Width = 161
        Height = 21
        TabOrder = 7
      end
      object Edit8: TEdit
        Left = 20
        Top = 267
        Width = 53
        Height = 21
        TabOrder = 8
      end
      object Edit9: TEdit
        Left = 96
        Top = 267
        Width = 121
        Height = 21
        TabOrder = 9
      end
      object Edit10: TEdit
        Left = 418
        Top = 107
        Width = 135
        Height = 21
        TabOrder = 10
      end
      object Edit11: TEdit
        Left = 580
        Top = 107
        Width = 121
        Height = 21
        TabOrder = 11
      end
      object Edit12: TEdit
        Left = 418
        Top = 163
        Width = 283
        Height = 21
        TabOrder = 12
      end
      object CheckBox1: TCheckBox
        Left = 418
        Top = 221
        Width = 111
        Height = 17
        Caption = 'Cliente Negativado'
        TabOrder = 13
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados do C'#244'njuge'
      ImageIndex = 1
      ExplicitLeft = 8
      object Label15: TLabel
        Left = 20
        Top = 32
        Width = 85
        Height = 13
        Caption = 'Nome do C'#244'njuge'
      end
      object Label16: TLabel
        Left = 272
        Top = 32
        Width = 19
        Height = 13
        Caption = 'CPF'
      end
      object Label17: TLabel
        Left = 20
        Top = 88
        Width = 99
        Height = 13
        Caption = 'Data de Nascimento '
      end
      object Edit13: TEdit
        Left = 20
        Top = 51
        Width = 229
        Height = 21
        TabOrder = 0
      end
      object Edit14: TEdit
        Left = 272
        Top = 51
        Width = 161
        Height = 21
        TabOrder = 1
      end
      object Edit15: TEdit
        Left = 20
        Top = 107
        Width = 161
        Height = 21
        TabOrder = 2
      end
      object GroupBox1: TGroupBox
        Left = 272
        Top = 107
        Width = 449
        Height = 150
        Caption = 'Contatos do C'#244'njuge'
        TabOrder = 3
        object Label18: TLabel
          Left = 25
          Top = 24
          Width = 33
          Height = 13
          Caption = 'Celular'
        end
        object Label19: TLabel
          Left = 25
          Top = 72
          Width = 28
          Height = 13
          Caption = 'E-mail'
        end
        object Label20: TLabel
          Left = 209
          Top = 24
          Width = 52
          Height = 13
          Caption = 'Operadora'
        end
        object Edit16: TEdit
          Left = 25
          Top = 43
          Width = 161
          Height = 21
          TabOrder = 0
        end
        object Edit17: TEdit
          Left = 25
          Top = 91
          Width = 384
          Height = 21
          TabOrder = 1
        end
        object ComboBox2: TComboBox
          Left = 208
          Top = 43
          Width = 201
          Height = 21
          Style = csDropDownList
          TabOrder = 2
          Items.Strings = (
            'TIM'
            'CLARO'
            'VIVO')
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Dados do Trabalho'
      ImageIndex = 2
      ExplicitLeft = 8
      object Label21: TLabel
        Left = 20
        Top = 32
        Width = 44
        Height = 13
        Caption = 'Profiss'#227'o'
      end
      object Label22: TLabel
        Left = 20
        Top = 88
        Width = 41
        Height = 13
        Caption = 'Empresa'
      end
      object Label23: TLabel
        Left = 20
        Top = 144
        Width = 149
        Height = 13
        Caption = 'Endere'#231'o completo de trabalho'
      end
      object Label24: TLabel
        Left = 20
        Top = 200
        Width = 102
        Height = 13
        Caption = 'Telefone do Trabalho'
      end
      object Label25: TLabel
        Left = 204
        Top = 200
        Width = 93
        Height = 13
        Caption = 'Celular do Trabalho'
      end
      object Edit18: TEdit
        Left = 20
        Top = 51
        Width = 269
        Height = 21
        TabOrder = 0
      end
      object Edit19: TEdit
        Left = 20
        Top = 107
        Width = 269
        Height = 21
        TabOrder = 1
      end
      object Edit20: TEdit
        Left = 20
        Top = 163
        Width = 519
        Height = 21
        TabOrder = 2
      end
      object Edit21: TEdit
        Left = 20
        Top = 219
        Width = 165
        Height = 21
        TabOrder = 3
      end
      object Edit22: TEdit
        Left = 204
        Top = 219
        Width = 165
        Height = 21
        TabOrder = 4
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'An'#225'lise de Cr'#233'dito'
      ImageIndex = 3
      ExplicitLeft = 8
      object Label26: TLabel
        Left = 20
        Top = 16
        Width = 83
        Height = 13
        Caption = 'Sal'#225'rio do Cliente'
      end
      object Label27: TLabel
        Left = 20
        Top = 72
        Width = 90
        Height = 13
        Caption = 'Sal'#225'rio do C'#244'njuge'
      end
      object Label28: TLabel
        Left = 20
        Top = 136
        Width = 80
        Height = 13
        Caption = 'Limite de Cr'#233'dito'
      end
      object Label29: TLabel
        Left = 20
        Top = 200
        Width = 75
        Height = 13
        Caption = 'Sal'#225'rio Utilizado'
      end
      object Label30: TLabel
        Left = 20
        Top = 256
        Width = 74
        Height = 13
        Caption = 'Limite Restante'
      end
      object Label31: TLabel
        Left = 232
        Top = 16
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
      end
      object Edit23: TEdit
        Left = 20
        Top = 35
        Width = 165
        Height = 21
        TabOrder = 0
      end
      object Edit24: TEdit
        Left = 20
        Top = 91
        Width = 165
        Height = 21
        TabOrder = 1
      end
      object Edit25: TEdit
        Left = 20
        Top = 155
        Width = 165
        Height = 21
        TabOrder = 2
      end
      object Edit26: TEdit
        Left = 20
        Top = 219
        Width = 165
        Height = 21
        TabOrder = 3
      end
      object Edit27: TEdit
        Left = 20
        Top = 275
        Width = 165
        Height = 21
        TabOrder = 4
      end
      object Memo1: TMemo
        Left = 232
        Top = 35
        Width = 489
        Height = 114
        TabOrder = 5
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 89
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 734
    object Label1: TLabel
      Left = 24
      Top = 23
      Width = 299
      Height = 35
      Caption = 'Cadastro de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 387
      Top = 14
      Width = 75
      Height = 56
      Caption = 'Novo'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 468
      Top = 14
      Width = 75
      Height = 56
      Caption = 'Salvar'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 549
      Top = 14
      Width = 75
      Height = 56
      Caption = 'Cancelar'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 630
      Top = 14
      Width = 75
      Height = 56
      Caption = 'Excluir'
      TabOrder = 3
    end
  end
end
