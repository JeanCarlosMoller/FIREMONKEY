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
    lblEndereco: TLabel;
    lblComplemento: TLabel;
    linhaProduto: TLine;
    circuloEndereco: TCircle;
    lblProduto: TLabel;
    lblQuantidade: TLabel;
    lblComprador: TLabel;
    procedure btn_comprarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    FLoop : String;

    procedure LoadingComprar(aInd: Boolean);
    procedure Compra_WS;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

{ TForm1 }

procedure TForm1.btn_comprarClick(Sender: TObject);
begin
  Self.LoadingComprar(True);
  rect_barra.Margins.Right := rect_fundo.Width;
  FLoop := 'S';

  Self.Compra_WS;

  TThread.CreateAnonymousThread(procedure
  begin
    while FLoop = 'S' do
    begin
      if rect_barra.Margins.Right <= 0 then
      rect_barra.Margins.Right := rect_fundo.Width;

      Sleep(150);
      TThread.Synchronize(nil, procedure
      begin
      rect_barra.Margins.Right := rect_barra.Margins.Right - 1;
      end);
    end;

    //Finalizou com erro...
    if FLoop = 'ERRO' then
    begin
      TThread.Synchronize(nil, procedure
      begin
        Self.LoadingComprar(False);
        ShowMessage('Erro ao finalizar compra');
      end);
    end;

    //Finalizou com sucesso...
    if FLoop = 'OK' then
    begin
      TThread.Synchronize(nil, procedure
      begin
        lyt_loading_compra.AnimateFloat('Margins.Left', 150, 0.3);
        lyt_loading_compra.AnimateFloat('Margins.Right', 150, 0.3);
        lyt_loading_compra.AnimateFloat('Opacity', 0, 0.3);
     end);

     Sleep(450);

     TThread.Synchronize(nil, procedure
     begin
        lyt_compra_ok.Visible   := True;
        lyt_compra_ok.AnimateFloat('Opacity', 1, 0.4);
     end);

     Sleep(1000);

     TThread.Synchronize(nil, procedure
     begin
       ShowMessage('Compra realizada com sucesso');
     end);
    end;
 end).Start;
 end;

procedure TForm1.Compra_WS;
begin
  TThread.CreateAnonymousThread(procedure
  begin
    Sleep(5000);
    //...
    //...
    //...
    FLoop := 'OK';
  end).Start;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Self.LoadingComprar(False);
end;

procedure TForm1.LoadingComprar(aInd: Boolean);
begin
  rect_fundo_braco.Visible     := aInd;
  rect_fundo_braco.Visible     := aInd;

  lyt_botao_comprar.Visible   := not aInd;
  lyt_loading_compra.Visible := aInd;
  lyt_compra_ok.Visible      := False;
  lyt_compra_ok.Opacity      := 0;
end;

end.
