//NAMA : VICTOR CHASTE NABABAN
//KOM  : B
//NIM  : 261401064
//LAB  : 3

program TUBESNO8;
uses crt;

    var
    angka,jam,jam_lembur:integer;
    gaji,lembur,total,lembur_bonus,bonus:longint;
    golongan:char;



        begin
        clrscr;
            TEXTCOLOR(GREEN);
            writeln('============================================');
            writeln('=               GOLONGAN GAJI              =');
            WRITELN('============================================');
            WRITELN('= * GOLONGAN A = Rp 1.500.000         (1)  =');
            writeln('= * GOLONGAN B = Rp 2.000.000         (2)  =');
            writeln('= * Golongan C = Rp 2.500.000         (3)  =');
            writeln('============================================');

                WRITELN;
                
                repeat
                TEXTCOLOR(BLUE);
                WRITE('MASUKKAN KODE GOLONGAN GAJI: ');
                READLN(ANGKA);
                if (angka <=0) or (angka >3) then
                    begin
                    textcolor(red);
                    writeln('======================================================================');
                    writeln('=  KODE GAJI TIDAK VALID, SILAHKAN MASUKKAN KODE YANG TERSEDIA !!!   =');
                    writeln('======================================================================');
                    end;
                until (angka = 1) or (angka = 2) or (angka = 3);

                WRITELN;
                TEXTCOLOR(YELLOW);
                case angka OF
                1: begin
                    gaji := 1500000;
                    golongan := 'A';
                    total := gaji;
                    lembur := 0;
                    bonus := 0;
                    lembur_bonus := 0;
                    writeln('====================================');
                    writeln('=      GOLONGAN GAJI = 1.500.000    ');
                    WRITELN('====================================');

                        WRITELN;
                        repeat
                        write('masukkan jam kerja per minggu: ');
                        readln(jam);
                        IF (jam < 0) THEN
                            begin
                            textcolor(red);
                            writeln('=========================================================================');
                            writeln('=  JAM KERJA TIDAK VALID, SILAHKAN MASUKKAN JAM KERJA YANG TERSEDIA !!! =');
                            writeln('=========================================================================');
                            textcolor(yellow);
                            end;  
                        until (jam >= 0);

                            WRITELN;
                            if (jam > 40) then
                                begin
                               jam_lembur := jam - 40; 
                                lembur := jam_lembur * 20000;
                                writeln('===================================');
                                writeln('   * total upah lembur: ',lembur);
                                writeln('===================================');
                                total := gaji + lembur;

                                WRITELN;
                                writeln('====================================');
                                writeln('=        jadi gaji total : ', total  );
                                WRITELN('====================================');
                                end;



                    END;
                2: begin
                    gaji := 2000000;
                    golongan := 'B';
                    total := gaji;
                    lembur := 0;
                    bonus := 0;
                    lembur_bonus := 0;
                    writeln('====================================');
                    writeln('=      GOLONGAN GAJI = 2.000.000    ');
                    WRITELN('====================================');

                        WRITELN;  
                        repeat
                        write('masukkan jam kerja per minggu: ');
                        readln(jam);
                        IF (jam < 0) THEN
                            begin
                            textcolor(red);
                            writeln('=========================================================================');
                            writeln('=  JAM KERJA TIDAK VALID, SILAHKAN MASUKKAN JAM KERJA YANG TERSEDIA !!! =');
                            writeln('=========================================================================');
                            textcolor(yellow);
                            end;  
                        until (jam >= 0);

                            WRITELN;
                            if (jam > 40) then
                                begin
                               jam_lembur := jam - 40;
                                lembur := jam_lembur * 20000;
                                writeln('===================================');
                                writeln('   * total upah lembur: ',lembur);
                                writeln('===================================');

                                WRITELN;
                                total := gaji + lembur;
                                writeln('====================================');
                                writeln('=        jadi gaji total : ', total  );
                                WRITELN('====================================');
                                end;

                    END;
                3: begin
                    gaji := 2500000;
                    golongan := 'C';
                    total := gaji;
                    lembur := 0;
                    bonus := 0;
                    lembur_bonus := 0;
                    writeln('====================================');
                    writeln('=      GOLONGAN GAJI = 2.500.000    ');
                    WRITELN('====================================');

                        WRITELN; 
                            repeat
                            write('masukkan jam kerja per minggu: ');
                            readln(jam);
                             
                            IF (jam < 0) THEN
                            begin
                            textcolor(red);
                            writeln('=========================================================================');
                            writeln('=  JAM KERJA TIDAK VALID, SILAHKAN MASUKKAN JAM KERJA YANG TERSEDIA !!! =');
                            writeln('=========================================================================');
                            textcolor(yellow);
                            end;  
                        until (jam >= 0);

                            WRITELN;
                            if (jam > 40) then
                                begin
                               jam_lembur := jam - 40;
                                lembur :=jam_lembur * 20000;
                                writeln('===================================');
                                writeln('   * total upah lembur: ',lembur);
                                writeln('===================================');

                            writeln;
                            lembur_bonus := lembur;
                            if (jam > 50) then
                                begin
                                    bonus := 100000;
                                    lembur_bonus := lembur + bonus;
                                    writeln('================================================================');
                                    writeln('   * total upah lembur + bonus khusus Rp (100000): ',lembur_bonus);
                                    writeln('================================================================');
                                end;

                                WRITELN;
                                total := gaji + lembur_bonus;
                                writeln('====================================');
                                writeln('=        jadi gaji total : ', total  );
                                WRITELN('====================================');
                                end;


                    END;
                end;

                 TEXTCOLOR(BLUE);
                 WRITELN;
                 writeln('=====================================================');
                 writeln('=                RINCIAN TOTAL GAJI                 =');
                 WRITELN('=====================================================');
                 WRITELN(' * GOLONGAN             : ', GOLONGAN);
                 WRITELN(' * GAJI POKOK           : ', GAJI);
                 WRITELN(' * JAM KERJA            : ', JAM, ' jam');
                 WRITELN(' * LEMBUR               : ', LEMBUR);
                 WRITELN(' * BONUS KHUSUS         : ', BONUS);
                 WRITELN('-----------------------------------------------------');
                 WRITELN(' * TOTAL GAJI AKHIR     : ', TOTAL);
                 WRITELN('=====================================================');


        end.