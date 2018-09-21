unit Unit_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.WinXCtrls, Vcl.CategoryButtons, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, RxExtenders,
  RxGrdCpt, Vcl.Buttons, Data.Cloud.CloudAPI, Data.Cloud.AzureAPI, Vcl.Grids,
  Vcl.Samples.Calendar, Vcl.AppAnalytics;

type
  TForm_Principal = class(TForm)
    ActionList1: TActionList;
    actHome: TAction;
    actLayout: TAction;
    actPower: TAction;
    imlIcons: TImageList;
    pnlSettings: TPanel;
    pnlToolbar: TPanel;
    pnl_top_esquerdo: TPanel;
    ActivityIndicator1: TActivityIndicator;
    pnl_search: TPanel;
    pnl_lateral: TPanel;
    SV: TSplitView;
    catMenuItems: TCategoryButtons;
    pnl_logo: TPanel;
    Img_logo: TImage;
    pnl_meio: TPanel;
    RxWizardHeader1: TRxWizardHeader;
    Panel1: TPanel;
    Panel2: TPanel;
    SearchBox1: TSearchBox;
    btn_lateral: TButton;
    tmr_data: TTimer;
    pg_control_1: TPageControl;
    TabSheet1: TTabSheet;
    LinkLabel1: TLinkLabel;
    procedure CarregaConfiguracao;
    procedure FormCreate(Sender: TObject);
    procedure imgMenuClick(Sender: TObject);
    procedure catMenuItemsCategoryCollapase(Sender: TObject;
      const Category: TButtonCategory);
    procedure p_abreconfig(Sender: TObject);
    procedure actLayoutExecute(Sender: TObject);
    procedure btn_lateralClick(Sender: TObject);
    procedure tmr_dataTimer(Sender: TObject);
  private
    hora : TDateTime;
    dia, tarde, noite: string;
  public
    { Public declarations }
  end;

var
  Form_Principal: TForm_Principal;

implementation

uses
Unit_Variaveis_Globais, Unit_Rotinas, UdtmBcoErp, Unit_Cadastro_Modelo;

{$R *.dfm}



procedure TForm_Principal.actLayoutExecute(Sender: TObject);
begin
    AbreForm(TForm_Cadastro_Modelo,Form_Cadastro_Modelo);
end;

procedure TForm_Principal.btn_lateralClick(Sender: TObject);
begin
 { if SV.Opened then
  begin
    // SV.Close;
     pnl_lateral.Width :=45;
  end
  else
  begin
   // SV.Open;
    pnl_lateral.Width :=185;
  end; }

  if pnl_lateral.Width =170 then
  begin
    pnl_lateral.Width :=53;
  end
  else
  begin
    pnl_lateral.Width :=170;
  end;

end;

