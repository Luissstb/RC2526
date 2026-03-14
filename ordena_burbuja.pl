

/*

ordena_burbuja(+Lista, -ListaR). es cierto cuando ListaR unifica con una lista que contiene los mismos elementos que Lista ordenados  de menor a mayor.

ordenada(+Lista) es cierto si Lista esta ordenada de menor a mayor.
 
*/


ordenada([]).
ordenada([_]).
%Las restricciones es mejor ponerlas al principio, antes del caso anterior porque el algoritmo funciona mas rapido asi (Cab1 =< Cab2)
ordenada([Cab1,Cab2|Resto]) :- Cab1 =< Cab2,ordenada([Cab2|Resto]).

%devuelve todos los pares de elementos consecutivos posibles de la lista introducida (la lista puede tener un numero impar de elementos,no importa).
%append(L1,[Elem1,Elem2|L2], [1,2,3,4,5,6,7,8]).




ordena_burbuja(Lista,Lista) :- ordenada(Lista).

%uso reversible del append, usamos esta funcion al reves de lo normal, dado una lista conocida nos devuelve las concatenaciones de pares posibles

%caso en el que los pares no estan ordenados
ordena_burbuja(Lista, R) :- append(L1,[Elem1,Elem2|L2], Lista), Elem1>Elem2, append(L1,[Elem2,Elem1|L2],ListaR), ordena_burbuja(ListaR,R).




/* 
ESTA TERCERA REGLA ES INNECESARIA:

caso en el que los pares si estan ordenados
ordena_burbuja(Lista, R) :- append(_,[Elem1,Elem2|_], Lista), Elem1=<Elem2, ordena_burbuja(Lista,R).

No descomentar esta regla. Aunque parece lógica (avanzar si el par 
ya está ordenado), en Prolog rompe el programa al pedir más 
soluciones (pulsando ';') o al comprobar resultados falsos.

¿Por qué? 
Si el append encuentra un par ordenado (Elem1 =< Elem2), esta regla 
vuelve a llamar a 'ordena_burbuja' pasándole EXACTAMENTE LA MISMA 
'Lista' original, sin haberle cambiado nada.

Como la lista es la misma, Prolog volverá a encontrar ese mismo par 
ordenado, volverá a ejecutar esta regla, y se quedará atrapado en 
un bucle infinito comprobando los mismos dos números para siempre.

Solución: Prolog ya ignora los pares ordenados automáticamente en la 
regla anterior al exigir que (Elem1 > Elem2). Si eso falla, el 
'append' simplemente sigue buscando otro corte.

*/










