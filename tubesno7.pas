//NAMA : VICTOR CHASTE NABABAN
//KOM  : B
//NIM  : 261401064
//LAB  : 3

program TUBESNO7;
uses crt;

var
  kode  : char;
  jam   : integer;
  tarif : longint;
  jenis : string;

begin
  clrscr;
  textcolor(green);
  writeln('============================================');
  writeln('=               TARIF PARKIR               =');
  writeln('============================================');
  writeln('= * Kode M = Mobil                         =');
  writeln('= * Kode K = Motor                         =');
  writeln('= * Kode B = Bus                           =');
  writeln('============================================');
  writeln;

  
    repeat
      textcolor(blue);
      write('Masukkan kode kendaraan (M/K/B) : ');
      readln(kode);
      kode := upcase(kode);   

      if (kode <> 'M') and (kode <> 'K') and (kode <> 'B') then
      begin
        textcolor(red);
        writeln('KODE KENDARAAN TIDAK VALID, SILAHKAN MASUKKAN M, K, ATAU B !!!');
      end;
    until (kode = 'M') or (kode = 'K') or (kode = 'B');

  
      repeat
        textcolor(yellow);
        write('Masukkan lama parkir (jam)      : ');
        readln(jam);

        if (jam <= 0) then
        begin
          textcolor(red);
          writeln('LAMA PARKIR TIDAK VALID, SILAHKAN MASUKKAN LAGI !!!');
        end;
      until (jam > 0);

  
        case kode of
          'M': begin
                jenis := 'Mobil';
                if (jam > 10) then
                  tarif := 30000                    
                else
                  tarif := 5000 + (jam - 1) * 3000; 
              end;
          'K': begin
                jenis := 'Motor';
                if (jam > 10) then
                  tarif := 10000
                else
                  tarif := 2000 + (jam - 1) * 1000;
              end;
          'B': begin
                jenis := 'Bus';
                if (jam > 10) then
                  tarif := 50000
                else
                  tarif := 10000 + (jam - 1) * 5000;
              end;
        end;

  
            textcolor(lightcyan);
            writeln;
            writeln('============================================');
            writeln('=               RINCIAN PARKIR             =');
            writeln('============================================');
            writeln(' * Jenis kendaraan : ', jenis);
            writeln(' * Lama parkir     : ', jam, ' jam');
            if (jam > 10) then
              writeln(' * Keterangan      : Berlaku tarif maksimal flat');
            writeln(' * Total tarif     : Rp ', tarif);
            writeln('============================================');

            textcolor(lightgray);
            readln;
          end.