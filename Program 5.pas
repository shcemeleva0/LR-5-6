const n=10;
var m1,m2: array[1..N] of integer;
  i,sum1,sum2,p:integer;
begin
  writeln('Введите элементы первого массива');
  for i:=1 to n do
  read(m1[i]);
  writeln;
  writeln('Введите элементы второго массива');
  for i:=1 to n do
  read(m2[i]);
  writeln;
  sum1:=0;
  for i:=1 to n do
    if m1[i] > 0 then
      sum1:= sum1 + m1[i];
  writeln('Сумма положительных чисел первого массива - ', sum1:5);
  sum2:=0;
  for i:= 1 to N do
    if m2[i] > 0 then
      sum2:= sum2 + m2[i];
  writeln('Сумма положительных чисел второго массива - ', sum2:5); 
  writeln('Ответ:');
  for i:=1 to n do
  begin
    if sum1 > sum2 then
    begin
      m2[i]:=m2[i]*10;
      writeln(m2[i]);
    end;
    if sum1 < sum2 then
    begin
      m1[i]:= m1[i]*10;
      writeln(m1[i]);
    end;
  end;
end.
    
    