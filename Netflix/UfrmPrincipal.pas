unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ListBox, FMX.Ani;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Layout1: TLayout;
    Image5: TImage;
    Label1: TLabel;
    Layout2: TLayout;
    Image6: TImage;
    Label2: TLabel;
    Image7: TImage;
    Layout3: TLayout;
    Image8: TImage;
    Layout4: TLayout;
    Image9: TImage;
    Label3: TLabel;
    Label4: TLabel;
    LayoutMenu: TLayout;
    LayoutFechar: TLayout;
    Rectangle1: TRectangle;
    Image10: TImage;
    ListBox1: TListBox;
    FloatAnimation1: TFloatAnimation;
  private
    { Private declarations }

    procedure LoadMenu;
    procedure OpenMenu(ind: Boolean);
    procedure SetupMenu(item: TListBoxItem; texto: string);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

{ TForm1 }

procedure TForm1.LoadMenu;
begin
  ListBox1.Items.Clear;

  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Todos os g�neros');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Dispon�vel para dowload');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'A��o');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Adolecente');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Anime');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Asi�ticos');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Brasileiros');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Com�dia');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Drama');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Esportes');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Mist�rio');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Novelas');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Suspense');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Terror');

end;

procedure TForm1.OpenMenu(ind: Boolean);
begin
  //Esconde o item selecionado..
  ListBox1.ItemIndex := 1;

  //volta a listagem para o inicio
  ListBox1.ScrollToItem(ListBox1.ItemByIndex(0));

  if ind then
  begin
    Layout1.Visible := True;
    Layout2.Tag     := 1;
    Layout3.AnimateFloat('Opacity', 0, 0.2);
    FloatAnimation1.Inverse := False;

  end
  else
  begin
     Layout2.Tag := 0;
     Layout3.AnimateFloat('Opacity', 1, 0.4);
     FloatAnimation1.Inverse := False;
  end;
    FloatAnimation1.Start;

end;

procedure TForm1.SetupMenu(item: TListBoxItem; texto: string);
begin

end;

end.