procedure TForm_Principal.CarregaConfiguracao;
var
TemaAleatorio : Integer;
begin
  if FileExists(ExtractFilePath(Application.ExeName) + 'imagens\fundo.jpg') then
  begin
   // img_fundo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
   //   'imagens\fundo.jpg');
   // img_fundo.Visible := true;
  end;

  TemaAleatorio := Random(12);

  case TemaAleatorio of
  1:
    begin
      //azul
      SV.Color         := $00A47D07;
      pnlToolbar.Color := $00A47D07;
      catMenuItems.HotButtonColor        := $00A47D07;
      RxWizardHeader1.CaptionFont.Color  := $00A47D07;
    end;
  2:
    begin
      //roxo escuro
      SV.Color         := $005B1B4D;
      pnlToolbar.Color := $005B1B4D;
      catMenuItems.HotButtonColor        := $005B1B4D;
      RxWizardHeader1.CaptionFont.Color  := $005B1B4D;
    end;
  3:
    begin
      //Azul claro
      SV.Color         := $00DCAA04;
      pnlToolbar.Color := $00DCAA04;
      catMenuItems.HotButtonColor        := $00DCAA04;
      RxWizardHeader1.CaptionFont.Color  := $00DCAA04;
    end;
  4:
    begin
      //Azul escuro
      SV.Color         := $00A64707;
      pnlToolbar.Color := $00A64707;
      catMenuItems.HotButtonColor        := $00A64707;
      RxWizardHeader1.CaptionFont.Color  := $00A64707;
    end;
  5:
    begin
      //verde
      SV.Color         := $00889600;
      pnlToolbar.Color := $00889600;
      catMenuItems.HotButtonColor        := $00889600;
      RxWizardHeader1.CaptionFont.Color  := $00889600;
    end;
  6:
    begin
      //Preto
      SV.Color         := $00191919;
      pnlToolbar.Color := $00191919;
      catMenuItems.HotButtonColor        := $00191919;
      RxWizardHeader1.CaptionFont.Color  := $00191919;
    end;
  7:
    begin
      // Verde Whatsappp
      SV.Color         := $00A5BE1E;
      pnlToolbar.Color := $00A5BE1E;
      catMenuItems.HotButtonColor        := $00A5BE1E;
      RxWizardHeader1.CaptionFont.Color  := $00A5BE1E;
    end;
  8:
    begin
      // Cor beni Azul Original escuro
      SV.Color         := $00DCAA04;
      pnlToolbar.Color := $00DCAA04;
      catMenuItems.HotButtonColor        := $00DCAA04;
      RxWizardHeader1.CaptionFont.Color  := $00DCAA04;
    end;
  9:
    begin
     // Cor beni Azul Original mais claro
      SV.Color         := $00E0B10D;
      pnlToolbar.Color := $00E0B10D;
      catMenuItems.HotButtonColor         := $00E0B10D;
      RxWizardHeader1.CaptionFont.Color   := $00E0B10D;
    end;
  10:
    begin
       // Cor beni Roxo Original mais claro
      SV.Color         := $00DB9587;
      pnlToolbar.Color := $00DB9587;
      catMenuItems.HotButtonColor        := $00DB9587;
      RxWizardHeader1.CaptionFont.Color  := $00DB9587;
    end;
  11:
    begin
       // Cor beni Laranja Original mais escuro
      SV.Color         := $0028A5F3;
      pnlToolbar.Color := $0028A5F3;
      catMenuItems.HotButtonColor        := $0028A5F3;
      RxWizardHeader1.CaptionFont.Color  := $0028A5F3;
    end;
  12:
    begin
        // Cor beni Vermelho Original mais escuro
      SV.Color         := $005353CC;
      pnlToolbar.Color := $005353CC;
      catMenuItems.HotButtonColor        := $005353CC;
      RxWizardHeader1.CaptionFont.Color  := $005353CC;
    end;

  end;

end;

procedure TForm_Principal.catMenuItemsCategoryCollapase(Sender: TObject;
  const Category: TButtonCategory);
begin
   catMenuItems.Categories[0].Collapsed := False;
end;

procedure TForm_Principal.FormCreate(Sender: TObject);
begin
  CarregaConfiguracao;
end;

procedure TForm_Principal.imgMenuClick(Sender: TObject);
begin
  if SV.Opened then
  begin
     SV.Close;
     pnl_lateral.Width :=0;
  end
  else
  begin
    SV.Open;
    pnl_lateral.Width :=136;
  end;
end;

procedure TForm_Principal.p_abreconfig(Sender: TObject);
begin
  AbreForm(TForm_Cadastro_Modelo,Form_Cadastro_Modelo);
end;

procedure TForm_Principal.tmr_dataTimer(Sender: TObject);
begin
  dia:= '6:00';
  tarde:= '12:00';
  noite:= '18:00';
  hora:= Time;

 { If hora > StrtoTime(Dia) then
  begin
    RxWizardHeader1.Comments := 'Marilia-SP' + 'Ol�, Bom Dia! ';
  end;
   If hora > StrtoTime(Tarde) then
  begin
    RxWizardHeader1.Comments := 'Marilia-SP' + 'Ol�, Boa Tarde! ';
  end;
   If hora > StrtoTime(noite) then
  begin
    RxWizardHeader1.Comments := 'Marilia-SP' + 'Ol�, Boa Noite! ';
  end; }
end;

end.