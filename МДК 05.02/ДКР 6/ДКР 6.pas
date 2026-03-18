const
  SIZE = 10;

type
  DEK = record
    data: array[1..SIZE] of integer;
    head: integer;
    tail: integer;
    count: integer;
  end;

procedure Init(var d: DEK);
begin
  d.head := 1;
  d.tail := SIZE;
  d.count := 0;
end;

function IsEmpty(var d: DEK): boolean;
begin
  IsEmpty := d.count = 0;
end;

function IsFull(var d: DEK): boolean;
begin
  IsFull := d.count = SIZE;
end;

procedure Push(var d: DEK; place: string; number: integer);
begin
  if IsFull(d) then
  begin
    writeln('Дек переполнен!');
    exit;
  end;
  
  case place of
    'H': begin
      d.head := d.head - 1;
      if d.head < 1 then
        d.head := SIZE;
      d.data[d.head] := number;
    end;
    
    'T': begin
      d.tail := d.tail + 1;
      if d.tail > SIZE then
        d.tail := 1;
      d.data[d.tail] := number;
    end;
  end;
  
  d.count := d.count + 1;
end;

procedure ShowDek(var d: DEK);
var
  i, pos: integer;
begin
  writeln;
  writeln('Содержимое дека:');
  
  if IsEmpty(d) then
    writeln('[пусто]')
  else
  begin
    write('[ ');
    pos := d.head;
    for i := 1 to d.count do
    begin
      write(d.data[pos], ' ');
      pos := pos + 1;
      if pos > SIZE then
        pos := 1;
    end;
    writeln(']');
  end;
  
  writeln('Всего элементов: ', d.count);
  writeln('head (начало) = ', d.head);
  writeln('tail (конец) = ', d.tail);
  
  write('Память: [ ');
  for i := 1 to SIZE do
    write(d.data[i], ' ');
  writeln(']');
  writeln;
end;


Begin
  var deker: DEK;
  var choice, num: integer;
  
  Init(deker);
  
  repeat
    writeln('1 - Добавить в начало');
    writeln('2 - Добавить в конец');
    writeln('3 - Показать дек');
    writeln('0 - Выход');
    writeln('');
    write('Ваш выбор: ');
    readln(choice);
    
    case choice of
      1: begin
        write('Введите число: ');
        readln(num);
        Push(deker, 'H', num);
        ShowDek(deker);
      end;
      
      2: begin
        write('Введите число: ');
        readln(num);
        Push(deker, 'T', num);
        ShowDek(deker);
      end;
      
      3: ShowDek(deker);
      
      0: writeln('Программа завершена');
      
      else writeln('Неверный выбор!');
    end;
    
    writeln;
  until choice = 0;
End.