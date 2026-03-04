

/*
invertir(+Lista, -ListaR) es cierto cuando ListaR unifica con una lista que contiene los mismos elementos que Lista en orden inverso.

El metodo:

0.Intentar con el principio de induccion
   P(n0)
   Para todo n>n0, P(n-1)-> P(n)
   
1.Empezar por lo mas facil (Dar la solucion para lista vacia)


*/


invertir([],[]).

invertir([Cab|Resto],R2) :- invertir(Resto,R), append(R,[Cab],R2).


