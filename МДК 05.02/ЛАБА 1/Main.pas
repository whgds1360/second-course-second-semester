type
  Laba1 = class
  public
    class function task1(num: integer): string;
    class function SumTo(num: integer): integer;
    class function task3(num, derge:integer): integer;
    class function task4(_word:string; i, n: integer): integer;
    class function task5(fnum, snum:integer):integer;
    class function task6(num:integer):integer;
  end;

class function Laba1.task1(num: integer): string;
begin
  if num > 0 then
    Result := num.ToString + ' ' + task1(num - 2) 
  else
    Result := 'Конец';
end;


class function Laba1.SumTo(num: integer): integer;
begin
  if num <= 0 then
    Result := 0
  else
    Result := SumTo(num - 1) + num;
end;


class function Laba1.task3(num, derge: integer): integer;
begin
  if derge = 0 then
    Result := 1
  else
    Result := num * task3(num, derge - 1);
end;


class function Laba1.task4(_word: string; i, n: integer): integer;
begin
  if i > n then
  begin 
    Result := 0;
    exit;
  end
  
  else
  begin
   PrintLn(_word);
   Result := task4(_word, i + 1, n);
  end;
end;


class function Laba1.task5(fnum, snum: integer): integer;
begin
  if (fnum = 0) and (snum = 0) then
  begin
    Result := 0; 
    Exit;
  end;
  
try
    if snum = 0 then
      Result := fnum
    else
      Result := task5(snum, fnum mod snum);
except 
  on error: Exception do 
    Print(error);
end;
end;


class function Laba1.task6(num: integer): integer;
begin
  if num <= 1 then
    Result := 1
  else
    Result := task6(num - 1) + task6(num - 2);
end;

begin
  //Print(Laba1.task1(25));
  //Print(Laba1.SumTo(3))
  //Print(Laba1.task3(2, 2))
  //Laba1.task4('Привет', 1, 10)
  //Print(Laba1.task5(3430, 1365));
  {for var i:=0 to 9 do
   Print(Laba1.task6(i), ' ')}
end.