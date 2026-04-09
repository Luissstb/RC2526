
/*

   Representacion en prolog de un arbol binario  donde el nodo 1 tiene 2 y 3 , 2 tiene vacio y 3 solo a 4

   arbol1(a (1, a(2,nil,nil), a(3,nil, a(4,nil,nil)) )).
   
   
   cuenta_nodos_ab(+Arbol_binario, ?Num_nodos) es cierto cuando Num_todos unifica con el numero de nodos del arbol Arbol_binario
   
   Para no tener que poner la declaracion anterior del arbol se pone de esta forma para simplificar la sentencia:
   
   arbol1(A), cuenta_nodos_ab(A,R).
   
*/


arbol1(a(1, a(2,nil,nil), a(3,nil, a(4,nil,nil)) )).

cuenta_nodos_ab(nil,0).

cuenta_nodos_ab(a(_, Hi, Hd), R) :- cuenta_nodos_ab(Hi,Ri),cuenta_nodos_ab(Hd,Rd) , R is Ri+Rd+1.

 
 
 
