//NAMA : VICTOR CHASTE NABABAN
//KOM  : B
//NIM  : 261401064
//LAB  : 3

program TUBESNO1;
uses crt;

var
  n, i, persen          : integer;
  total, diskon, bayar  : longint;
  harga                 : array[1..100] of longint;

begin
  clrscr;
  textcolor(green);
  writeln('============================================');
  writeln('=            TOKO BUKU - BELANJA           =');
  writeln('============================================');
  writeln('= Total < 100.000        : Diskon 0%       =');
  writeln('= 100.000 <= Total < 500.000 : Diskon 10%  =');
  writeln('= Total >= 500.000       : Diskon 20%      =');
  writeln('============================================');
  writeln;

  repeat
    textcolor(yellow);
    write('Masukkan jumlah barang yang dibeli (N, maks 100) : ');
    readln(n);
    if (n < 1) or (n > 100) then
    begin
      textcolor(red);
      writeln('JUMLAH BARANG TIDAK VALID, MASUKKAN ANGKA 1-100 !!!');
    end;
  until (n >= 1) and (n <= 100);

  writeln;

  
  total := 0;
  for i := 1 to n do
  begin
    repeat
      textcolor(yellow);
      write('Masukkan harga barang ke-', i, ' : Rp ');
      readln(harga[i]);
      if (harga[i] <= 0) then
      begin
        textcolor(red);
        writeln('HARGA TIDAK VALID, HARUS LEBIH DARI 0 !!!');
      end;
    until (harga[i] > 0);

    total := total + harga[i];
  end;

    if (total < 100000) then
    persen := 0
  else if (total < 500000) then
    persen := 10
  else
    persen := 20;

  diskon := total * persen div 100;
  bayar  := total - diskon;

    textcolor(lightcyan);
  writeln;
  writeln('============================================');
  writeln('=              RINCIAN BELANJA             =');
  writeln('============================================');
  for i := 1 to n do
    writeln(' Barang ke-', i, ' : Rp ', harga[i]);
  writeln('--------------------------------------------');
  writeln(' Total sebelum diskon : Rp ', total);
  writeln(' Besar diskon (', persen, '%)   : Rp ', diskon);
  writeln('--------------------------------------------');
  writeln(' TOTAL BAYAR AKHIR    : Rp ', bayar);
  writeln('============================================');

  textcolor(lightgray);
  readln;
end.