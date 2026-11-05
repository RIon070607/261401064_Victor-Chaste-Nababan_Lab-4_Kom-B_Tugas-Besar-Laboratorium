program matriks;
uses crt;

var
matrix : array [1..3, 1..3] of integer;
i, j : integer;

begin
clrscr;

// input nilai
for i := 1 to 3 do
begin
    for j := 1 to 3 do
    begin
        write('matrix[', i, ',', j, '] : ');
        readln(matrix[i,j]);
    end;
end;
writeln;

//akses nilai
for i := 1 to 3 do
begin
    for j := 1 to 3 do
    begin
        write(matrix[i,j], ' ');
    end;
    writeln;
end;

end.
