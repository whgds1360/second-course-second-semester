uses GraphABC;

type 
DKR = class
  
  private
  class width:= 800;
  class height:=800;
  
  class procedure draw(x, y, level, side: integer);
  class procedure load_basic_settings();
  class procedure draw_buttons();
  class procedure depth();
  
  public
  class procedure main();
end;


class procedure DKR.load_basic_settings();
begin
  SetWindowWidth(width);
  SetWindowHeight(height);
  
  SetPenColor(clBlack);
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


class procedure DKR.draw_buttons();
begin
SetFontColor(Color.Red);
  
//Левая нижняя
Rectangle(0, height-60, 50, height-110);
TextOut(55, height-90, '+ глубина');

//Левая Верхняя
Rectangle(0, height, 50, height-50);
TextOut(55, height-30, '- глубина');
end;


class procedure DKR.depth();
begin
  if OnMouseDown and 
     (MouseX >= 0) and (MouseX <= 50) and 
     (MouseY >= height-110) and (MouseY <= height-60) then
  begin
    currentDepth := currentDepth + 1;
    ClearWindow();
    
    DKR.draw(100, 100, currentDepth, 400);
    DKR.draw_buttons();
    Redraw();
  end;
  
  
  if OnMouseDown and 
     (MouseX >= 0) and (MouseX <= 50) and 
     (MouseY >= height-50) and (MouseY <= height) then
  begin
    if currentDepth > 0 then
      currentDepth := currentDepth - 1;
    ClearWindow();
    
    DKR.draw(100, 100, currentDepth, 400);
    DKR.draw_buttons();
    Redraw();
  end;
end;


class procedure DKR.main();
begin
  DKR.load_basic_settings();
  DKR.draw(100, 100, 1, 400);
  DKR.draw_buttons();
  DKR.depth();
end;


begin
  DKR.main
end.