type 
  Anketa = record 
  public 
    fio: string;
    birth: string; //задание 1
    kurs: 1..5;
    /////////////////////////////// 
    day: 1..31;
    month: 1..12; //задание 2
    years: 1900..2026;
    
    constructor Create(fio:string; birth:string; kurs:1..5);
    begin
      self.fio := fio;
      self.birth := birth;
      self.kurs := kurs;
    end;
  end;
  
  begin
    var max: Anketa := new Anketa('Шильников М.Ю.', '04.04.2008', 2);
    
    Print($'Фио: {max.fio}{#10}Курс: {max.kurs}{#10}День рождения: {max.birth}'); // 1 задание
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    var  birthdays: array[1..10] of Anketa;
    
    birthdays[1].day := 4;
    birthdays[1].month := 4;
    birthdays[1].years := 2008;
    
    Print($'{#10}День: {birthdays[1].day} Месяц: {birthdays[1].month} Год: {birthdays[1].years}')//2 задание
  end.