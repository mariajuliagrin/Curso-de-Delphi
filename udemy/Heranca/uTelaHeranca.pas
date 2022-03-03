  unit uTelaHeranca;

  interface

  uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.DBCtrls,
    Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
    ZAbstractRODataset, ZAbstractDataset, ZDataset,uDTMConexao,uEnum;

  type
    TfrmTelaHeranca = class(TForm)
      pgcPrincipal: TPageControl;
      pnlRodape: TPanel;
      tabListagem: TTabSheet;
      tabManutencao: TTabSheet;
      Panel1: TPanel;
      mskPesquisar: TMaskEdit;
      btnPesquisar: TBitBtn;
      grdListagem: TDBGrid;
      btnNovo: TBitBtn;
      btnAlterar: TBitBtn;
      btnCancelar: TBitBtn;
      btnGravar: TBitBtn;
      btnExcluir: TBitBtn;
      btnFechar: TBitBtn;
      btnNavegador: TDBNavigator;
      qrListagem: TZQuery;
      dsListagem: TDataSource;
    lblIndice: TLabel;
      procedure FormCreate(Sender: TObject);
      procedure btnFecharClick(Sender: TObject);
      procedure btnNovoClick(Sender: TObject);
      procedure btnCancelarClick(Sender: TObject);
      procedure btnGravarClick(Sender: TObject);
      procedure btnExcluirClick(Sender: TObject);
      procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdListagemTitleClick(Column: TColumn);
    procedure mskPesquisarChange(Sender: TObject);
    private
      { Private declarations }
      EstadoDoCadastro : TEstadoDoCadastro;
      procedure ControlarBotoes( btnNovo,btnAlterar,btnCancelar,btnGravar,
  btnApagar:TBitBtn;Navegador:TDBNavigator;pgcPrincipal:TPageControl;Flag:Boolean);
      procedure ControlarIndiceTab(pgcPrincipal: TpageControl; Indice: Integer);
    function RetornaCampoTraduzido(Campo: string): string;
    procedure ExibirLabelIndice(campo: string; aLabel: TLabel);
    public
      { Public declarations }
      indiceAtual:string;
      function Excluir:Boolean;virtual;
      function Gravar(EstadoDoCadastro:TEstadoDoCadastro):Boolean;virtual;
    end;

  var
    frmTelaHeranca: TfrmTelaHeranca;

  implementation

  {$R *.dfm}
  procedure TfrmTelaHeranca.ControlarIndiceTab(pgcPrincipal: TpageControl;Indice:Integer);
  begin
    if(pgcPrincipal.Pages[Indice].TabVisible) then
    begin
      pgcPrincipal.TabIndex :=Indice;
    end;
  end;


  procedure TfrmTelaHeranca.ControlarBotoes( btnNovo,btnAlterar,btnCancelar,btnGravar,
  btnApagar:TBitBtn;Navegador:TDBNavigator;pgcPrincipal:TPageControl;Flag:Boolean) ;
  begin
      btnNovo.Enabled := Flag;
      btnApagar.Enabled := Flag;
      btnAlterar.Enabled  :=Flag;
      Navegador.Enabled :=Flag;
      pgcPrincipal.Pages[0].TabVisible := Flag;
      btnCancelar.Enabled := not(Flag);
      btnGravar.Enabled := not(Flag);

  end;
    procedure TfrmTelaHeranca.btnNovoClick(Sender: TObject);
  begin
    ControlarBotoes(btnNovo,btnAlterar,btnCancelar,btnGravar,btnExcluir,btnNavegador,pgcPrincipal,false);
    EstadoDoCadastro := ecInserir;
  end;
  procedure TfrmTelaHeranca.btnAlterarClick(Sender: TObject);
  begin
    ControlarBotoes(btnNovo,btnAlterar,btnCancelar,btnGravar,btnExcluir,btnNavegador,pgcPrincipal,false);
    EstadoDoCadastro := ecAlterar;
  end;

  procedure TfrmTelaHeranca.btnCancelarClick(Sender: TObject);
  begin
        ControlarBotoes(btnNovo,btnAlterar,btnCancelar,btnGravar,btnExcluir,btnNavegador,pgcPrincipal,True);
        ControlarIndiceTab(pgcPrincipal,0);
        EstadoDoCadastro := ecNenhum;

  end;

  procedure TfrmTelaHeranca.btnExcluirClick(Sender: TObject);
  begin
  if Excluir then
  begin
     ControlarBotoes(btnNovo,btnAlterar,btnCancelar,btnGravar,btnExcluir,btnNavegador,pgcPrincipal,true);
     ControlarIndiceTab(pgcPrincipal,0);
     EstadoDoCadastro := ecNenhum
  end;
   ;
    end;

  procedure TfrmTelaHeranca.btnFecharClick(Sender: TObject);
  begin
    Close;
  end;

  function  TfrmTelaHeranca.RetornaCampoTraduzido(Campo:string):string;
  var i: integer;
  begin
       for I := 0 to qrListagem.Fields.Count - 1 do
       begin
         if LowerCase(qrListagem.Fields[i].FieldName) = LowerCase( campo) then
         begin
             Result := qrListagem.Fields[i].DisplayLabel;
             break;
         end;
       end;

  end;

  function TfrmTelaHeranca.Excluir: Boolean;
