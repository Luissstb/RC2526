

/*

   pertenece_ab(+Elem,+ArbolBinario) es cierto si la etiqueta Elem pertenece a ArbolBinario
   
   Para ejecutarlo primero se debe poner eso para cargar el arbol:
   arbol1(A), pertenece(7,A).

*/

arbol1(a(1, a(2,nil,nil), a(3,nil, a(4,nil,nil)) )).


pertenece_ab(Elem, a(Elem,_,_)).

pertenece_ab(Elem, a(_,Hi,_) ) :- pertenece_ab(Elem,Hi).

pertenece_ab(Elem, a(_,_,Hd) ) :- pertenece_ab(Elem,Hd).
