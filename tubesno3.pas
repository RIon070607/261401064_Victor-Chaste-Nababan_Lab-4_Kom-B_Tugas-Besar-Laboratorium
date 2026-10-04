//NAMA : VICTOR CHASTE NABABAN
//KOM  : B
//NIM  : 261401064
//LAB  : 3

program TUBESNO3;
uses crt;

var
  n, kategori, i, jumlah : integer;
  ulang                  : char;

begin
  repeat
    clrscr;
    textcolor(green);
    writeln('============================================');
    writeln('=               DERET ANGKA                =');
    writeln('============================================');
    writeln('= Kategori : 1 = Ganjil, 2 = Genap         =');
    writeln('= Angka kelipatan 5 akan dilewati          =');
    writeln('============================================');
    writeln;

    repeat
      textcolor(yellow);
      write('Masukkan nilai N : ');
      readln(n);
      if (n < 1) then
      begin
        textcolor(red);
        writeln('NILAI N TIDAK VALID, MINIMAL 1 !!!');
      end;
    until (n >= 1);

    repeat
      textcolor(yellow);
      write('Pilih kategori deret (1: Ganjil, 2: Genap) : ');
      readln(kategori);
      if (kategori <> 1) and (kategori <> 2) then
      begin
        textcolor(red);
        writeln('KATEGORI TIDAK VALID, SILAHKAN MASUKKAN 1 ATAU 2 !!!');
      end;
    until (kategori = 1) or (kategori = 2);

    writeln;
    textcolor(lightcyan);
    write('Hasil deret : ');

    i := 0;
    jumlah := 0;
    while (i < n) do
    begin
      i := i + 1;

      if (kategori = 1) and (i mod 2 = 0) then
        continue;
      if (kategori = 2) and (i mod 2 <> 0) then
        continue;

      if (i mod 5 = 0) then
        continue;

      write(i, ' ');
      jumlah := jumlah + 1;
    end;

    if (jumlah = 0) then
      write('(tidak ada angka yang memenuhi)');

    writeln;
    writeln;

    repeat
      textcolor(yellow);
      write('Apakah ingin mengulang lagi? (Y/T) : ');
      readln(ulang);
      if (ulang <> 'Y') and (ulang <> 'y') and (ulang <> 'T') and (ulang <> 't') then
      begin
        textcolor(red);
        writeln('JAWAB DENGAN Y ATAU T !!!');
      end;
    until (ulang = 'Y') or (ulang = 'y') or (ulang = 'T') or (ulang = 't');

  until (ulang = 'T') or (ulang = 't');

  textcolor(lightgray);
end.