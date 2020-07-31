unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.Themes,
  Vcl.Styles,
  MMSystem, System.UITypes, ShellAPI, Vcl.ComCtrls;

type
  TlisMain = class(TForm)
    Button1: TButton;
    LinkLabelGithub: TLinkLabel;
    Memo1: TMemo;
    Image1: TImage;
    Bevel1: TBevel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LinkLabelGithubLinkClick(Sender: TObject; const Link: string;
      LinkType: TSysLinkType);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lisMain: TlisMain;
  sp, key: integer;
  Arq: TextFile; { declarando a variável "arq" do tipo arquivo texto }
  DestinoArq: string;

implementation

{$R *.dfm}

uses UntSplashScreen;

procedure SaveMessagePC();     // Caso o usuário não tenha o arquivo no mesmo local que o exe, ele cria uma cópia
begin

  DestinoArq := ExtractFilePath(Application.ExeName) + 'SecretMessage.txt';
  // Define que o destino da key é no mesmo local do executável.
  AssignFile(Arq, DestinoArq);
  Rewrite(Arq);
  Writeln(Arq,
    'VCBZFTHI?TH,CBGR#MCI#VFTV!XW#H.X#GXVFXH#AXGGTZXO#H.,G#V.T??XBZX#,G#DTFH#CY#?,G#GX?XVH,CB#DFCVXGGO');
  // Add Linha
  Writeln(Arq,
    'WCVIAXBH#MCIF#GC?IH,CBP#TBW#WCBSH#YCFZXH#HC#WX?,JXF#,H#HC#IG#K,H.,B#H.X#XGHTU?,G.XW#GV.XWI?XOOO');
  // Add Linha
  CloseFile(Arq);

end;

procedure TlisMain.Button1Click(Sender: TObject);
var
  linha, msg, charL, result, charR, charR2, charR3, nova: string;
  i, z, x, charLength: integer;
  keyFound: boolean;
  y, keyFoundI: integer;
