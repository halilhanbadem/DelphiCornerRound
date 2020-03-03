library CornerRound;

{Author: Halil Han Badem}

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, psAPI;

{$R *.res}

Procedure KoseKivirma(Control: TWinControl);
var
 R: TRect;
 Rgn: HRGN;
begin
  with control do
  begin
    R := ClientRect;  /// R değişkenini ClientRect olarak tanmılıyoruz.
    Rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20); //20 değerliği kıvırma derecesini ayalar.
    Perform(EM_GETRECT, 0, lParam(@r)); ///Taşınabilirlik ayarlanıyor.
    InflateRect(r, -4, -4);   /// kesilecek alanlar belirleniyor
    SetWindowRgn(Handle, RGN, True);  ///Windows penceresine gerekli komutları RGN değişkeni ile gönderiyoruz.
    Invalidate;
  end;
end;


Exports KoseKivirma;


begin
end.
