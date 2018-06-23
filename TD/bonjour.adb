with Text_Io;
use Text_Io;

procedure bonjour is
  S : natural;
  Nom : String(1..1000);
begin
  Put_line("Entrez votre nom :");
  Get_line(Nom, S);
  Put("Bonjour " & Nom(1..S));
  new_line;
end bonjour;