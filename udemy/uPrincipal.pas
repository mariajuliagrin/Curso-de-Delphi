unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,uDTMConexao;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    Cadastro1: TMenuItem;
    Movimentao1: TMenuItem;
    Relatrio1: TMenuItem;
    Cliente1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Produto1: TMenuItem;
    N3: TMenuItem;
    menuFechar: TMenuItem;
    Vendas1: TMenuItem;
    Cliente2: TMenuItem;
    N4: TMenuItem;
    Produto2: TMenuItem;
    N5: TMenuItem;
    Vendapordata1: TMenuItem;
    procedure menuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadCategoria;



procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
    {
    dtmConexao := TdtmConexao.create(Self);
    dtmConexao.ConexaoDB.SQLHourGlass := True;
    dtmConexao.conexaoDB.Protocol := 'mssql';
    dtmConexao.conexaoDB.LibraryLocation:=  'C:\Users\julia\Documents\MeuGit\Curso-de-Delphi\udemy\ntwdblib.dll';
    dtmConexao.conexaoDB.HostName := '.\SQLEXPRESS';
    dtmConexao.conexaoDB.Port :=  1433;
    dtmConexao.conexaoDB.User :='sa';
    dtmConexao.conexaoDB.Password := 'L2o4v1e2@';
    dtmConexao.conexaoDB.Database := 'vendas'   ;

    dtmConexao.conexaoDB.Connected := True;   }
    dtmConexao := TdtmConexao.create(Self);
    with   dtmConexao.ConexaoDB do begin
      SQLHourGlass := True;
      Protocol := 'mssql';
      LibraryLocation:=  'C:\Users\julia\Documents\MeuGit\Curso-de-Delphi\udemy\ntwdblib.dll';
      HostName := '.\SQLEXPRESS';
      Port :=  1433;
      User :='sa';
      Password := 'L2o4v1e2@';
      Database := 'vendas'   ;

    end;
end;

procedure TfrmPrincipal.menuFecharClick(Sender: TObject);
begin
   //Close;
   Application.Terminate;
end;

procedure TfrmPrincipal.N2Click(Sender: TObject);
begin
        frmCadCategoria := TfrmCadCategoria.Create(Self);
        frmCadCategoria.ShowModal;
        frmCadCategoria.Release;
end;

end.
