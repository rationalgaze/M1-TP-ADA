use Buffer;
with Buffer;

protected body Buffer is 
  entry Produire(Val : in Integer) is
  begin
    Buffer_Type(Index_Prod mod 4) := Val;
    Index_Prod := Index_Prod + 1;
    Nb_Element := Nb_Element + 1;
  end Produire;

  entry Consommer(Val : in out Integer) is
  begin
    Val := Buffer_Type(Index_Cons mod 4);
    Index_Cons := Index_Cons + 1;
    Nb_Element := Nb_Element - 1;
  end Produire;
end Buffer;