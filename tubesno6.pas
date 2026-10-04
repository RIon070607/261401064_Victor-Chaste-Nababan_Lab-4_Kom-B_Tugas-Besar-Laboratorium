//NAMA : VICTOR CHASTE NABABAN
//KOM  : B
//NIM  : 261401064
//LAB  : 3

program TUBESNO6;
uses crt;

var
  tugas, uts, uas  : real;
  kehadiran        : real;
  nilaiAkhir       : real;
  indeks           : char;
  status           : string;

begin
  clrscr;
  textcolor(green);
  writeln('============================================');
  writeln('=            PENENTUAN NILAI AKHIR         =');
  writeln('============================================');
  writeln('= Bobot : Tugas 30%, UTS 30%, UAS 40%      =');
  writeln('============================================');
  writeln;

  
    repeat
      textcolor(yellow);
      write('Masukkan nilai Tugas (0-100) : ');
      readln(tugas);
      if (tugas < 0) or (tugas > 100) then
      begin
        textcolor(red);
        writeln('NILAI TIDAK VALID, SILAHKAN MASUKKAN ANGKA 0-100 !!!');
      end;
    until (tugas >= 0) and (tugas <= 100);

  
      repeat
        textcolor(yellow);
        write('Masukkan nilai UTS   (0-100) : ');
        readln(uts);
        if (uts < 0) or (uts > 100) then
        begin
          textcolor(red);
          writeln('NILAI TIDAK VALID, SILAHKAN MASUKKAN ANGKA 0-100 !!!');
        end;
      until (uts >= 0) and (uts <= 100);

  
        repeat
          textcolor(yellow);
          write('Masukkan nilai UAS   (0-100) : ');
          readln(uas);
          if (uas < 0) or (uas > 100) then
          begin
            textcolor(red);
            writeln('NILAI TIDAK VALID, SILAHKAN MASUKKAN ANGKA 0-100 !!!');
          end;
        until (uas >= 0) and (uas <= 100);

  
          repeat
            textcolor(yellow);
            write('Masukkan kehadiran (0-100 %) : ');
            readln(kehadiran);
            if (kehadiran < 0) or (kehadiran > 100) then
            begin
              textcolor(red);
              writeln('KEHADIRAN TIDAK VALID, SILAHKAN MASUKKAN ANGKA 0-100 !!!');
            end;
          until (kehadiran >= 0) and (kehadiran <= 100);

  
            nilaiAkhir := (tugas * 0.3) + (uts * 0.3) + (uas * 0.4);

  
            if (nilaiAkhir >= 60) and (kehadiran >= 80) then
              status := 'LULOS'
            else
              status := 'TIDAK LULOS';

  
              if (nilaiAkhir >= 85) then
                indeks := 'A'
              else if (nilaiAkhir >= 75) then
                indeks := 'B'
              else if (nilaiAkhir >= 60) then
                indeks := 'C'
              else if (nilaiAkhir >= 50) then
                indeks := 'D'
              else
                indeks := 'E';

  
                  textcolor(lightcyan);
                  writeln;
                  writeln('============================================');
                  writeln('=                  HASIL                   =');
                  writeln('============================================');
                  writeln(' * Nilai Tugas   : ', tugas:0:2);
                  writeln(' * Nilai UTS     : ', uts:0:2);
                  writeln(' * Nilai UAS     : ', uas:0:2);
                  writeln(' * Kehadiran     : ', kehadiran:0:2, ' %');
                  writeln('--------------------------------------------');
                  writeln(' * NILAI AKHIR   : ', nilaiAkhir:0:2);
                  writeln(' * INDEKS HURUF  : ', indeks);
                  writeln(' * STATUS        : ', status);
                  writeln('============================================');

                  textcolor(lightgray);
                  readln;
                end.