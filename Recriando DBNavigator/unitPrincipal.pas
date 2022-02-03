unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm2 = class(TForm)
    DBNavigator1: TDBNavigator;
    btCancelar: TButton;
    tbAbrir: TButton;
    tbFechar: TButton;
    DBGrid1: TDBGrid;
    btSalvar: TButton;
    btDeletar: TButton;
    btInserir: TButton;
    BtUltimo: TButton;
    btProximo: TButton;
    btAnterior: TButton;
    btPrimeiro: TButton;
    procedure tbAbrirClick(Sender: TObject);
    procedure tbFecharClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure BtUltimoClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses unitDM;

procedure TForm2.btAnteriorClick(Sender: TObject);
begin
  Dm.tbUsuarios.Prior;
end;

procedure TForm2.btCancelarClick(Sender: TObject);
begin
  btCancelar.Enabled := false;
  btSalvar.Enabled := false;
  btInserir.Enabled :=true;
  btDeletar.Enabled := true;

  Dm.tbUsuarios.Cancel;
end;

procedure TForm2.btDeletarClick(Sender: TObject);
begin
 if Application.MessageBox('Deseja realmente deletar o registro?','Atenção', MB_ICONQUESTION+MB_YESNO)= mrYes then
  begin
    DM.tbUsuarios.Delete;
  end;

end;

procedure TForm2.btInserirClick(Sender: TObject);
begin
  btInserir.Enabled := false;
  btDeletar.Enabled :=false;

  btSalvar.Enabled := true;
  btCancelar.Enabled := true;
  DM.tbUsuarios.Append;
  end;

procedure TForm2.btPrimeiroClick(Sender: TObject);
begin
  DM.tbUsuarios.First;
end;

procedure TForm2.btProximoClick(Sender: TObject);
begin
  DM.tbUsuarios.Next;
end;

procedure TForm2.btSalvarClick(Sender: TObject);
begin

  btSalvar.Enabled := false;
  btCancelar.Enabled := false;
  btInserir.Enabled := true ;
  btDeletar.Enabled := true;
    DM.tbUsuarios.Post;
end;

procedure TForm2.BtUltimoClick(Sender: TObject);
begin
  DM.tbUsuarios.Last;
end;

procedure TForm2.tbAbrirClick(Sender: TObject);
begin
  DM.tbUsuarios.Open;
end;

procedure TForm2.tbFecharClick(Sender: TObject);
begin
  DM.tbUsuarios.Close;
end;

end.
