with Text_Io;
use Text_Io;
with mes_io;
use mes_io;

procedure proc is 
   Package io is new integer_io (Integer);
   use io;
   Package fl_io is new float_io (Float);
   use fl_io;
   S : Integer;  
   F : Float;

begin
   mes_io.Get(S);
   mes_io.Put(S);

   mes_io.Get(F);
   mes_io.Put(F);
end proc;



