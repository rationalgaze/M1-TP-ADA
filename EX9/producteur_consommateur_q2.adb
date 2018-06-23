with Semaphores;
use Semaphores;
with Text_Io;
use Text_Io;

procedure Producteur_consommateur_q2 is
  
  Package io is new integer_io (Integer);
  Nb_pleins : Semaphore;
  Nb_vides : Semaphore;
  tab : array (0..3) of Integer;

  task type Producteur;
  task body Producteur is
  ip : Integer := 0;
  begin
    loop
      Nb_vides.P;
      tab(ip mod 4) := 1;
      ip := ip + 1;
      Put_Line("Producteur produise : ");
      Nb_pleins.V;
      delay 1.0;
    end loop;
  end Producteur;

  task type Consommateur;
  task body Consommateur is
  ic : Integer := 0;
  Val : Integer;
  begin
    loop
      Nb_pleins.P;
      Val := tab(ic mod 4);
      Put_Line("Consommateur consomme : ");
      io.Put(Val);
      New_Line;
      ic := ic + 1;
      Nb_vides.V;
      delay 1.0;
    end loop;
  end Consommateur;

  -- Prod : Producteur;
  -- Cons : Consommateur;
  type Producteur_Ptr is access Producteur;
  type Consommateur_Ptr is access Consommateur;

  Producteurs : array (1..4) of Producteur_Ptr;
  Consommateurs : array (1..4) of Consommateur_Ptr;
begin
  Nb_pleins.Init(0);
  Nb_vides.Init(4);

  for i in 1..10 loop
    Producteurs(i):= new Producteur;
    Consommateurs(i):= new Consommateur;
   end loop;
end Producteur_consommateur_q2;