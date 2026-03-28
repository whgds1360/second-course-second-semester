const
  SIZE = 2;

type DEK = record
  data: array[0..SIZE] of integer;
  head, tail, count: integer;
end;

procedure Init(var d: DEK);
begin
  d.head := 0;
  d.tail := 0;
  d.count := 0;
end;

function IsEmpty(var d: DEK): boolean := d.count = 0;

function IsFull(var d: DEK): boolean := d.count = SIZE+1;

procedure Push(var d: DEK; place: string; number: integer);
begin
  if IsFull(d) then begin
    println('Дек переполнен!');
    exit;
  end;

  if place = 'H' then begin
    d.head := d.head - 1;
    if d.head < 0 then d.head := SIZE;
    d.data[d.head] := number;
    
  end else if place = 'T' then begin
    d.data[d.tail] := number;
    d.tail := d.tail + 1;
    if d.tail > SIZE then d.tail := 0;
    
  end;

  d.count := d.count + 1;
end;

procedure ShowDek(var d: DEK);
begin
  println;
  println('Содержимое дека:');
  
  if IsEmpty(d) then
    println('[пусто]')
  else begin
    var pos := d.head;
    print('[ ');
    for var i := 1 to d.count do begin
      print(d.data[pos], ' ');
      pos := pos + 1;
      if pos > SIZE then pos := 0;
    end;
    println(']');
  end;

  writeln('Всего элементов: ', d.count);
  writeln('head = ', d.head, '  tail = ', d.tail);
  
  print('Память: [ ');
  for var i := 0 to SIZE do print(d.data[i], ' ');
  println(']');
end;


Begin
  var deker: DEK;
  
  Init(deker);
  
  println('1 - Добавить в начало');
  println('2 - Добавить в конец');
  println('3 - Показать дек');
  println('0 - Выход');
  
  var choice := readinteger();
  
  repeat
    case choice of
      1: begin
        var num:= readinteger('Введите число: ');
        Push(deker, 'H', num);
        ShowDek(deker);
      end;
      
      2: begin
        var num:= readinteger('Введите число: ');
        Push(deker, 'T', num);
        ShowDek(deker);
      end;
      
      3: ShowDek(deker);
      
      0: println('На этом всё!');
      
      else writeln('Неверный выбор!');
    end;
    
    println;
    choice := readinteger();
  until choice = 0;
End.
