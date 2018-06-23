with Text_Io;
use Text_Io;
with ada.float_text_io; use ada.float_text_io;

procedure Lire_list is 
  
  F : Float := 0.0; 
  max : Float := 0.0; 
  min : Float := 10000.0;
  i : Integer := 0;
  avg : Float := 0.0;

begin

  put_line("Give me a number");
  get(F);

  while F /= 0.0 loop

    avg := avg + F;
    if F < min and F /= 0.0 then
      min := F;
    end if;

    if F > max then 
      max := F;
    end if;
    put_line("Give me a next number");
    get(F);

    i := i+1;
    
  end loop;
  
  avg := avg / Float(i);
  put_line("Min :");
  put(min, 5, 2, 0);
  new_line;
  put_line("Max :");
  put(max, 5, 2, 0);
  new_line;

  put_line("Average :");
  put(avg, 5, 2, 0);

end Lire_list;



