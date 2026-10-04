//NAMA : VICTOR CHASTE NABABAN
//KOM  : B
//NIM  : 261401064
//LAB  : 3

program TUBESNO5;
uses crt;

var
  m, n, i, j            : integer;
  jumlahLulus           : integer;
  jumlahTidakLulus      : integer;
  nilai, total          : real;
  rata                  : array[1..100] of real;

begin
  clrscr;
  textcolor(green);
  writeln('============================================');
  writeln('=         REKAPITULASI NILAI MAHASISWA     =');
  writeln('============================================');
  writeln;

  
  repeat
    textcolor(yellow);
    write('Masukkan jumlah mahasiswa (M, maks 100) : ');
    readln(m);
    if (m < 1) or (m > 100) then
    begin
      textcolor(red);
      writeln('JUMLAH MAHASISWA TIDAK VALID, MASUKKAN ANGKA 1-100 !!!');
    end;
  until (m >= 1) and (m <= 100);

 
    repeat
      textcolor(yellow);
      write('Masukkan jumlah tugas (N)               : ');
      readln(n);
      if (n < 1) then
      begin
        textcolor(red);
        writeln('JUMLAH TUGAS TIDAK VALID, MINIMAL 1 !!!');
      end;
    until (n >= 1);

 
    for i := 1 to m do
    begin
      writeln;
      textcolor(lightcyan);
      writeln('--- Mahasiswa ke-', i, ' ---');
      total := 0;

        for j := 1 to n do
        begin
          repeat
            textcolor(yellow);
            write('Nilai tugas ke-', j, ' (0-100) : ');
            readln(nilai);
            if (nilai < 0) or (nilai > 100) then
            begin
              textcolor(red);
              writeln('NILAI TIDAK VALID, SILAHKAN MASUKKAN ANGKA 0-100 !!!');
            end;
          until (nilai >= 0) and (nilai <= 100);

          total := total + nilai;
        end;

    
            rata[i] := total / n;
          end;

  
              jumlahLulus := 0;
              jumlahTidakLulus := 0;

                textcolor(lightcyan);
                writeln;
                writeln('============================================');
                writeln('=              HASIL REKAPITULASI          =');
                writeln('============================================');

                  for i := 1 to m do
                  begin
                    write(' Mahasiswa ke-', i, ' : rata-rata ', rata[i]:0:2, ' -> ');

                    if (rata[i] >= 65) then
                    begin
                      writeln('LULUS');
                      jumlahLulus := jumlahLulus + 1;
                    end
                    else
                    begin
                      writeln('TIDAK LULUS');
                      jumlahTidakLulus := jumlahTidakLulus + 1;
                    end;
                  end;

  
                          writeln('--------------------------------------------');
                          writeln(' Total mahasiswa LULUS       : ', jumlahLulus);
                          writeln(' Total mahasiswa TIDAK LULUS : ', jumlahTidakLulus);
                          writeln('============================================');

                            textcolor(lightgray);
                            readln;
end.