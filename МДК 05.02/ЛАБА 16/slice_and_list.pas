procedure slice01;
begin;
  var arr:= ReadArrInteger(10);
  
  Print(Arr[::-1])
end;


procedure slice02;
begin
    var arr:= ReadArrInteger(10);
    
    Print(arr[::2])
end;


procedure slice03;
begin
    var arr:= ReadArrInteger(10);
    Print(Min(arr[::2]))
end;


procedure slice04;
begin
    var arr:= ReadArrInteger(10);
    
    Print(arr[:arr.IndexMax] + arr[arr.IndexMax+1:])
end;


procedure slice05;
begin
  var n:=ReadInteger();
  var arr:= ReadArrInteger(10);
  
  Print(arr[:arr.IndexMin] + n +arr[arr.IndexMin:])
end;


procedure list01;
begin
  var arr:=ArrRandom(10, -100, 100);
  
  Println('L1', Lst(arr.FindAll(num -> num>0)));
  Println('L2', Lst(arr.FindAll(num -> num<0)));
end;


procedure list02;
begin
  var nums := Lst(ArrRandom(10, -5, 5));
 nums.println();
 
  nums.RemoveAt(nums.IndexMax);
  nums.Println();
end;


Begin
  //slice01();
  //slice02();
  //slice03();
  //slice04();
  //slice05();
  
  //list01();
  //list02();
end.