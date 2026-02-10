type
  Toy = record
    public
    name: string;
    price: integer;
    age: string;
  end;
  
  begin
    var my_toy:Toy;
    
    with my_toy do
    begin
      name := 'Медвежонок барни';
      price := 12345;
      age := '5-17';
    end;
    
    Print($'Наименование: {my_toy.name} {#10}Цена: {my_toy.price}руб. {#10}Возраст: {my_toy.age}')
  end.