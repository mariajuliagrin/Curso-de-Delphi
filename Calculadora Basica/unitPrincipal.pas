unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    txtNumero1: TEdit;
    Label2: TLabel;
    txtNumero2: TEdit;
    txtResultado: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  numero1: Real;
  numero2: Real;
  resultado: Real;

begin
 numero1 := StrToFloat( txtNumero1.Text);
 numero2 := StrToFloat(txtNumero2.Text);
 resultado := numero1 + numero2;
 txtResultado.Text := FloatToStr(resultado);
end;

end.
