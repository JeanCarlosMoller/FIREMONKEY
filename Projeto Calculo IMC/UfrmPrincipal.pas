unit UfrmPrincipal;

interface

uses
  System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts;

type
  TForm1 = class(TForm)
    lylTitulo: TLayout;
    recTitulo: TRectangle;
    lblTituloCalcIMC: TLabel;
    lylCorpoApp: TLayout;
    lblAltura: TLabel;
    edtAltura: TEdit;
    lblPeso: TLabel;
    edtPeso: TEdit;
    lblAprensentacaoPesoIdeal: TLabel;
    Calcular: TSpeedButton;
    recBotao: TRectangle;
    Label1: TLabel;
    procedure CalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalculoIMC;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.SysUtils;

{$R *.fmx}

procedure TForm1.CalcularClick(Sender: TObject);
begin
  calculoImc();
end;

procedure TForm1.CalculoIMC;
var
  peso, altura, imc : Double;

const
  magreza        = 18.5;
  normal         = 24.9;
  sobrepeso      = 29.9;
  obesidade      = 39.9;
  obesidadeGrave = 40.0;
begin
  peso   := StrToFloat(edtPeso.Text);
  altura := StrToFloat(edtAltura.Text);

  imc :=  peso / (altura * altura);

  //showMessage(imc.ToString);

  if imc <= magreza then
  begin
  lblAprensentacaoPesoIdeal.Text :=  formatfloat('0.##', + imc) + ' Magreza';
  end

  else if (imc <= normal) and (imc > magreza)then
  begin
  //Edit1.Text := formatfloat('0.##',r);
  lblAprensentacaoPesoIdeal.Text :=  formatfloat('0.##', + imc) + ' Normal';
  end

  else if (imc > normal) and (imc <= sobrepeso)then
  begin
  lblAprensentacaoPesoIdeal.Text :=  formatfloat('0.##', + imc) + ' Sobrepeso';
  end

  else if (imc > sobrepeso) and (imc <= obesidade)then
  begin
  lblAprensentacaoPesoIdeal.Text :=  formatfloat('0.##', + imc) + ' Obesidade';
  end

  else if (imc > obesidade) and (imc <= obesidadeGrave)then
  begin
  lblAprensentacaoPesoIdeal.Text :=  formatfloat('0.##', + imc) + ' Obesidade Grave';
  end;

end;

end.
