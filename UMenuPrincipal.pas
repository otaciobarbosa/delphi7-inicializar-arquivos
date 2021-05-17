unit UMenuPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan,ShellAPI,IniFiles,StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    XPManifest1: TXPManifest;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  ArquivoINI: TIniFile;
  Arquivo : string;
begin
  ArquivoINI := TIniFile.Create('config.ini');
  Arquivo := ArquivoINI.ReadString('Config', 'arquivo', 'Erro ao ler o valor');
  ArquivoINI.Free;
  ShellExecute(Handle, 'open', PChar('notepad'), PChar(Arquivo), nil, SW_SHOW);
end;

end.
