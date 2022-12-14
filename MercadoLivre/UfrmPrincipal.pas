unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Z: TVertScrollBox;
    rect_valores: TRectangle;
    Label1: TLabel;
    lytProduto: TLayout;
    lblTituloProduto: TLabel;
    lytEnvio: TLayout;
    lblCentavosProduto: TLabel;
    lblReaisProduto: TLabel;
    lblTituloEnvio: TLabel;
    lblReaisEnvio: TLabel;
    lblCentavosEnvio: TLabel;
    lytParcelas: TLayout;
    lblTituloParcela: TLabel;
    lblReaisParcelas: TLabel;
    lblCentavosParcelas: TLabel;
    Line1: TLine;
    lyt_botao_compra: TLayout;
    Rectangle1: TRectangle;
    btn_comprar: TSpeedButton;
    lyt_compra_ok: TLayout;
    imgOk: TImage;
    lyt_loading_compra: TLayout;
    rect_fundo: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.
