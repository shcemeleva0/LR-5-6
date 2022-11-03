const n=20;
var i:integer;
    A:array[1..N] of integer;
begin
  writeln('Введите элементы массива');
  for i:=1 to N do
  read(A[i]);
    for i:=1 to n do
      begin
        if A[i]>0 then
          begin
            A[i]:=0;
            write(A[i]:5);
          end;
        if A[i]<0 then
          begin
            A[i]:=sqr(A[i]);
            write(A[i]:5);
          end;
      end;
end.