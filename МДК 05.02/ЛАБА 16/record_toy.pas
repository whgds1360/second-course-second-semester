type
  Toy = record
    public
    name: string[50];
    price: integer;
    age: string[50];
  end;
  
begin
    var my_toy: Toy;
    
    with my_toy do
    begin
      name := 'Медвежонок барни';
      price := 12345;
      age := '5-17';
    end;
    
    Print($'Наименование: {my_toy.name} {#10}Цена: {my_toy.price}руб. {#10}Возраст: {my_toy.age}');
    //////////////////////////////////////////////////////////////////////////////////////////////Задание 1
    var f: file of Toy;
    
    Assign(f, 'record_toy.txt');
    Rewrite(f);
    
    write(f, my_toy); 
    Close(f);         
    ////////////////////////////
    Reset(f);  

    var content: Toy;  
    
    while not Eof(f) do 
    begin  
      Read(f, content);  
      
      Print($'{#10}Наименование: {content.name} {#10}Цена: {content.price}руб. {#10}Возраст: {content.age}');
    end;  
    Close(f);
end.