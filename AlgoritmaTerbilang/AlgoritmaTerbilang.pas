unit AlgoritmaTerbilang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function Terbilang(x:Integer): string;

  function Bilang(x:Integer): string;
  begin
    //
    case x of
      0 : Result := '';
      1 : Result := 'Satu';
      2 : Result := 'Dua';
      3 : Result := 'Tiga';
      4 : Result := 'Empat';
      5 : Result := 'Lima';
      6 : Result := 'Enam';
      7 : Result := 'Tujuh';
      8 : Result := 'Delapan';
      9 : Result := 'Sembilan';
      10 : Result := 'Sepuluh';
      11 : Result := 'Sebelas';
    end;
  end;

begin
  //
  if x < 12 then
    Result := ' ' + Bilang(x)
  else if x < 20 then
    Result := Terbilang(x-10) + ' Belas'
  else if x < 100 then
    Result := Terbilang(x div 10) + ' Puluh' + Terbilang(x mod 10)
  else if x < 200 then
    Result := ' Seratus' + Terbilang(x-100)
  else if x < 1000 then
    Result := Terbilang(x div 100) + ' Ratus' + Terbilang(x mod 100)
  else if x < 2000 then
    Result := ' Seribu' + Terbilang(x - 1000)
  else if x < 1000000 then
    Result := Terbilang(x div 1000) + ' Ribu' + Terbilang(x mod 1000)
  else if x < 1000000000 then
    Result := Terbilang(x div 1000000) + ' Juta' + Terbilang(x mod 1000000)
  else
    Result := Terbilang(x div 1000000000) + ' Milyar' + Terbilang(x mod 1000000000)
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit2.Text := Terbilang(StrToInt(Edit1.Text));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
end;

end.
