with Text_Io;
use Text_Io;

package body arbre is 


procedure ajouter_droit(element : in integer ; pere : in cellule_ptr; noeud : out cellule_ptr) is 
begin
	noeud := new cellule;
	noeud.information:=element;
	if (pere /= null)
		then pere.droit:=noeud;
	end if;
end ajouter_droit;


procedure ajouter_gauche(element : in integer ; pere : in cellule_ptr; noeud : out cellule_ptr) is 
begin
	noeud := new cellule;
	noeud.information:=element;
	if (pere /= null)
		then pere.gauche:=noeud;
	end if;
end ajouter_gauche;


function somme (noeud : in cellule_ptr) return integer is
result : integer := noeud.information;
begin
	if (noeud.gauche /= null)
		then result:=result+somme(noeud.gauche);
	end if;
	if (noeud.droit /= null)
		then result:=result+somme(noeud.droit);
	end if;
	return result;
end somme;

procedure put (noeud : in cellule_ptr) is
Package io is new Integer_io(integer);
use io;
result : integer := noeud.information;
begin

	if (noeud.gauche /= null)
		then put(noeud.gauche);
	end if;
	if (noeud.droit /= null)
		then put(noeud.droit);
	end if;
	Put(result); new_line;
end put;


end arbre;


