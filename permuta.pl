

/*

permuta(+Lista,ListaR). es cierto cuando ListaR unifica con un conjunto de listas incluyendo Lista con todos las ordenaciones de sus elementos posibles.
Este predicado genera todas las listas posibles (al solicitar mas con ;) por backtracking.

bagof(L,permuta([1,2,3],L),ListaSoluciones), length(ListaSoluciones,Length). dice el numero de soluciones posibles


*/


permuta([],[]).

permuta( [Cab|Resto] , R2) :- permuta(Resto, R), insertar_todas(Cab,R,R2).

/*
insertar_todas(+Elem,+Lista,-ListaR)  es cierto si ListaR unifica con una lista que contiene los elementos de Lista con Elem insertado en cualquier posicion

*/

insertar_todas(Elem,Lista,[Elem|Lista]).

insertar_todas(Elem,[Cab|Resto], [Cab|R]):- insertar_todas(Elem,Resto,R).