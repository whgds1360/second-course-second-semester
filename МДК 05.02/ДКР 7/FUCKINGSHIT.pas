unit FUCKINGSHIT;

interface
uses GraphABC;

type 
DKR = class
  
  private
  class width:= 800;
  class height:=800;
  
  class depth: integer;    // глубина рекурсии
  class dx, dy: integer;   // смещение
  
  class procedure draw(x, y, level, side: integer);
  class procedure load_basic_settings;
  class procedure button_handlers;
  class procedure redraw; 

  public
  class procedure main();
end;

implementation
class procedure DKR.load_basic_settings();
begin
  SetWindowWidth(width);
  SetWindowHeight(height);
  
  SetPenColor(clBlack);

  depth := 2;
  dx := 0;
  dy := 0;
end;


class procedure DKR.draw(x, y, level, side: integer);
  begin
    if level = 0 then
    begin
      Brush.Color := clBlack;
      Rectangle(x, y, x + side, y + side);
      Exit;
    end;
    
    var newSide := side div 3;
    
    for var i := 0 to 2 do
      for var j := 0 to 2 do
      begin
        if (i = 1) and (j = 1) then
          Continue;
     
        var x1 := x + i * newSide;
        var y1 := y + j * newSide;
        
        draw(x1, y1, level - 1, newSide);
      end;
  end;


class procedure DKR.redraw;
begin
  ClearWindow;
  draw(200 + dx, 200 + dy, depth, 400);
end;


class procedure DKR.button_handlers;
begin
  OnKeyDown := procedure(k: integer) ->
  begin
    
    // глубина
    if k = VK_Add then       // клавиша +
    begin
      depth := depth + 1;
      redraw;
    end
    
    else if k = VK_Subtract then // клавиша -
    begin
      if depth > 0 then
        depth := depth - 1;
      redraw;
    end
    
    // влево/вправо
    else if k = VK_Left then
    begin
      dx := dx - 10;
      redraw;
    end
    else if k = VK_Right then
    begin
      dx := dx + 10;
      redraw;
    end
    
    // вверх/вниз
    else if k = VK_Up then
    begin
      dy := dy - 10;
      redraw;
    end
    else if k = VK_Down then
    begin
      dy := dy + 10;
      redraw;
    end;
  end;
end;


class procedure DKR.main();
begin
  DKR.load_basic_settings();
  DKR.button_handlers;
  DKR.redraw;
end;