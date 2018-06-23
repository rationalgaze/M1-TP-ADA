-- ex 7
with Text_Io;
use Text_Io;

procedure Element_tsk is
  package Integerio is new Text_Io.Integer_Io(Integer);
  use Integerio;
  Counter : Integer := 0;

  task type Element;

  task body Element is
  begin
    loop
      Put_Line ("tache activee");
      delay 1.0;
    end loop;
  end Element;

  -- T1, T2 : Element;
  -- T: array (1 .. 10) of Element;
  type Elmt_Pointer is access Element;
  T: array (1 .. 10) of Elmt_Pointer;
begin
  -- null;
  for i in 1..10 loop
     T(i) := new Element;
  end loop;
end Element_tsk;
