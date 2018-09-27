unit Unit_Baixa_Tabela_IBPT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Param,
  FireDAC.Phys.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrBase, ACBrSocket, ACBrIBPTax,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tform_baixa_ibpt = class(TForm)
    pb1: TProgressBar;
    lbl1: TLabel;
    TRProduto: TFDTransaction;
    tmr1: TTimer;
    BaixaTabela: TACBrIBPTax;
    UPProduto: TFDUpdateSQL;
    QProduto: TFDQuery;
    QProdutoCOD_PRO: TIntegerField;
    QProdutoCOD_LAB: TIntegerField;
    QProdutoCOD_SEC: TIntegerField;
    QProdutoVALOR_PRO: TBCDField;
    QProdutoPROMOCAO_PRO: TBCDField;
    QProdutoCONTROLA_ESTOQUE_PRO: TStringField;
    QProdutoCOMISSAO_PRO: TBCDField;
    QProdutoQUANT_UNIDADE_ENTRADA: TBCDField;
    QProdutoESTOQUE_MINIMO_PRO: TBCDField;
    QProdutoNOME_PRO: TStringField;
    QProdutoDESC_CUPOM: TStringField;
    QProdutoATIVO_PRO: TStringField;
    QProdutoMARGEM_LUCRO_PRO: TBCDField;
    QProdutoLOCALIZACAO_PRO: TStringField;
    QProdutoPRODUTO_PESADO_PRO: TStringField;
    QProdutoCOD_SETOR: TIntegerField;
    QProdutoTECLA_ATALHO_PRO: TIntegerField;
    QProdutoINDICE_RECEITA_PRO: TIntegerField;
    QProdutoDIAS_VALIDADE_PRO: TIntegerField;
    QProdutoREFERENCIA_PRO: TStringField;
    QProdutoCOMPLEMENTO_PRO: TStringField;
    QProdutoICMS_CONT_EST: TIntegerField;
    QProdutoICMS_CONT_FORA: TIntegerField;
    QProdutoICMS_CF_EST: TIntegerField;
    QProdutoICMS_CF_FORA: TIntegerField;
    QProdutoCST_CONT_EST: TStringField;
    QProdutoCST_CONT_FORA: TStringField;
    QProdutoCST_CF_EST: TStringField;
    QProdutoCST_CF_FORA: TStringField;
    QProdutoCAMINHO_FOTO_PRO: TStringField;
    QProdutoSAIR_TABELA_PRECO: TStringField;
    QProdutoCFOP_VENDAS_CONT_EST: TIntegerField;
    QProdutoCFOP_VENDAS_CF_EST: TIntegerField;
    QProdutoCFOP_VENDAS_CONT_FORA: TIntegerField;
    QProdutoCFOP_VENDAS_CF_FORA: TIntegerField;
    QProdutoST_CONT_EST: TStringField;
    QProdutoVR_AGREG_CONT_EST: TBCDField;
    QProdutoIPI_CONT_EST: TBCDField;
    QProdutoIPI_CF_EST: TBCDField;
    QProdutoIPI_CONT_FORA: TBCDField;
    QProdutoIPI_CF_FORA: TBCDField;
    QProdutoCOD_NCM: TStringField;
    QProdutoCLASSIFICACAO_FISCAL: TStringField;
    QProdutoCODIGO_TIPO: TIntegerField;
    QProdutoCOD_PRODUTO_ESTOQUE: TIntegerField;
    QProdutoCOD_GRUPO: TIntegerField;
    QProdutoSUB_GRUPO: TIntegerField;
    QProdutoPRECO_PROGRAMADO: TBCDField;
    QProdutoALIQUOTA_PIS: TBCDField;
    QProdutoALIQUOTA_COFINS: TBCDField;
    QProdutoALIQUOTA_IR: TBCDField;
    QProdutoALIQUOTA_CSLL: TBCDField;
    QProdutoALIQUOTA_OUTRAS: TBCDField;
    QProdutoISENTO_PIS_COFINS_PRO: TStringField;
    QProdutoPRECO_CUSTO: TBCDField;
    QProdutoCREDITO_ICMS: TBCDField;
    QProdutoPRECO_PRAZO_PRO: TBCDField;
    QProdutoTIPO_PRODUCAO: TStringField;
    QProdutoCODIGO_BARRA_PRO: TStringField;
    QProdutoCODIGO_UNIDADE_SAIDA: TIntegerField;
    QProdutoCODIGO_UNIDADE_ENTRADA: TIntegerField;
    QProdutoPRECO_PROGRAMADO_PRAZO: TBCDField;
    QProdutoRED_CF_EST: TBCDField;
    QProdutoRED_CF_FORA: TBCDField;
    QProdutoRED_CONT_EST: TBCDField;
    QProdutoRED_CONT_FORA: TBCDField;
    QProdutoDATA_VALIDADE: TDateField;
    QProdutoCODIGO_SETOR_ESTOQUE: TIntegerField;
    QProdutoORIG: TIntegerField;
    QProdutoCSOSN: TStringField;
    QProdutoIPI: TFloatField;
    QProdutoICMS: TFloatField;
    QProdutoRICMS: TFloatField;
    QProdutoIVA: TFloatField;
    QProdutoPIS: TFloatField;
    QProdutoCONFINS: TFloatField;
    QProdutoTAMANHO: TStringField;
    QProdutoCOR: TStringField;
    QProdutoOBS: TWideMemoField;
    QProdutoCST_PIS: TStringField;
    QProdutoCST_COFINS: TStringField;
    QProdutoCST_IPI: TStringField;
    QProdutoULTIMA_ALTERACAO: TDateField;
    QProdutoVALOR_ATACADO: TBCDField;
    QProdutoALIQ_IBPT_NAC: TBCDField;
    QProdutoALIQ_IBPT_IMP: TBCDField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
  private
      Iniciou: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_baixa_ibpt: Tform_baixa_ibpt;

