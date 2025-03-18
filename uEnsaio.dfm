object frmEnsaio: TfrmEnsaio
  Left = 192
  Top = 125
  BorderStyle = bsSingle
  Caption = 'Ensaio - 16236'
  ClientHeight = 501
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 216
    Width = 129
    Height = 13
    Caption = 'Tempo de Inicialização (H):'
  end
  object nbEnsaio: TNotebook
    Left = 0
    Top = 0
    Width = 501
    Height = 501
    Align = alClient
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Entrada Dados'
      object lbEmpresa: TLabel
        Left = 16
        Top = 24
        Width = 44
        Height = 13
        Caption = 'Empresa:'
      end
      object lbModelo: TLabel
        Left = 16
        Top = 48
        Width = 38
        Height = 13
        Caption = 'Modelo:'
      end
      object lbNumAmostra: TLabel
        Left = 16
        Top = 72
        Width = 96
        Height = 13
        Caption = 'Número da Amostra:'
      end
      object lbNumLote: TLabel
        Left = 16
        Top = 96
        Width = 79
        Height = 13
        Caption = 'Número do Lote:'
      end
      object lbTipoEnsaio: TLabel
        Left = 16
        Top = 120
        Width = 74
        Height = 13
        Caption = 'Tipo do Ensaio:'
      end
      object lbTipoAparelho: TLabel
        Left = 16
        Top = 144
        Width = 84
        Height = 13
        Caption = 'Tipo do Aparelho:'
      end
      object lbAparelhosEnsaio: TLabel
        Left = 16
        Top = 168
        Width = 102
        Height = 13
        Caption = 'Aparelhos em Ensaio:'
      end
      object lbTensao: TLabel
        Left = 16
        Top = 192
        Width = 156
        Height = 13
        Caption = 'Tensão de Alimentação Nominal:'
      end
      object Label1: TLabel
        Left = 16
        Top = 216
        Width = 129
        Height = 13
        Caption = 'Tempo de Inicialização (H):'
      end
      object lbVolDescarte: TLabel
        Left = 16
        Top = 240
        Width = 114
        Height = 13
        Caption = 'Volume de Descarte (L):'
      end
      object lbCicloRetirada: TLabel
        Left = 16
        Top = 264
        Width = 144
        Height = 13
        Caption = 'Ciclo de Retirada de Água (H):'
      end
      object lbVolAguaCiclo: TLabel
        Left = 16
        Top = 288
        Width = 198
        Height = 13
        Caption = 'Volume de Água por Ciclo de Retirada (L):'
      end
      object cbEmpresas: TComboBox
        Left = 224
        Top = 20
        Width = 225
        Height = 21
        ItemHeight = 13
        TabOrder = 0
      end
      object cbModelos: TComboBox
        Left = 224
        Top = 44
        Width = 225
        Height = 21
        ItemHeight = 13
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 224
        Top = 68
        Width = 225
        Height = 21
        TabOrder = 2
      end
      object edNumLote: TEdit
        Left = 224
        Top = 92
        Width = 225
        Height = 21
        TabOrder = 3
      end
      object cbTipoEnsaio: TComboBox
        Left = 224
        Top = 116
        Width = 225
        Height = 21
        ItemHeight = 13
        TabOrder = 4
        Items.Strings = (
          'Capacidade de Refrigeração'
          'Manutenção da Temperatura')
      end
      object cbTipoAparelho: TComboBox
        Left = 224
        Top = 140
        Width = 225
        Height = 21
        ItemHeight = 13
        TabOrder = 5
        Items.Strings = (
          'Pressão'
          'Gravidade/Garrafão')
      end
      object cbAparelhosEnsaio: TComboBox
        Left = 224
        Top = 164
        Width = 225
        Height = 21
        ItemHeight = 13
        TabOrder = 6
        Items.Strings = (
          '1'
          '2'
          '1 e 2')
      end
      object cbTensao: TComboBox
        Left = 224
        Top = 188
        Width = 225
        Height = 21
        ItemHeight = 13
        TabOrder = 7
        Items.Strings = (
          '110 V'
          '220 V')
      end
      object seTempoIni: TSpinEdit
        Left = 288
        Top = 212
        Width = 17
        Height = 22
        MaxValue = 99
        MinValue = 1
        TabOrder = 8
        Value = 0
        OnChange = seTempoIniChange
      end
      object edTempoIni: TEdit
        Left = 224
        Top = 212
        Width = 65
        Height = 21
        TabOrder = 9
        Text = '0.1'
      end
      object edCicloRetirada: TEdit
        Left = 224
        Top = 260
        Width = 65
        Height = 21
        TabOrder = 10
        Text = '0.1'
      end
      object seCicloRetirada: TSpinEdit
        Left = 288
        Top = 260
        Width = 17
        Height = 22
        MaxValue = 99
        MinValue = 1
        TabOrder = 11
        Value = 1
        OnChange = seCicloRetiradaChange
      end
      object edVolAguaCiclo: TEdit
        Left = 224
        Top = 284
        Width = 65
        Height = 21
        TabOrder = 12
        Text = '0.2'
      end
      object seVolAguaCiclo: TSpinEdit
        Left = 288
        Top = 284
        Width = 17
        Height = 22
        MaxValue = 99
        MinValue = 2
        TabOrder = 13
        Value = 1
        OnChange = seVolAguaCicloChange
      end
      object btnContinuar: TButton
        Left = 272
        Top = 344
        Width = 185
        Height = 41
        Caption = 'Continuar'
        TabOrder = 14
      end
      object btnSair: TButton
        Left = 40
        Top = 344
        Width = 185
        Height = 41
        Caption = 'Sair'
        TabOrder = 15
      end
    end
  end
  object edVolDescarte: TEdit
    Left = 224
    Top = 236
    Width = 65
    Height = 21
    TabOrder = 1
    Text = '0.0'
  end
  object seVolDescarte: TSpinEdit
    Left = 288
    Top = 236
    Width = 17
    Height = 22
    MaxValue = 99
    MinValue = 0
    TabOrder = 2
    Value = 1
    OnChange = seVolDescarteChange
  end
end
