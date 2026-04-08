

/*

guitracer. depuracion grafica


mas_veces(+Lista,-Elem,-Num) es cierto cuando Elem unifica con el elemento que se repite mas veces en la lista Lista y Num unifica con el numero de veces que se repite dicho elemento

para hacer 'mas_veces' necesitamos ordenar la lista incluso con repetidos con msort(+List, -Sorted)

mayor_n(+ListaComprimida, -Elem, -N). es cierto si Elem unifica con el elemento que se repite mas veces en ListaComprimida y N unifica con el numero de veces que se repite
Elem. ListaComprimida tiene el siguiente formato: R=[(a,3),(b,2),(c,3),(a,2)]


comprime(+Lista, -R) es cierto si R unifica con una lista de la siguiente forma:

comprime([a,a,a,b,b,c,c,c,a,a],R)
R=[(a,3),(b,2),(c,3),(a,2)]

*/



mas_veces(Lista,Elem,Num)  :-  msort(Lista,Lista_Ordenada), comprime(Lista_Ordenada, ListaComprimida), mayor_n(Lista_Comprimida,Elem,Num).


mayor_n([Elem,N], Elem, N).

mayor_n([Elem,N | Resto], N ) :- mayor_n(Resto, _ ,NMayor), NMayor < N.

mayor_n([Elem,N | Resto], N ) :- mayor_n(Resto, _ ,NMayor), NMayor >= N.


comprime(Lista, R) :- comprime_tuplas(Lista, R).


%---------------------------------

comprime_tuplas([], []).

comprime_tuplas([Cab|Resto], R) :- aux_tuplas(Resto, Cab, 1, R).

aux_tuplas([], Elem, N, [(Elem, N)]).

aux_tuplas([Cab|Resto], Cab, N, R) :- N1 is N + 1, aux_tuplas(Resto, Cab, N1, R). 

aux_tuplas([Cab|Resto], ElemAnt, N, [(ElemAnt, N) | R]) :- Cab \= ElemAnt, aux_tuplas(Resto, Cab, 1, R).




