//NAMA : VICTOR CHASTE NABABAN
//KOM  : B
//NIM  : 261401064
//LAB  : 3

program TubesNo10;
uses crt;
    var
        kode: integer;
        begin
            clrscr;
            textcolor(yellow);
            WRITELN('================================');
            WRITELN('=           KODE HARI           ');
            WRITELN('================================');
            WRITELN('=   Senin                (1)   =');
            WRITELN('=   Selasa               (2)   =');
            WRITELN('=   Rabu                 (3)   =');
            WRITELN('=   Kamis                (4)   =');
            WRITELN('=   Jumat                (5)   =');
            WRITELN('=   Sabtu                (6)   =');
            WRITELN('=   Minggu               (7)   =');
            WRITELN('================================');


                    repeat
                        writeln;
                        WRITE('Masukkan Kode Hari (1-7) : ');
                        readln(kode);
                        IF (KODE <= 0) OR (KODE > 7) THEN
                        begin
                            writeln;
                            WRITELN('===========================================');
                            WRITELN('=        KODE HARI TIDAK VALID !!!!!      =');
                            WRITELN('=      SILAHKAN MASUKKAN KODE KEMBALI     =');
                            WRITELN('===========================================');
                        end;
                        until (KODE >= 1) AND (KODE < 8);

                writeln;
                textcolor(blue);
                CASE KODE OF
                1: WRITELN('Hari Senin');
                2: WRITELN('Hari Selasa');
                3: WRITELN('Hari Rabu');
                4: WRITELN('Hari Kamis');
                5: WRITELN('Hari Jumat');
                6: WRITELN('Hari Sabtu');
                7: WRITELN('Hari Minggu');
                end;
                
            END.