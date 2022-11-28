begin
var x:=1;
var n:= ReadInteger('Введите количество чисел в массиве А: ');
var a: array [1..100] of integer;
  randomize;
  A[1] := random(100);
  print('Массив А: ',A[1], ' ');
  for var i:=2 to n
  do 
  begin
    A[i] := A[i-1] + random(3);
    print(A[i], ' ');
    if A[i] <> A[i-1]
      then inc(x);
  end;
  println;
  println('Количество различных чисел в массиве А: ',x);
end.