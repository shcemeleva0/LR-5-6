const n=15;
var A:array[1..n] of byte;
    i,k,t,f,max: byte;
begin
    randomize;
    for i:=1 to n do begin
        A[i] := random(20);
        write(A[i],' ');
    end;
    writeln;
    t:=A[1];
    max:= 1;
    for i:=1 to n-1 do begin
        f:=1;
        for k:=i+1 to n do
            if A[i] = A[k] then
                f:=f+1;
        if f > max then begin
            max:=f;
            t:=A[i];
        end;
    end;
    if max > 1 then
        writeln(max, ' раз(а) встречается число ', t)
    else
        writeln('Все элементы уникальны!');
end.