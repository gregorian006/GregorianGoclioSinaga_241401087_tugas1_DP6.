program faktorial;
uses crt;                
var
  angka, i: integer;
  hasil: double;
begin
  clrscr;

  write('masukkan bilangan positif: ');
  readln(angka);
 
  hasil := 1;
  for i := 1 to angka do
    begin
         hasil := hasil * i;
         
    end;
 
  writeln('hasil penjumlahan bilangan faktorial ' , angka,' = ', hasil:2:3);
   
  readln;
end.