implementation

{$R *.dfm}

uses UdtmBcoErp;

procedure Tform_baixa_ibpt.FormActivate(Sender: TObject);
var
  ex, Decricao: String;
  tabela: Integer;
  aliqNac, aliqImp, AliqEst, AliqMun: Double;
begin
  if not Iniciou then
  begin
    Iniciou := True;
    DeleteFile(  ExtractFilePath( Application.ExeName ) + 'tabela.csv' );
    if not FileExists( ExtractFilePath( Application.ExeName ) + 'tabela.csv' ) then
    begin
       BaixaTabela.DownloadTabela;
       BaixaTabela.Arquivo.SaveToFile( ExtractFilePath( Application.ExeName ) + 'tabela.csv' );
    end;

    if BaixaTabela.AbrirTabela( ExtractFilePath( Application.ExeName ) + 'tabela.csv' ) then
    begin
      if TRProduto.Active then
        TRProduto.Commit;
      TRProduto.StartTransaction;

      QProduto.Close;
      QProduto.Open;
      QProduto.Last;
      QProduto.First;
      pb1.Max := QProduto.RecordCount;
      pb1.Position := 0;

      while not QProduto.Eof do
      begin
        if BaixaTabela.Procurar( QProdutoCOD_NCM.AsString, Ex, Decricao, Tabela, aliqNac, aliqImp, AliqEst, AliqMun ) then
        begin
          if ( QProdutoALIQ_IBPT_NAC.AsFloat <> aliqNac )
          or ( QProdutoALIQ_IBPT_IMP.AsFloat <> aliqImp ) then
          begin
              QProduto.Edit;
              QProdutoALIQ_IBPT_NAC.AsFloat := aliqNac;
              QProdutoALIQ_IBPT_IMP.AsFloat := aliqImp;
              QProduto.Post;
          end;
        end
        else
        begin
          QProduto.Edit;
          QProdutoALIQ_IBPT_NAC.AsFloat := 0;
          QProdutoALIQ_IBPT_IMP.AsFloat := 0;
          QProduto.Post;
        end;
        QProduto.Next;
        pb1.Position := pb1.Position + 1;
      end;
      TRProduto.Commit;
    end;
    Close;
  end;

end;

procedure Tform_baixa_ibpt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure Tform_baixa_ibpt.FormCreate(Sender: TObject);
begin
  Iniciou := False;
end;

procedure Tform_baixa_ibpt.tmr1Timer(Sender: TObject);
begin
 if pb1.Position >= pb1.Max then
      Close;
end;

end.
