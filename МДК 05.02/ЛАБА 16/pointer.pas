procedure task1;
begin
  var i:= 2;
  var i_ptr:=@i;
  
  Print(i_ptr^)
end;    


begin
  task1;
end.