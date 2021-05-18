unit uTratamento_Insert_SQL;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.Grids;

type
  TfrmMain = class(TForm)
    pnlTopo: TPanel;
    edtRecebe: TRichEdit;
    gridEnvia: TStringGrid;
    btnFormatar: TBitBtn;
    procedure btnFormatarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure inseriGrid;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  RecebeGrid : String;
  Texto,Linha : TStringlist;
  Index, Index2, Index3, Index4 : Integer;
  sTexto, sLinha, sReceber : String;


implementation

{$R *.dfm}


procedure TfrmMain.FormCreate(Sender: TObject);
  begin
    // Seto configurações iniciais sendo elas
    // configurações das StringList e do Grid
   edtRecebe.Clear;
   Texto := TStringList.Create;
   Texto.Delimiter := ',';
   Texto.StrictDelimiter := True;

   Linha := TStringList.Create;
   Linha.Delimiter := ',';
   Linha.StrictDelimiter := True;

   gridEnvia.RowCount := 2;
   gridEnvia.ColWidths[7];
   gridEnvia.FixedCols := 0;
   gridEnvia.FixedRows := 1;
  end;


procedure TfrmMain.btnFormatarClick(Sender: TObject);
  begin
      // Variavel que recebe o texto/insert inserido
      sReceber := edtRecebe.Text;

      // Delimito o inicio e fim da variavel sTexto com os primeiros
      // ( e ), com isso tenho as tabelas
      Index  := sReceber.IndexOf('(') + 1;
      Index2 := sReceber.IndexOf(')');
      sTexto := sReceber.Substring(Index,Index2-index);

      // Delimito o inicio e fim da variavel sLinha com os ultimos
      // ( e ) (lastindexof de tras para frente)
      // com isso tenho os valores inseridos
      Index3 := sReceber.LastIndexOf('(') + 1;
      Index4 := sReceber.LastIndexOf(')');
      sLinha := sReceber.Substring(Index3, Index4-Index3);

      // Limpo as StringLists
      Texto.Clear;
      Linha.Clear;

      // Extraio as strings da sTexto separado por virgula e sem o inicio
      // em branco
      ExtractStrings([','], [' '], Pchar(sTexto), Texto);
      ExtractStrings([','], [' '], Pchar(sLinha), Linha);

    // Seto o numero de colunas á quatidade de string da StringList Texto
      gridEnvia.ColCount := Texto.Count;

      // Chama a função de inserir valores na grid
      inseriGrid;

  end;

procedure TfrmMain.inseriGrid;
  var
    i : SmallInt;
    begin
      for i := 0 to Texto.Count-1 do
          begin
           gridEnvia.Cells[i,0] := texto.Strings[i];
           gridEnvia.Cells[i,1] := linha.Strings[i];
          end;
    end;

end.
