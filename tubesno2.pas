//NAMA : VICTOR CHASTE NABABAN
//KOM  : B
//NIM  : 261401064
//LAB  : 3

program TUBESNO2;
uses crt;

const
  sandiRahasia = 'admin#1234';   
  maxCoba      = 3;             

var
  masukan    : string;
  percobaan  : integer;
  berhasil   : boolean;

begin
  clrscr;
  textcolor(green);
  writeln('=============================================');
  writeln('=              SISTEM LOGIN                 =');
  writeln('=============================================');
  writeln('= Kesempatan memasukkan kata sandi : 3 kali =');
  writeln('=============================================');
  writeln;

  percobaan := 0;
  berhasil  := false;

  repeat
    percobaan := percobaan + 1;

    textcolor(yellow);
    write('Masukkan kata sandi (percobaan ke-', percobaan, ') : ');
    readln(masukan);

    if (masukan = sandiRahasia) then
    begin
     
      berhasil := true;
      textcolor(lightgreen);
      writeln;
      writeln('Login Berhasil! Selamat Datang');
      break;
    end
    else
    begin
      textcolor(red);
      writeln('Kata sandi salah!');
      if (percobaan < maxCoba) then
        writeln('Sisa kesempatan : ', maxCoba - percobaan, ' kali');
      writeln;
    end;
  until (percobaan >= maxCoba);

  
  if (berhasil = false) then
  begin
    textcolor(red);
    writeln('Akses Ditolak! Akun Terkunci.');
  end;

  textcolor(lightgray);
  writeln;
  readln;
end.