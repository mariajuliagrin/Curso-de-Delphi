unit unitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,Dialogs;

type
  TDM = class(TDataModule)
    conexao: TFDConnection;
    tbUsuarios: TFDTable;
    dsUsuarios: TDataSource;
    procedure tbUsuariosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unitPrincipal;

{$R *.dfm}

procedure TDM.tbUsuariosAfterScroll(DataSet: TDataSet);

//no evento after scroll, toda vez que   movimentar para um registro( após o movimento) faz essas verificações
begin
//se chegar no fim do arquivo desabilita os botoes de ir para frente
      if tbUsuarios.Eof = True then
        begin
            Form2.btProximo.Enabled := false;
            Form2.BtUltimo.Enabled := false;
        end
      else
        begin
             Form2.btProximo.Enabled := true;
            Form2.BtUltimo.Enabled := true;
        end;
      //se estiver no inicio desabilita os botoes de voltar e primeiro registro
      if tbUsuarios.Bof = true then
        begin
          Form2.btPrimeiro.Enabled := false;
          Form2.btAnterior.Enabled := false  ;
        end
      else
        begin
          Form2.btPrimeiro.Enabled := true;
          Form2.btAnterior.Enabled := true  ;
        end


end;

end.
