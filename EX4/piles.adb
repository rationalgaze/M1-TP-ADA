-- Inverser et Afficher c'est ici
with Text_Io;
use Text_Io;

package body Piles is

   procedure Vider is 
   begin
      Nb := 0;
   end Vider;

   function Est_Vide return Boolean is 
   begin
      return Nb = 0;
   end Est_Vide;

   function Sommet return Element is 
   begin
      if Nb = 0 then
         raise Pile_Vide;
      end if;
      return Donnees(Nb);
   end Sommet;

   procedure Empiler ( V : in     Element ) is 
   begin
      if Nb = Taille then
         raise Pile_Pleine;
      end if;
      Nb := Nb + 1;
      Donnees(Nb) := V;
   end Empiler;

   procedure Depiler is 
   begin
      if Nb = 0 then
         raise Pile_Vide;
      end if;
      Nb:= Nb - 1;
   end Depiler;

   procedure Inverser is
      tab: Table;
      cpt : Natural;
   begin
      if Nb = 0 then
         raise Pile_Vide;
      end if;
      cpt := Nb;
      for i in 1 .. Nb loop
         tab(i) := Sommet;
         Depiler;
      end loop;
      for i in 1 .. Nb loop
         tab(i) := Sommet;
         Depiler;
      end loop;
      Donnees := tab;
      Nb := cpt;

   end Inverser;

   procedure Afficher is
   begin
      for I in 1 .. Nb loop
         Put(" ");
         Put_Element(Donnees(I));
      end loop;
      New_Line;
   end Afficher;

end Piles;