begin

  Timer1.Enabled := true;

  sndPlaySound('Click.wav', SND_NODEFAULT Or SND_ASYNC);        // Sons do programa

  Memo1.Clear;      // Limpando o memo

  // Verifica se o arquivo "SecretMessage.txt" existe na unidade de disco, caso não tenha cria um
  if fileexists('SecretMessage.txt') = false then
  begin

    SaveMessagePC();

  end;

  AssignFile(Arq, 'SecretMessage.txt');

  result := '';
  msg := '';

  // Loop que lê o arquivo e escreve na tela

  Reset(Arq); // Ponteiro no início do arquivo
  while not Eof(Arq) do // Para verificar o fim do arquivo, função Eof
  begin

    ReadLn(Arq, linha);
    Memo1.Lines.Add(linha);
    msg := msg + linha;

  end;
  CloseFile(Arq);

  Memo1.Lines.Add('=');

  keyFound := false;
  key := 0;

  while keyFound = false do          // Enquanto não encontrar a key ele continua testando todas possibilidades
  begin
    for key := 0 to 29 do
    begin
      if keyFound = true then
        break;
      result := '';
      nova := '';
      keyFoundI := 0;
      for i := 1 to length(msg) do
      begin

        if keyFound = true then
          break;

        charL := msg[i];
        if charL = 'A' then
        begin

          x := 0 + key;

        end
        else if charL = 'B' then
        begin

          x := 1 + key;

        end
        else if charL = 'C' then
        begin

          x := 2 + key;

        end
        else if charL = 'D' then
        begin

          x := 3 + key;

        end
        else if charL = 'E' then
        begin

          x := 4 + key;

        end
        else if charL = 'F' then
        begin

          x := 5 + key;

        end
        else if charL = 'G' then
        begin

          x := 6 + key;

        end
        else if charL = 'H' then
        begin

          x := 7 + key;

        end
        else if charL = 'I' then
        begin

          x := 8 + key;

        end
        else if charL = 'J' then
        begin

          x := 9 + key;

        end
        else if charL = 'K' then
        begin

          x := 10 + key;

        end
        else if charL = 'L' then
        begin

          x := 11 + key;

        end
        else if charL = 'M' then
        begin

          x := 12 + key;

        end
        else if charL = 'N' then
        begin

          x := 13 + key;

        end
        else if charL = 'O' then
        begin

          x := 14 + key;

        end
        else if charL = 'P' then
        begin

          x := 15 + key;

        end
        else if charL = 'Q' then
        begin

          x := 16 + key;

        end
        else if charL = 'R' then
        begin

          x := 17 + key;

        end
        else if charL = 'S' then
        begin

          x := 18 + key;

        end
        else if charL = 'T' then
        begin

          x := 19 + key;

        end
        else if charL = 'U' then
        begin

          x := 20 + key;

        end
        else if charL = 'V' then
        begin

          x := 21 + key;

        end
        else if charL = 'W' then
        begin

          x := 22 + key;

        end
        else if charL = 'X' then
        begin

          x := 23 + key;

        end
        else if charL = 'Y' then
        begin

          x := 24 + key;

        end
        else if charL = 'Z' then
        begin

          x := 25 + key;

        end
        else if charL = '.' then
        begin

          x := 26 + key;

        end
        else if charL = ',' then
        begin

          x := 27 + key;

        end
        else if charL = ';' then
        begin

          x := 28 + key;

        end
        else if charL = '!' then
        begin

          x := 29 + key;

        end
        else if charL = '?' then
        begin

          x := 30 + key;

        end
        else if charL = '#' then
        begin

          result := result + ' ';

        end;

        if x > 30 then
        begin

          x := x - 31;

        end;

        if x = 0 then
        begin

          result := result + 'A';

        end
        else if x = 1 then
        begin

          result := result + 'B';

        end
        else if x = 2 then
        begin

          result := result + 'C';

        end
        else if x = 3 then
        begin

          result := result + 'D';

        end
        else if x = 4 then
        begin

          result := result + 'E';

        end
        else if x = 5 then
        begin

          result := result + 'F';

        end
        else if x = 6 then
        begin

          result := result + 'G';

        end
        else if x = 7 then
        begin

          result := result + 'H';

        end
        else if x = 8 then
        begin

          result := result + 'I';

        end
        else if x = 9 then
        begin

          result := result + 'J';

        end
        else if x = 10 then
        begin

          result := result + 'K';

        end
        else if x = 11 then
        begin

          result := result + 'L';

        end
        else if x = 12 then
        begin

          result := result + 'M';

        end
        else if x = 13 then
        begin

          result := result + 'N';

        end
        else if x = 14 then
        begin

          result := result + 'O';

        end
        else if x = 15 then
        begin

          result := result + 'P';

        end
        else if x = 16 then
        begin

          result := result + 'Q';

        end
        else if x = 17 then
        begin

          result := result + 'R';

        end
        else if x = 18 then
        begin

          result := result + 'S';

        end
        else if x = 19 then
        begin

          result := result + 'T';

        end
        else if x = 20 then
        begin

          result := result + 'U';

        end
        else if x = 21 then
        begin

          result := result + 'V';

        end
        else if x = 22 then
        begin

          result := result + 'W';

        end
        else if x = 23 then
        begin

          result := result + 'X';

        end
        else if x = 24 then
        begin

          result := result + 'Y';

        end
        else if x = 25 then
        begin

          result := result + 'Z';

        end
        else if x = 26 then
        begin

          result := result + '.';

        end
        else if x = 27 then
        begin

          result := result + ',';

        end
        else if x = 28 then
        begin

          result := result + ';';

        end
        else if x = 29 then
        begin

          result := result + '!';

        end
        else if x = 30 then
        begin

          result := result + '?';

        end;

        x := -1;

      end;

      charLength := length(result);

      for z := 1 to charLength do
      begin

        if keyFound = true then
          break;

        charR := result[z];


        nova := nova + charR;
        charR2 := result[z + 1];
        nova := nova + charR2;                // Verifica a frase dpulando uma letra mas de 3 em 3
        charR3 := result[z + 2];              // Exemplo: ABCDEF -> ABC -> BCD -> CDE -> DEF....
        nova := nova + charR3;


        if length(nova) > 2 then
        begin
          if nova = 'THE' then
          begin

            keyFoundI := keyFoundI + 1;

          end
          else if nova = 'AND' then
          begin

            keyFoundI := keyFoundI + 1;

          end
          else if nova = 'YOU' then
          begin

            keyFoundI := keyFoundI + 1;

          end
          else if nova = 'WAS' then
          begin

            keyFoundI := keyFoundI + 1;

          end
          else if nova = 'FOR' then
          begin

            keyFoundI := keyFoundI + 1;

          end
          else if nova = 'ARE' then
          begin

            keyFoundI := keyFoundI + 1;

          end
          else if nova = 'ONE' then
          begin

            keyFoundI := keyFoundI + 1;

          end;

          nova := '';

          if keyFoundI = 2 then
          begin

            keyFound := true;            // Necessário encontrar 2 dessas palavras para ter certeza da decriptação

          end;

          if keyFound = true then
            break;

        end;

      end;

    end;

    keyFound := true;

  end;

  Memo1.Lines.Add(result);

 // ShowMessage(IntToStr(key));     mostra o número da key descoberta

end;

procedure TlisMain.FormCreate(Sender: TObject);
begin

  LinkLabelGithub.Caption :=
    '<a href="https://github.com/LucasSusin">github.com/LucasSusin</a>';

  sndPlaySound('Open Program.wav', SND_NODEFAULT Or SND_ASYNC);           // Sons do programa

end;

procedure TlisMain.FormShow(Sender: TObject);
begin

  // variável para aparecer splash screen

  if sp = 0 then
    begin

      sp := 1;
      splashScreen.ShowModal;

    end;

end;

procedure TlisMain.LinkLabelGithubLinkClick(Sender: TObject; const Link: string;
  LinkType: TSysLinkType);
begin

  ShellExecute(0, nil, PChar(Link), nil, nil, 1);    // Link clicável do github

end;

procedure TlisMain.Timer1Timer(Sender: TObject);
begin

  ProgressBar1.Visible := true;                                // Barra de progressão
  ProgressBar1.Position := ProgressBar1.Position + 10;

end;

Initialization

sp := 0;      // Variável splash screen off

end.
