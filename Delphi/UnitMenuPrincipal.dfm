object FrmMenuPrincipal: TFrmMenuPrincipal
  Left = 0
  Top = 0
  ClientHeight = 347
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Ribbon1: TRibbon
    Left = 0
    Top = 0
    Width = 739
    Height = 143
    ActionManager = ActionManager1
    Caption = 'Mecanica'
    Tabs = <
      item
        Caption = 'Cadastro'
        Page = RibbonPage1
      end
      item
        Caption = 'Movimenta'#231#227'o'
        Page = RibbonPage2
      end
      item
        Caption = 'Relat'#243'rio'
        Page = RibbonPage3
      end
      item
        Caption = 'Gr'#225'fico'
        Page = RibbonPage4
      end
      item
        Caption = 'Ferramentas'
        Page = RibbonPage5
      end>
    DesignSize = (
      739
      143)
    StyleName = 'Ribbon - Luna'
    object RibbonPage5: TRibbonPage
      Left = 0
      Top = 50
      Width = 738
      Height = 93
      BiDiMode = bdLeftToRight
      Caption = 'Ferramentas'
      Index = 4
      ParentBiDiMode = False
      object RibbonGroup1: TRibbonGroup
        Left = 4
        Top = 3
        Width = 53
        Height = 86
        ActionManager = ActionManager1
        BiDiMode = bdLeftToRight
        Caption = 'Usu'#225'rio'
        GroupAlign = gaHorizontal
        GroupIndex = 0
        ParentBiDiMode = False
        Rows = 1
      end
      object RibbonGroup10: TRibbonGroup
        Left = 59
        Top = 3
        Width = 41
        Height = 86
        ActionManager = ActionManager1
        Caption = 'Perfil'
        GroupIndex = 1
        Rows = 1
      end
    end
    object RibbonPage4: TRibbonPage
      Left = 0
      Top = 50
      Width = 738
      Height = 93
      Caption = 'Gr'#225'fico'
      Index = 3
    end
    object RibbonPage3: TRibbonPage
      Left = 0
      Top = 50
      Width = 738
      Height = 93
      Caption = 'Relat'#243'rio'
      Index = 2
    end
    object RibbonPage2: TRibbonPage
      Left = 0
      Top = 50
      Width = 738
      Height = 93
      Caption = 'Movimenta'#231#227'o'
      Index = 1
      object RibbonGroup9: TRibbonGroup
        Left = 4
        Top = 3
        Width = 76
        Height = 86
        ActionManager = ActionManager1
        Caption = 'Venda'
        GroupIndex = 0
        Rows = 1
      end
    end
    object RibbonPage1: TRibbonPage
      Left = 0
      Top = 50
      Width = 738
      Height = 93
      Caption = 'Cadastro'
      Index = 0
      object RibbonGroup2: TRibbonGroup
        Left = 4
        Top = 3
        Width = 45
        Height = 86
        ActionManager = ActionManager1
        BiDiMode = bdLeftToRight
        Caption = 'Cargo'
        GroupAlign = gaHorizontal
        GroupIndex = 0
        ParentBiDiMode = False
        Rows = 1
      end
      object RibbonGroup3: TRibbonGroup
        Left = 51
        Top = 3
        Width = 57
        Height = 86
        ActionManager = ActionManager1
        Caption = 'Combust'#237'vel'
        GroupIndex = 1
        Rows = 1
      end
      object RibbonGroup4: TRibbonGroup
        Left = 110
        Top = 3
        Width = 50
        Height = 86
        ActionManager = ActionManager1
        Caption = 'Cliente'
        GroupIndex = 2
        Rows = 1
      end
      object RibbonGroup5: TRibbonGroup
        Left = 162
        Top = 3
        Width = 68
        Height = 86
        ActionManager = ActionManager1
        Caption = 'Fabricante'
        GroupIndex = 3
        Rows = 1
      end
      object RibbonGroup6: TRibbonGroup
        Left = 232
        Top = 3
        Width = 72
        Height = 86
        ActionManager = ActionManager1
        Caption = 'Funcion'#225'rio'
        GroupIndex = 4
        Rows = 1
      end
      object RibbonGroup7: TRibbonGroup
        Left = 306
        Top = 3
        Width = 51
        Height = 86
        ActionManager = ActionManager1
        Caption = 'Modelo'
        GroupIndex = 5
        Rows = 1
      end
      object RibbonGroup8: TRibbonGroup
        Left = 359
        Top = 3
        Width = 50
        Height = 86
        ActionManager = ActionManager1
        Caption = 'Ve'#237'culo'
        GroupIndex = 6
        Rows = 1
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 328
    Width = 739
    Height = 19
    Panels = <
      item
        Width = 75
      end
      item
        Width = 300
      end
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = Action5
            Caption = '&Usu'#225'rio'
            ImageIndex = 1
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Caption = '-'
          end
          item
            Action = Action6
            Caption = '&Perfil'
            ImageIndex = 2
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
        Items = <
          item
            Action = Action2
            Caption = '&Manuten'#231#227'o'
            ImageIndex = 3
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
        Items.CaptionOptions = coAll
        Items = <
          item
            Action = Action6
            Caption = '&Perfil'
            ImageIndex = 2
          end
          item
            Caption = '&ActionToolBar1'
          end
          item
            Action = Action5
            Caption = '&Usu'#225'rio'
            ImageIndex = 1
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = Action5
            Caption = '&Usu'#225'rio'
            ImageIndex = 1
          end>
        ActionBar = RibbonGroup1
      end
      item
        Items = <
          item
            Action = Action1
            Caption = '&Pe'#231'as'
            ImageIndex = 2
          end>
        ActionBar = RibbonGroup2
      end
      item
        Items = <
          item
            Action = Action7
            Caption = '&Servi'#231'os'
            ImageIndex = 5
          end>
        ActionBar = RibbonGroup3
      end
      item
        Items = <
          item
            Action = Action8
            Caption = '&Cliente'
            ImageIndex = 6
          end>
        ActionBar = RibbonGroup4
      end
      item
        Items = <
          item
            Action = Action9
            Caption = '&Fabricante'
            ImageIndex = 9
          end>
        ActionBar = RibbonGroup5
      end
      item
        Items = <
          item
            Action = Action10
            Caption = '&Funcion'#225'rio'
            ImageIndex = 7
          end>
        ActionBar = RibbonGroup6
      end
      item
        Items = <
          item
            Action = Action11
            Caption = '&Modelo'
            ImageIndex = 4
          end>
        ActionBar = RibbonGroup7
      end
      item
        Items = <
          item
            Action = Action12
            Caption = '&Ve'#237'culo'
            ImageIndex = 3
          end>
        ActionBar = RibbonGroup8
      end
      item
        Items = <
          item
            Action = Action2
            Caption = '&Manuten'#231#227'o'
            ImageIndex = 8
          end>
        ActionBar = RibbonGroup9
      end
      item
        Items = <
          item
            Action = Action6
            Caption = '&Perfil'
            ImageIndex = 0
          end>
        ActionBar = RibbonGroup10
      end>
    Left = 304
    Top = 152
    StyleName = 'Ribbon - Luna'
    object Action1: TAction
      Category = 'Cadastro'
      Caption = 'Pe'#231'as'
      ImageIndex = 2
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Category = 'Movimenta'#231#227'o'
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 8
    end
    object Action3: TAction
      Category = 'Relat'#243'rio'
      Caption = 'Action3'
    end
    object Action4: TAction
      Category = 'Gr'#225'fico'
      Caption = 'Action4'
    end
    object Action5: TAction
      Category = 'Ferramentas'
      Caption = 'Usu'#225'rio'
      ImageIndex = 1
      OnExecute = Action5Execute
    end
    object Action6: TAction
      Category = 'Ferramentas'
      Caption = 'Perfil'
      ImageIndex = 0
      OnExecute = Action6Execute
    end
    object Action7: TAction
      Category = 'Cadastro'
      Caption = 'Servi'#231'os'
      ImageIndex = 5
      OnExecute = Action7Execute
    end
    object Action8: TAction
      Category = 'Cadastro'
      Caption = 'Cliente'
      ImageIndex = 6
      OnExecute = Action8Execute
    end
    object Action9: TAction
      Category = 'Cadastro'
      Caption = 'Fabricante'
      ImageIndex = 9
      OnExecute = Action9Execute
    end
    object Action10: TAction
      Category = 'Cadastro'
      Caption = 'Funcion'#225'rio'
      ImageIndex = 7
      OnExecute = Action10Execute
    end
    object Action11: TAction
      Category = 'Cadastro'
      Caption = 'Modelo'
      ImageIndex = 4
      OnExecute = Action11Execute
    end
    object Action12: TAction
      Category = 'Cadastro'
      Caption = 'Ve'#237'culo'
      ImageIndex = 3
      OnExecute = Action12Execute
    end
  end
  object QueryLogin: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT Login.*, Perfil.*'
      'FROM LOGIN INNER JOIN PERFIL'
      'ON Login.Perfil = Perfil.id')
    Left = 216
    Top = 152
    object QueryLoginCodigo: TFDAutoIncField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QueryLoginUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'Usuario'
      Required = True
      Size = 50
    end
    object QueryLoginSenha: TStringField
      FieldName = 'Senha'
      Origin = 'Senha'
      Required = True
      Size = 15
    end
    object QueryLoginFuncionario: TIntegerField
      FieldName = 'Funcionario'
      Origin = 'Funcionario'
    end
    object QueryLoginStatus: TStringField
      FieldName = 'Status'
      Origin = 'Status'
      FixedChar = True
      Size = 1
    end
    object QueryLoginPerfil: TIntegerField
      FieldName = 'Perfil'
      Origin = 'Perfil'
    end
    object QueryLoginCodigo_1: TFDAutoIncField
      FieldName = 'Codigo_1'
      Origin = 'Codigo'
      ReadOnly = True
    end
    object QueryLoginDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 50
    end
    object QueryLoginOcultar: TStringField
      FieldName = 'Ocultar'
      Origin = 'Ocultar'
      FixedChar = True
      Size = 1
    end
    object QueryLoginUsuario_1: TStringField
      FieldName = 'Usuario_1'
      Origin = 'Usuario'
      FixedChar = True
      Size = 1
    end
    object QueryLoginUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'UsuarioI'
      FixedChar = True
      Size = 1
    end
    object QueryLoginUsuarioA: TStringField
      FieldName = 'UsuarioA'
      Origin = 'UsuarioA'
      FixedChar = True
      Size = 1
    end
    object QueryLoginUsuarioE: TStringField
      FieldName = 'UsuarioE'
      Origin = 'UsuarioE'
      FixedChar = True
      Size = 1
    end
    object QueryLoginPerfil_1: TStringField
      FieldName = 'Perfil_1'
      Origin = 'Perfil'
      FixedChar = True
      Size = 1
    end
    object QueryLoginPerfilI: TStringField
      FieldName = 'PerfilI'
      Origin = 'PerfilI'
      FixedChar = True
      Size = 1
    end
    object QueryLoginPerfilA: TStringField
      FieldName = 'PerfilA'
      Origin = 'PerfilA'
      FixedChar = True
      Size = 1
    end
    object QueryLoginPerfilE: TStringField
      FieldName = 'PerfilE'
      Origin = 'PerfilE'
      FixedChar = True
      Size = 1
    end
    object QueryLoginVenda: TStringField
      FieldName = 'Venda'
      Origin = 'Venda'
      FixedChar = True
      Size = 1
    end
    object QueryLoginVendaI: TStringField
      FieldName = 'VendaI'
      Origin = 'VendaI'
      FixedChar = True
      Size = 1
    end
    object QueryLoginVendaA: TStringField
      FieldName = 'VendaA'
      Origin = 'VendaA'
      FixedChar = True
      Size = 1
    end
    object QueryLoginVendaE: TStringField
      FieldName = 'VendaE'
      Origin = 'VendaE'
      FixedChar = True
      Size = 1
    end
    object QueryLoginStatus_1: TStringField
      FieldName = 'Status_1'
      Origin = 'Status'
      FixedChar = True
      Size = 1
    end
  end
  object Timer1: TTimer
    Left = 216
    Top = 208
  end
end
