const n=20;
var i,max,min:integer;
    A:array[1..n] of integer;
begin
  randomize;
  max:=1;
  for i:= 1 to n do
  begin
    A[i]:= random(65-(-52)+1)+(-52);
    write(A[i], ' ');
    if A[max] < A[i] then max:=i;
  end;
  writeln;
  writeln('Наибольший элемент массива:', A[max]);
  i:=1;
  while (A[i] <= 0) and (i<=n) do
    i:=i+1;
  if 1>n then
    writeln('Положительных элементов нет')
  else
  begin
    min:=i;
    for i:= min+1 to n do
      if (A[i] > 0) and (A[i] < A[min]) then
        min:=i;
      writeln('Минимальный положительный элемент - ', A[min], ', его индекс - ', min);
  end;
  i:=1;
  while ((A[i] mod 5 <> 0) and (i<=n)) do
    inc(i);
  if i>n then
    writeln('Нет элементов, кратных 5')
  else
     writeln('Последний элемент массива, кратный 5 - ', A[i], ', его индекс - ', i);
end.
   