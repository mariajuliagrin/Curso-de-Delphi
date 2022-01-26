unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    O: TLabel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    DBText1: TDBText;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    txtbusca: TEdit;
    Label5: TLabel;
    procedure txtbuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses unitDM;

procedure TForm1.txtbuscaChange(Sender: TObject);
begin
  DM.tbContatos.Locate('nome',txtbusca.Text,[loPartialKey]);
end;

end.
