program TebakAngka;
uses crt; // Untuk menggunakan fungsi clear screen

var
  angkaAcak, tebakan, kesempatan: integer;

begin
clrscr;
  randomize; // Inisialisasi generator angka acak
  angkaAcak := random(10) + 1; // Angka acak antara 1 dan 10
  kesempatan := 3;

  writeln('Selamat datang di permainan tebak angka!');
  writeln('Tebak angka antara 1 sampai 10. Anda punya 3 kesempatan.');

  while kesempatan > 0 do
  begin
    write('Tebakan Anda: ');
    readln(tebakan);

    if tebakan = angkaAcak then
    begin
      writeln('Selamat! Tebakan Anda benar.');
      break; // Akhiri permainan jika tebakan benar
    end else
    begin
      writeln('Salah. Coba lagi.');
      kesempatan := kesempatan - 1;
      writeln('Sisa kesempatan: ', kesempatan);
    end;
  end;

  if kesempatan = 0 then
    writeln('Kesempatan habis. Angka yang benar adalah: ', angkaAcak);

  writeln('Terima kasih telah bermain!');
  readln;
end.