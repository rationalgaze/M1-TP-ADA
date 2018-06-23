with arbre;
use arbre;
with text_io;
use text_io;

procedure marbre is 

package io is new integer_io(integer);
use io;

s : integer;
root : cellule_ptr;
n1, n2 : cellule_ptr;

begin
	ajouter_gauche(10, null, root);
	ajouter_gauche(11, root, n1);
	ajouter_gauche(12, n1, n2);
	ajouter_droit(13, n1, n2);
	ajouter_droit(20, root, n1);
	ajouter_droit(21, n1, n2);

	s:=somme(root);
	put("s = "); put(s); new_line;

  put(root);
end marbre;


