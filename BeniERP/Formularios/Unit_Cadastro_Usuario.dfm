inherited Form_Cadastro_usuario: TForm_Cadastro_usuario
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 659
  ClientWidth = 1151
  ExplicitWidth = 1167
  ExplicitHeight = 698
  PixelsPerInch = 96
  TextHeight = 13
  inherited Shape1: TShape
    Top = 43
    Width = 1151
    ExplicitWidth = 1251
  end
  inherited ToolBar1: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1145
    Height = 34
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1145
    ExplicitHeight = 34
  end
  inherited cxPageControl1: TcxPageControl
    Top = 71
    Width = 1151
    Height = 571
    Properties.ActivePage = tbCadastro
    ExplicitWidth = 1151
    ExplicitHeight = 573
    ClientRectBottom = 569
    ClientRectRight = 1149
    inherited tbPesquisa: TcxTabSheet
      ExplicitWidth = 1143
      ExplicitHeight = 546
      inherited Panel1: TPanel
        Width = 1147
        Height = 9
        Visible = False
        ExplicitWidth = 1143
        ExplicitHeight = 9
        inherited lblPesquisa: TcxLabel
          Style.IsFontAssigned = True
          Visible = False
          ExplicitHeight = 3
          AnchorX = 34
          AnchorY = 5
        end
        inherited Panel2: TPanel
          Height = 9
          ExplicitHeight = 9
          inherited edtText: TEdit
            Height = 0
          end
          inherited edtCurr: TcxCurrencyEdit
            ExplicitHeight = 0
          end
          inherited edtData: TDateTimePicker
            Height = 0
            ExplicitHeight = 0
          end
          inherited edtMask: TMaskEdit
            Height = 0
          end
        end
        inherited cxButton1: TcxButton
          Height = 3
          ExplicitHeight = 3
        end
        inherited pnlData2: TPanel
          Height = 9
          ExplicitHeight = 9
          inherited edtData2: TDateTimePicker
            Height = 0
            ExplicitHeight = 0
          end
        end
        inherited rgOptionGrid: TRadioGroup
          Height = 3
          Visible = False
          ExplicitHeight = 3
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 9
        Width = 1147
        Height = 532
        Align = alClient
        Color = clWhite
        DataSource = dsPrincipal
        DrawingStyle = gdsClassic
        GradientEndColor = 15519648
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_USU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_USU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_GRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_COMPLETO'
            Width = 249
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL_USU'
            Width = 188
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_NASCIMENTO_USU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO_ATIVO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO_MASTER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_EMPRESA_USU'
            Visible = True
          end>
      end
    end
    inherited tbCadastro: TcxTabSheet
      ExplicitWidth = 1143
      ExplicitHeight = 546
      inherited Shape3: TShape
        Top = 533
        Width = 1147
        ExplicitLeft = -56
        ExplicitTop = 545
        ExplicitWidth = 1043
      end
      object Label1: TLabel
        Left = 53
        Top = 56
        Width = 37
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel
        Left = 64
        Top = 80
        Width = 26
        Height = 13
        Caption = 'login:'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 56
        Top = 107
        Width = 34
        Height = 13
        Caption = 'Senha:'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel
        Left = 21
        Top = 134
        Width = 69
        Height = 13
        Caption = 'Codigo Grupo:'
        FocusControl = cxDBSpinEdit2
      end
      object Label7: TLabel
        Left = 11
        Top = 161
        Width = 79
        Height = 13
        Caption = 'Nome Completo:'
        FocusControl = cxDBTextEdit5
      end
      object Label8: TLabel
        Left = 64
        Top = 188
        Width = 28
        Height = 13
        Caption = 'Email:'
        FocusControl = cxDBTextEdit6
      end
      object Label9: TLabel
        Left = 5
        Top = 222
        Width = 85
        Height = 13
        Caption = 'Data Nascimento:'
        FocusControl = cxDBDateEdit1
      end
      object Label5: TLabel
        Left = 11
        Top = 244
        Width = 81
        Height = 13
        Caption = 'C'#243'digo Empresa:'
        FocusControl = cxDBSpinEdit3
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 104
        Top = 53
        DataBinding.DataField = 'COD_USU'
        DataBinding.DataSource = dsPrincipal
        Enabled = False
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 104
        Top = 80
        DataBinding.DataField = 'NOME_USU'
        DataBinding.DataSource = dsPrincipal
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 104
        Top = 107
        DataBinding.DataField = 'SENHA_USU'
        DataBinding.DataSource = dsPrincipal
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        TabOrder = 2
        Width = 121
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 104
        Top = 134
        DataBinding.DataField = 'COD_GRUPO'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 104
        Top = 161
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'NOME_COMPLETO'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 4
        ExplicitWidth = 394
        Width = 398
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 104
        Top = 188
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'EMAIL_USU'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 5
        ExplicitWidth = 394
        Width = 398
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 104
        Top = 215
        DataBinding.DataField = 'DATA_NASCIMENTO_USU'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 6
        Width = 121
      end
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 270
        Width = 1147
        Height = 260
        Align = alBottom
        TabOrder = 7
        Properties.ActivePage = cxTabSheet2
        Properties.CustomButtons.Buttons = <>
        ExplicitTop = 258
        ExplicitWidth = 1143
        ClientRectBottom = 258
        ClientRectLeft = 2
        ClientRectRight = 1145
        ClientRectTop = 28
        object cxTabSheet1: TcxTabSheet
          Caption = 'Par'#226'metros '
          ImageIndex = 0
          ExplicitLeft = 4
          ExplicitTop = 24
          ExplicitWidth = 1135
          ExplicitHeight = 232
          object cbdbUsapadraotema: TcxDBCheckBox
            Left = 3
            Top = 3
            Caption = 'Usa tema Padr'#227'o Beni Software'
            DataBinding.DataField = 'USA_TEMAPADRAO'
            DataBinding.DataSource = dsPrincipal
            ParentFont = False
            Properties.Alignment = taLeftJustify
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Transparent = True
            OnClick = cbdbUsapadraotemaClick
          end
          object cxDBusuarioativo: TcxDBCheckBox
            Left = 3
            Top = 44
            Caption = 'Usu'#225'rio Ativo?'
            DataBinding.DataField = 'USUARIO_ATIVO'
            DataBinding.DataSource = dsPrincipal
            ParentFont = False
            Properties.Alignment = taLeftJustify
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Transparent = True
            OnClick = cxDBusuarioativoClick
          end
          object cxDBoperadorcaixa: TcxDBCheckBox
            Left = 3
            Top = 25
            Caption = 'Operador de Caixa'
            DataBinding.DataField = 'OPERADOR_CAIXA'
            DataBinding.DataSource = dsPrincipal
            ParentFont = False
            Properties.Alignment = taLeftJustify
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Transparent = True
          end
          object cxDBUsuarioMaster: TcxDBCheckBox
            Left = 3
            Top = 65
            Caption = 'Usu'#225'rio Master'
            DataBinding.DataField = 'USUARIO_MASTER'
            DataBinding.DataSource = dsPrincipal
            ParentFont = False
            Properties.Alignment = taLeftJustify
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Transparent = True
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Personaliza'#231#227'o'
          ImageIndex = 1
          ExplicitLeft = 4
          ExplicitTop = 24
          ExplicitWidth = 1135
          ExplicitHeight = 232
          object Label6: TLabel
            Left = 5
            Top = 191
            Width = 48
            Height = 13
            Caption = 'Tema cor:'
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 0
            Top = 0
            Width = 1143
            Height = 185
            Align = alTop
            Caption = 'Cor Pr'#233' Definidas.'
            Columns = 2
            DataField = 'TEMA_COR'
            DataSource = dsPrincipal
            Items.Strings = (
              'azul'
              'roxo escuro'
              'Azul claro'
              'Azul escuro'
              'verde'
              'Preto'
              'Verde Whatsappp'
              'Beni Azul Original escuro'
              'Beni Azul Original claro'
              'Beni Roxo Original claro'
              'Beni Laranja Original escuro'
              'Beni Vermelho Original escuro'
              'Beni Original')
            TabOrder = 0
            Values.Strings = (
              '0'
              '1'
              '2')
            OnChange = DBRadioGroup2Change
            ExplicitWidth = 1135
          end
          object dxDBColorEdit1: TdxDBColorEdit
            Left = 6
            Top = 210
            DataBinding.DataField = 'TEMA_COR'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 1
            Width = 121
          end
        end
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 10
        Top = 8
        Width = 185
        Height = 32
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Exibi'#231#227'o da Ribon'
        Columns = 2
        DataField = 'MODELO_TEMA'
        DataSource = dsPrincipal
        Items.Strings = (
          'Completo'
          'Simplificado')
        TabOrder = 8
        Values.Strings = (
          '0'
          '1'
          '2')
        ExplicitWidth = 181
      end
      object cxDBSpinEdit3: TcxDBSpinEdit
        Left = 104
        Top = 241
        DataBinding.DataField = 'COD_EMPRESA_USU'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 9
        Width = 121
      end
    end
  end
  inherited pnl_top: TPanel
    Top = 49
    Width = 1151
    ExplicitWidth = 1151
  end
  inherited Panel22: TPanel
    Top = 642
    Width = 1151
    ExplicitTop = 642
    ExplicitWidth = 1151
  end
  inherited dsPrincipal: TDataSource
    DataSet = FDQ_usuarios
    Left = 405
    Top = 41
  end
  object FDQ_usuarios: TFDQuery [7]
    AfterEdit = FDQ_usuariosAfterEdit
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'select * from TB_USUARIO')
    Left = 312
    Top = 48
    object FDQ_usuariosCOD_USU: TIntegerField
      FieldName = 'COD_USU'
      Origin = 'COD_USU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_usuariosNOME_USU: TWideStringField
      FieldName = 'NOME_USU'
      Origin = 'NOME_USU'
      Required = True
      Size = 10
    end
    object FDQ_usuariosSENHA_USU: TWideStringField
      FieldName = 'SENHA_USU'
      Origin = 'SENHA_USU'
      Required = True
      Size = 25
    end
    object FDQ_usuariosCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Origin = 'COD_GRUPO'
      Required = True
    end
    object FDQ_usuariosOPERADOR_CAIXA: TWideStringField
      FieldName = 'OPERADOR_CAIXA'
      Origin = 'OPERADOR_CAIXA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDQ_usuariosTEMA_COR: TStringField
      FieldName = 'TEMA_COR'
      Origin = 'TEMA_COR'
      Size = 50
    end
    object FDQ_usuariosNOME_COMPLETO: TStringField
      FieldName = 'NOME_COMPLETO'
      Origin = 'NOME_COMPLETO'
      Required = True
      Size = 60
    end
    object FDQ_usuariosEMAIL_USU: TStringField
      FieldName = 'EMAIL_USU'
      Origin = 'EMAIL_USU'
      Size = 400
    end
    object FDQ_usuariosDATA_NASCIMENTO_USU: TDateField
      FieldName = 'DATA_NASCIMENTO_USU'
      Origin = 'DATA_NASCIMENTO_USU'
    end
    object FDQ_usuariosUSUARIO_ATIVO: TIntegerField
      FieldName = 'USUARIO_ATIVO'
      Origin = 'USUARIO_ATIVO'
    end
    object FDQ_usuariosMODELO_TEMA: TIntegerField
      FieldName = 'MODELO_TEMA'
      Origin = 'MODELO_TEMA'
      Required = True
    end
    object FDQ_usuariosUSA_TEMAPADRAO: TIntegerField
      FieldName = 'USA_TEMAPADRAO'
      Origin = 'USA_TEMAPADRAO'
    end
    object FDQ_usuariosUSUARIO_MASTER: TIntegerField
      FieldName = 'USUARIO_MASTER'
      Origin = 'USUARIO_MASTER'
      Required = True
    end
    object FDQ_usuariosCOD_EMPRESA_USU: TIntegerField
      FieldName = 'COD_EMPRESA_USU'
      Origin = 'COD_EMPRESA_USU'
      Required = True
    end
  end
  inherited BarraMenu: TcxImageList
    FormatVersion = 1
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 176
  end
  object FDQAutoIncremento: TFDQuery
    AfterEdit = FDQ_usuariosAfterEdit
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'select max(COD_USU) as COD_USU from TB_USUARIO')
    Left = 552
    Top = 56
  end
end
