
package arbre is 

  type cellule;
  type cellule_ptr is access cellule;

  type cellule is record
	information : integer;
	gauche  : cellule_ptr;
	droit   : cellule_ptr;
  end record;

  procedure ajouter_gauche(element : in integer ; pere : in cellule_ptr; noeud : out cellule_ptr);
  procedure ajouter_droit(element : in integer ; pere : in cellule_ptr; noeud : out cellule_ptr);

  function somme (noeud : in cellule_ptr) return integer;
  procedure put(noeud : in cellule_ptr);

end arbre;


