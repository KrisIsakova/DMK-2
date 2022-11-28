begin
  var s:=readstring('Введите исходную строку: ');
  var s1:=readstring('Введите подстроку: ');
  var x:=length(s);
  var y:=length(s1);
  var n:=0;
  var i:=1;
  var flag:boolean;
while i<=x-y+1 do
begin
if s[i]=s1[1] then
begin
  flag:=true;
for var j:=1 to y-1 do
if s[i + j]<>s1[j + 1] then
begin
i:= i+j;
flag := false;
break
end;
if flag then
begin
 println('Подстрока является подпоследовательностью исходной строки');
exit;
end;
end;
i += 1;
end;
 println('Подстрока не является подпоследовательностью исходной строки');
end.