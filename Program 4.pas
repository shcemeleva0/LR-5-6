const n=30;
var A,B:array[1..n] of integer;
    k:integer;
  begin
    write('Массив A ');
    randomize;
    for var i:=1 to n do
    begin
      A[i]:=random(67-(-99)+1)+(-99);
      write(a[i]:4);
    end;
    writeln();
    k:=0;
    for var i:=1 to n do
      if A[i] mod 2 = 0 then
      begin
        k:=k+1;
        B[k]:=A[i];
      end;
    write('Массив B ');
    for var i:=1 to k do
      write(B[i]:4);
  end.