program PenjumlahanMatriks;
uses crt;

var
  a, b, c : array[1..5, 1..5] of integer;
  barA, kolA, barB, kolB : integer;
  i, j : integer;

begin
  clrscr;
  writeln('=== Program Penjumlahan Matriks ===');
  writeln('(baris dan kolom maksimal 5)');
  writeln;

 
  writeln('Matriks ke-1');
  repeat
    write('  Jumlah baris : ');
    readln(barA);
  until (barA >= 1) and (barA <= 5);
  repeat
    write('  Jumlah kolom : ');
    readln(kolA);
  until (kolA >= 1) and (kolA <= 5);

  
  writeln;
  writeln('Matriks ke-2');
  repeat
    write('  Jumlah baris : ');
    readln(barB);
  until (barB >= 1) and (barB <= 5);
  repeat
    write('  Jumlah kolom : ');
    readln(kolB);
  until (kolB >= 1) and (kolB <= 5);

  writeln;

  { cek apakah bisa dijumlahkan }
  if (barA <> barB) or (kolA <> kolB) then
  begin
    writeln('Kedua matriks TIDAK DAPAT dijumlahkan.');
    writeln('Ukuran matriks ke-1 = ', barA, 'x', kolA);
    writeln('Ukuran matriks ke-2 = ', barB, 'x', kolB);
    writeln('Penjumlahan hanya bisa jika jumlah baris dan kolomnya sama.');
  end
  else
  begin
    writeln('Kedua matriks DAPAT dijumlahkan.');
    writeln;

  
    writeln('=== Isi Matriks A ===');
    for i := 1 to barA do
      for j := 1 to kolA do
      begin
        write('A[', i, ',', j, '] : ');
        readln(a[i, j]);
      end;

 
    writeln;
    writeln('=== Isi Matriks B ===');
    for i := 1 to barB do
      for j := 1 to kolB do
      begin
        write('B[', i, ',', j, '] : ');
        readln(b[i, j]);
      end;

    { proses penjumlahan }
    for i := 1 to barA do
      for j := 1 to kolA do
        c[i, j] := a[i, j] + b[i, j];

    { tampilkan matriks A }
    writeln;
    writeln('Matriks A :');
    for i := 1 to barA do
    begin
      for j := 1 to kolA do
        write(a[i, j]:6);
      writeln;
    end;

    { tampilkan matriks B }
    writeln;
    writeln('Matriks B :');
    for i := 1 to barB do
    begin
      for j := 1 to kolB do
        write(b[i, j]:6);
      writeln;
    end;

    { tampilkan hasil }
    writeln;
    writeln('Hasil A + B :');
    for i := 1 to barA do
    begin
      for j := 1 to kolA do
        write(c[i, j]:6);
      writeln;
    end;
  end;

  writeln;
  readln;
end.
