unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, System.Math.Vectors,
  FMX.Controls3D, FMX.Layers3D;

type
  TForm1 = class(TForm)
    VertScrollBox1: TVertScrollBox;
    lyt_detalhes: TLayout;
    rect_valores: TRectangle;
    lblTitulo: TLabel;
    lytProduto: TLayout;
    lblTituloProduto: TLabel;
    lblCentavoProduto: TLabel;
    lblReaisProdutos: TLabel;
    lytEnvio: TLayout;
    lblTituloEnvio: TLabel;
    lblCentavosEnvio: TLabel;
    lblReaisEnvio: TLabel;
    lytParcelas: TLayout;
    lblTituloParcelas: TLabel;
    lblCentavosParcelas: TLabel;
    lblReaisParcela: TLabel;
    linhaEnvio: TLine;
    lyt_botao_comprar: TLayout;
    Rectangle1: TRectangle;
    btn_comprar: TSpeedButton;
    Layout3D1: TLayout3D;
    lyt_compra_ok: TLayout;
    Image1: TImage;
    lyt_loading_compra: TLayout;
    rect_barra: TRectangle;
    rect_fundo: TRectangle;
    Label1: TLabel;
    rect_fundo_braco: TRectangle;
    rect_fundo_branco_bottom: TRectangle;
    circuloProduto: TCircle;
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
