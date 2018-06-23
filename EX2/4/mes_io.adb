
with Text_Io;
use Text_Io;

package body mes_io is
  
  procedure Get(res : out Integer) is
    Package io is new integer_io (Integer);
    use io;
    i : Integer := 0;
    begin        
      Put("saisir un entier : ");
      io.Get(i);
      res := i;
  end Get;
  
  procedure Get(res : out Float) is
    Package io is new float_io (Float);
    use io;
    f : Float := 0.0;
    begin
      Put("saisir un flottante : ");
      io.Get(f);
      res := f;
  end Get;
  
  procedure Put(arg : in Integer) is
    Package io is new integer_io (Integer);
    use io;
    begin       
      io.Put(arg);
      new_line;
  end Put;

  procedure Put(arg : in Float) is
    Package io is new float_io (Float);
    use io;
    begin       
      io.Put(arg);
      new_line;
  end Put;
  
    
     
end mes_io;



