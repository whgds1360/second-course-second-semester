type PNode = ^Node;
  Node = record
    num: integer;
    next: PNode;
  end;
  
function CreateNode(NewNum:integer): PNode;
  begin
    var NewNode: PNode;
         
    new(NewNode);
    NewNode^.num := NewNum;
    NewNode^.next := nil;
         
    result := NewNode
  end;
   
procedure AddToBegin(var Head: PNode; NewNum: integer);
  begin
    var NewNode: PNode;
    
    NewNode := CreateNode(NewNum);  
    NewNode^.next := Head;           
    Head := NewNode;                  
  end;
  
procedure RunOfList(Head:PNode);
  begin
    while Head <> nil do
      begin
        Print(Head^.num);
        Head := Head^.next; 
      end;
  end;
  
procedure OnlyPrime(Head:PNode);
  begin
    Print('Is prime:');
    while Head <> nil do
      begin
        if Head^.num mod 2 = 0 then
          Print(Head^.num);
        Head := Head^.next; 
      end;
  end;
  
procedure MaxAndMin(Head: PNode);
  begin
      
    var max := Head^.num;
    var min := Head^.num;
    
    while Head <> nil do
    begin
      if Head^.num > max then
        max := Head^.num;
      if Head^.num < min then
        min := Head^.num;
      Head := Head^.next;
    end;
    
    Println($'Max: {max}');
    Println($'Min: {min}');
  end;
  
procedure ClearOfList(var Head:PNode);
  begin
    var DeleteNode: PNode; 
    
    while Head <> nil do
      begin
        Print(Head^.num);
        DeleteNode := Head;
        Head := Head^.next;
        Dispose(DeleteNode)
      end;
  end;  
     
begin
  Randomize;
  
  var Head : PNode;
  
  loop 5 do
    AddToBegin(Head, Random(10));
  
  RunOfList(Head);
  Println();
  OnlyPrime(Head);
  Println();
  MaxAndMin(Head);
end.   