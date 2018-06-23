Taille_Buffer : constant Integer :=4;
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