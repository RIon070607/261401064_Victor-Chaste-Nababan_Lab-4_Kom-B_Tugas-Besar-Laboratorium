//NAMA : VICTOR CHASTE NABABAN
//KOM  : B
//NIM  : 261401064
//LAB  : 3

program TUBESNO4;
uses crt;

var
  pilihan      : integer;
  x, y, hasil  : real;
  a, b         : longint;
  ulang        : char;

begin
  
  repeat
    clrscr;
    textcolor(green);
    writeln('============================================');
    writeln('=            KALKULATOR SEDERHANA          =');
    writeln('============================================');
    writeln('= 1. Penjumlahan                           =');
    writeln('= 2. Pengurangan                           =');
    writeln('= 3. Perkalian                             =');
    writeln('= 4. Pembagian Real                        =');
    writeln('= 5. DIV & MOD                             =');
    writeln('============================================');
    writeln;

    
    repeat
      textcolor(yellow);
      write('Masukkan pilihan operasi (1-5) : ');
      readln(pilihan);
      if (pilihan < 1) or (pilihan > 5) then
      begin
        textcolor(red);
        writeln('PILIHAN TIDAK VALID, SILAHKAN MASUKKAN ANGKA 1-5 !!!');
      end;
    until (pilihan >= 1) and (pilihan <= 5);

    writeln;
    textcolor(lightcyan);

   
    case pilihan of
      1: begin
           write('Masukkan angka pertama : ');
           readln(x);
           write('Masukkan angka kedua   : ');
           readln(y);
           hasil := x + y;
           writeln;
           writeln(x:0:2, ' + ', y:0:2, ' = ', hasil:0:2);
         end;
      2: begin
           write('Masukkan angka pertama : ');
           readln(x);
           write('Masukkan angka kedua   : ');
           readln(y);
           hasil := x - y;
           writeln;
           writeln(x:0:2, ' - ', y:0:2, ' = ', hasil:0:2);
         end;
      3: begin
           write('Masukkan angka pertama : ');
           readln(x);
           write('Masukkan angka kedua   : ');
           readln(y);
           hasil := x * y;
           writeln;
           writeln(x:0:2, ' x ', y:0:2, ' = ', hasil:0:2);
         end;
      4: begin
           write('Masukkan angka pertama : ');
           readln(x);
           write('Masukkan angka kedua   : ');
           readln(y);
           writeln;
           if (y = 0) then
           begin
             textcolor(red);
             writeln('TIDAK BISA DIBAGI DENGAN 0 !!!');
           end
           else
           begin
             hasil := x / y;
             writeln(x:0:2, ' / ', y:0:2, ' = ', hasil:0:2);
           end;
         end;
      5: begin
           write('Masukkan angka pertama (bulat) : ');
           readln(a);
           write('Masukkan angka kedua (bulat)   : ');
           readln(b);
           writeln;
           if (b = 0) then
           begin
             textcolor(red);
             writeln('TIDAK BISA DIBAGI DENGAN 0 !!!');
           end
           else
           begin
             writeln(a, ' DIV ', b, ' = ', a div b);
             writeln(a, ' MOD ', b, ' = ', a mod b);
           end;
         end;
    end;

   
    repeat
      textcolor(yellow);
      write('Apakah ingin melakukan perhitungan lagi? (Y/T) : ');
      readln(ulang);
      if (ulang <> 'Y') and (ulang <> 'y') and (ulang <> 'T') and (ulang <> 't') then
      begin
        textcolor(red);
        writeln('JAWAB DENGAN Y ATAU T !!!');
      end;
    until (ulang = 'Y') or (ulang = 'y') or (ulang = 'T') or (ulang = 't');

  until (ulang = 'T') or (ulang = 't');

  textcolor(lightgray);
  writeln;
  writeln('Terima kasih sudah memakai kalkulator ini.');
  readln;
end.