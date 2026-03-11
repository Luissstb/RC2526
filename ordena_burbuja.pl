

/*

ordena_burbuja(+Lista, -ListaR). es cierto cuando ListaR unifica con una lista que contiene los mismos elementos que Lista ordenados  de menor a mayor.

ordenada(+Lista) es cierto si Lista esta ordenada de menor a mayor.
 
*/


ordenada([]).
ordenada([_]).
%Las restricciones es mejor ponerlas al principio, antes del caso anterior porque el algoritmo funciona mas rapido asi (Cab1 =< Cab2)
ordenada([Cab,Cab2|Resto]) :- Cab1 =< Cab2,ordenada([Cab2|Resto]).

%devuelve todos los pares de elementos consecutivos posibles de la lista introducida (la lista puede tener un numero impar de elementos, no importa).
append(_,[Elem1,Elem2|_], [1,2,3,4,5,6,7,8]).



ordena_burbuja().

ordena_burbuja() :- ordena_burbuja().





