program Estoque;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {formPrincipal},
  unitCadProduto in 'unitCadProduto.pas' {formCadProdutos},
  unitCadMovimentacao in 'unitCadMovimentacao.pas' {formCadMovimentacao},
  unitConsMovimentacao in 'unitConsMovimentacao.pas' {formConsMovimentacao},
  unitDm in 'unitDm.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformCadProdutos, formCadProdutos);
  Application.CreateForm(TformCadMovimentacao, formCadMovimentacao);
  Application.CreateForm(TformConsMovimentacao, formConsMovimentacao);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
