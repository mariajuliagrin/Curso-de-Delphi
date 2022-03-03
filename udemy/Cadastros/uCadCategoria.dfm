inherited frmCadCategoria: TfrmCadCategoria
  Caption = 'Cadastro de Categoria'
  ClientHeight = 510
  ClientWidth = 764
  ExplicitWidth = 770
  ExplicitHeight = 539
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 764
    Height = 463
    ActivePage = tabManutencao
    ExplicitWidth = 764
    ExplicitHeight = 463
    inherited tabListagem: TTabSheet
      ExplicitWidth = 756
      ExplicitHeight = 435
      object Label1: TLabel [0]
        Left = 360
        Top = 208
        Width = 31
        Height = 13
        Caption = 'Label1'
      end
      inherited Panel1: TPanel
        Width = 756
        ExplicitWidth = 756
      end
      inherited grdListagem: TDBGrid
        Width = 756
        Height = 370
        Columns = <
          item
            Expanded = False
            FieldName = 'categoriaid'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitWidth = 756
      ExplicitHeight = 435
      object edtCategoriaId: TLabeledEdit
        Left = 12
        Top = 32
        Width = 121
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        TabOrder = 0
      end
      object edtDescricao: TLabeledEdit
        Left = 12
        Top = 80
        Width = 365
        Height = 21
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 30
        TabOrder = 1
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 463
    Width = 764
    ExplicitTop = 463
    ExplicitWidth = 764
    inherited btnFechar: TBitBtn
      Left = 685
      ExplicitLeft = 685
    end
    inherited btnNavegador: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited qrListagem: TZQuery
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT categoriaid, descricao FROM categorias')
    object qrListagemcategoriaid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'categoriaid'
      ReadOnly = True
    end
    object qrListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 30
    end
  end
end
