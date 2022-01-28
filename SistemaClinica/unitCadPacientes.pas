unit unitCadPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormCadPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    txtId: TDBEdit;
    txtNome: TDBEdit;
    txtCelular: TDBEdit;
    txtCpf: TDBEdit;
    txtData: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtGridPaciente: TDBGrid;
    DBNavigator1: TDBNavigator;
    txtBusca: TEdit;
    Label7: TLabel;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadPacientes: TFormCadPacientes;

implementation

{$R *.dfm}

uses unitDM;

procedure TFormCadPacientes.txtBuscaChange(Sender: TObject);
begin
   DM.tbPaciente.Locate('nome',txtbusca.Text,[loPartialKey]);
end;

end.
