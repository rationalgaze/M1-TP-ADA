
with Text_Io;
use Text_Io;

procedure Rdv2 is 

   package Integerio is new Text_Io.Integer_Io(Integer);
   use Integerio;

   task type Memoire is
      entry Ajouter (
            Num : in     Integer ); 
      entry Soustraire (
            Num : in     Integer ); 
      entry Consulter (
            Num :    out Integer ); 
   end Memoire;

   task body Memoire is
      Valeur : Integer := 0;  
   begin
      loop
         select
            accept Ajouter (
                  Num : in     Integer ) do 
               Valeur:=Valeur+Num;
            end Ajouter;
         or
            accept Soustraire (
                  Num : in     Integer ) do 
               Valeur:=Valeur-Num;
            end Soustraire;
         or
            accept Consulter (
                  Num :    out Integer ) do 
               Num:=Valeur;
            end Consulter;
         or
            terminate;
         end select;
      end loop;
   end Memoire;


   M1  : Memoire;  
   Val : Integer;  

begin

   M1.Soustraire(2);
   M1.Ajouter(10);
   M1.Consulter(Val);
   Put("valeur = ");
   Put(Val);
   New_Line;

end Rdv2;