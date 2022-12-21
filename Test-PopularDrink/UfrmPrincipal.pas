unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.Layouts, FMX.StdCtrls,
  FMX.Menus;

type
  TForm1 = class(TForm)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Edit1: TEdit;
    Label1: TLabel;
    Image1: TImage;
    Layout2: TLayout;
    Image2: TImage;
    Image3: TImage;
    FlowLayout1: TFlowLayout;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Image4: TImage;
    Image5: TImage;
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