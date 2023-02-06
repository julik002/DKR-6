Uses crt;
Type Pint=^intr;
     intr=record
       a:integer;
       next:Pint;
     end;
Procedure NtCreat(Var Hed:Pint);  //создает элемент списка
Var C,B:Pint;
    a:integer;
begin
  TextColor(lightmagenta);
  New(C);
  Write('Введите число - ');
  readLn(C^.a);
  if hed=nil then
    begin
      hed:=c;
      hed^.next:=Hed;  //адрес "головы"
    end      else
    begin
      b:=hed;
      while b^.next<>hed do
        b:=b^.next;
      c^.next:=Hed;
      b^.next:=c;
    end;
end;
 
 
 procedure del(var c:pint); //удаление списка
 var t:pint;
 begin
  t:=c;c:=c^.next;t^.next:=nil;
  while c<>nil do
  begin
    t:=c;c:=c^.next;dispose(t);
  end;
 end;
 
 
Procedure View(Var Hed:Pint);  //просмотр всего списка
Var C,S:Pint;
    i:integer;
begin
  c:=Hed;     //первый элемент списка
  S:=nil;
  if c=nil then
  begin
     TextColor(lightmagenta);
   WriteLn('Список пуст! ');
   readLn;
   exit;
  end;
 repeat
    TextColor(lightmagenta);
    WriteLn(C^.a);  // читаем элементы списка до тех пор,пока не перейдём на начало
    Write('(1-Дальше) (0-Назад:) (2-Закончить просмотр) ');
    readLn(i);     //Enter
    case i of
    1:c:=C^.next;  //по списку вперёд
    0:begin
        s:=C;
        c:=hed;
         While C^.next<>s do
           c:=c^.next;
      end;
    2:begin
        break;
        exit;
      end;
    end;
 until false;//C=hed;
end;
 
Function Show(Var Sp:pint):boolean;
Var i:char;
begin
   TextColor(lightmagenta);
  Show:=true;
  WriteLn('1 - Создать элемент списка ');
  TextColor(lightmagenta);
  Writeln('2 - Просмотреть весь список ');
   TextColor(lightmagenta);
  WriteLn('3 - Удалить список ');
  TextColor(lightmagenta);
  WriteLn('4 - Выход ');
  //i:=readkey;
  readLn(i);
  case i of
    '1':NtCreat(Sp);
    '2':View(sp);
    '3':del(sp);
    '4':Show:=false;
  end;
end;
Var Spisok:Pint;
    F:boolean;
Begin
  ClrScr;
  Spisok:=nil;
  repeat
    f:=show(Spisok);
    clrscr;
  until not F;
end.