with Text_Io;
use Text_Io;
--exo 2.4

procedure Lire_entier is 
   Package io is new integer_io (Integer);
   use io;
   S : Integer;  
begin

   Put("saisir un entier : ");
   Get(S);
   Put(S);

end Lire_entier;



