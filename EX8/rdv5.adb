
with Text_Io;
use Text_Io;

procedure Rdv5 is 

   package Integerio is new Text_Io.Integer_Io(Integer);
   use Integerio;


   task Toto;
   task type Memoire is
      entry Ajouter (
            Num : in     Integer ); 
      entry Soustraire (
            Num : in     Integer ); 
      entry Consulter (
            Num :    out Integer ); 
      entry Verouille; 
      entry Deverouille; 
   end Memoire;

   task body Memoire is
      Valeur : Integer := 0;  
      Etat   : Boolean := True;  
   begin
      loop
         select
            accept Verouille do 
               Etat:=False;
            end Verouille;
         or
            accept Deverouille do 
               Etat:=True;
            end Deverouille;
         or
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
            when Etat=True =>
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

   task body Toto is
   begin
      M1.Verouille;
      Put_Line("Verouille");
      M1.Ajouter(3);
      delay 7.0;
      M1.Deverouille;
      Put_Line("Deverouille");
   end Toto;

begin

   M1.Soustraire(2);
   M1.Ajouter(10);
   delay 1.0;
   M1.Consulter(Val);
   Put("Valeur = ");
   Put(Val);
   New_Line;

end Rdv5;



