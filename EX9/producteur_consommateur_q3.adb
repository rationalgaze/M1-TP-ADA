with Text_Io;
use Text_Io;

procedure Producteur_consommateur_q3 is
  
  Package io is new integer_io (Integer);

  Taille_Buffer : constant Integer := 4;
  type Buffer_Type is array (1..Taille_Buffer) of Integer;

  protected type Buffer is
     entry Produire(Val : in Integer);
     entry Consommer(Val : in out Integer);
  private
     -- Les donnees du tampon
     Data : Buffer_Type;
     -- Indices de production et consommation
     Index_Cons : Integer :=1;
     Index_Prod : Integer :=1;
     -- Nombre d'element dans le tampon
     Nb_Element : Integer:=0;
  end Buffer;

  protected body Buffer is 
  entry Produire(Val : in Integer) when Index_Prod = 0 is
  begin
    Buffer_Type(Index_Prod mod 4) := Val;
    Index_Prod := Index_Prod + 1;
    Nb_Element := Nb_Element + 1;
  end Produire;

  entry Consommer(Val : in out Integer) when Index_Cons = Taille_Buffer is
  begin
    Val := Buffer_Type(Index_Cons mod 4);
    Index_Cons := Index_Cons + 1;
    Nb_Element := Nb_Element - 1;
  end Consommer;
end Buffer;

  task type Producteur;
  task body Producteur is
  begin
    loop
      Buffer.Produire(1);
      delay 1.0;
    end loop;
  end Producteur;

  task type Consommateur;
  task body Consommateur is
  Val : Integer;
  begin
    loop
      Buffer.Consommer(Val);
      Put_Line("Consommateur consomme : ");
      New_Line;
      io.Put(Val);
      New_Line;
      delay 1.0;
    end loop;
  end Consommateur;

  type Producteur_Ptr is access Producteur;
  type Consommateur_Ptr is access Consommateur;

  Producteurs : array (1..4) of Producteur_Ptr;
  Consommateurs : array (1..4) of Consommateur_Ptr;
begin
  for i in 1..10 loop
    Producteurs(i):= new Producteur;
    Consommateurs(i):= new Consommateur;
   end loop;
end Producteur_consommateur_q3;