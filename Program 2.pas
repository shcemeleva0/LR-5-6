const n=20;
var i,k,p,b,c,sum:integer;
a:array [1..n] of integer;
begin
  randomize;
  k:=0;
  writeln('Введите массив');
  for i:= 1 to n do
  begin
    a[i]:= random(93-(-22)+1)+(-22);
    write(' ', a[i]);
    if ((i mod 2 <> 0) and (a[i] mod 2 = 0)) then
      inc(k);
  end;
  writeln;
  writeln('Количество четных элементов, стоящих на нечетных местах - ', k);
  p:=1;
  for i:= 1 to n do
  begin
    if (i mod 2 <> 0) then
      p:=p*a[i];
  end;
  writeln('Произведение нечетных элементов массива - ', p);
  writeln('Введите промежуток. b = ');
  read(b);
  writeln('c = ');
  read(c);
  sum:=0;
  for i:=1 to n do
  begin
    if (a[i]>=b) and (a[i]<=c) then
      sum:=sum+a[i];
  end;
  write('Сумма элементов, принадлежащих отрезку, равна - ', sum);
end.