begin
     ShowMessage('Deletando') ;
     Result := True;
end;

procedure  TfrmTelaHeranca.ExibirLabelIndice(campo:string;aLabel:TLabel);
  begin
    aLabel.Caption := RetornaCampoTraduzido(campo);
  end;

  procedure TfrmTelaHeranca.btnGravarClick(Sender: TObject);
  begin
    Try
      if Gravar(EstadoDoCadastro) then
      begin
         ControlarBotoes(btnNovo,btnAlterar,btnCancelar,btnGravar,btnExcluir,btnNavegador,pgcPrincipal,true);
         ControlarIndiceTab(pgcPrincipal,0);
      end;
    Finally
      EstadoDoCadastro := ecNenhum;
    End;
  end;

  procedure TfrmTelaHeranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrListagem.Close;
end;

procedure TfrmTelaHeranca.FormCreate(Sender: TObject);
  begin
              qrListagem.Connection := dtmConexao.conexaoDB;
              dsListagem.DataSet := qrListagem;
              grdListagem.DataSource := dsListagem;
              grdListagem.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,
                                      dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,
                                      dgCancelOnExit,dgTitleClick,dgTitleHotTrack];
  end;

  procedure TfrmTelaHeranca.FormShow(Sender: TObject);
begin
  if(qrListagem.SQL.Text<>EmptyStr) then
  begin
    qrListagem.IndexFieldNames :=indiceAtual;
    ExibirLabelIndice(indiceAtual,lblIndice);
    qrListagem.Open;
  end;
  ControlarIndiceTab(pgcPrincipal,0);
  ControlarBotoes(btnNovo,btnAlterar,btnCancelar,btnGravar,btnExcluir,btnNavegador,pgcPrincipal, True);
end;

function TfrmTelaHeranca.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
begin

        if(EstadoDoCadastro = ecInserir) then
          ShowMessage('Inserir')
        else if (EstadoDoCadastro = ecAlterar) then
          showMessage('Alterado')    ;

        Result := True;
end;

procedure TfrmTelaHeranca.grdListagemTitleClick(Column: TColumn);
begin
     indiceAtual := column.FieldName;
     qrListagem.IndexFieldNames := indiceAtual;
     ExibirLabelIndice(indiceAtual,lblIndice);
end;

procedure TfrmTelaHeranca.mskPesquisarChange(Sender: TObject);
begin
  qrListagem.Locate(indiceAtual,TMaskEdit(Sender).Text,[loPartialKey]);

end;

end.
