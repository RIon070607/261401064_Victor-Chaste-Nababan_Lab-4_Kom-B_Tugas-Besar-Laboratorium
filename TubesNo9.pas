//NAMA : VICTOR CHASTE NABABAN
//KOM  : B
//NIM  : 261401064
//LAB  : 3

program TUBESNO9;
uses crt;

var
  tahun, bulan, hari : integer;
  kabisat            : boolean;

begin
  clrscr;
      textcolor(yellow);
      writeln('============================================');
      writeln('=        JUMLAH HARI DALAM SATU BULAN      =');
      writeln('============================================');
      writeln;

 
        repeat
          textcolor(yellow);
          write('Masukkan tahun            : ');
          readln(tahun);

          if (tahun <= 0) then
          begin
            textcolor(red);
            writeln('TAHUN TIDAK VALID, SILAHKAN MASUKKAN TAHUN YANG BENAR !!!');
          end;
        until (tahun > 0);

  
            repeat
              textcolor(yellow);
              write('Masukkan nomor bulan (1-12) : ');
              readln(bulan);

              if (bulan < 1) or (bulan > 12) then
              begin
                textcolor(red);
                writeln('NOMOR BULAN TIDAK VALID, SILAHKAN MASUKKAN ANGKA 1-12 !!!');
              end;
            until (bulan >= 1) and (bulan <= 12);

  
                if (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then
                  kabisat := true
                else
                  kabisat := false;

  
                    case bulan of
                      1, 3, 5, 7, 8, 10, 12 : hari := 31;
                      4, 6, 9, 11            : hari := 30;
                      2: if kabisat then
                          hari := 29
                        else
                          hari := 28;
                    end;

  
                        textcolor(lightcyan);
                        writeln;
                        writeln('============================================');
                        writeln('=                  HASIL                   =');
                        writeln('============================================');
                        writeln(' * Tahun         : ', tahun);
                        if kabisat then
                          writeln(' * Status tahun  : Kabisat')
                        else
                          writeln(' * Status tahun  : Bukan Kabisat');
                        writeln(' * Bulan ke-     : ', bulan);
                        writeln(' * Jumlah hari   : ', hari, ' hari');
                        writeln('============================================');

                        textcolor(lightgray);
                        readln;
end.