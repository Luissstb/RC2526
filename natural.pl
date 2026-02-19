

%Logica de primer orden



/*
   
  Las variables siempre empiezan por mayus.
  Lo anterior es cierto cuando Numero coincide con un numero natural
  natural(Numero)
  

  Forma de decir que 1 es natural.
  natural(1).
  
  La primera opcion es como se ve de forma clasica, y la segunda la unica que entiende prolog
  
  natural(n-1) -> natural (n)

  natural(N):- N > 1, N2  is N-1, natural(N2).
  
*/


/*
  Principio de Induccion Matematico

  Sea S un conjunto ordenable.

  Sea n0 el elemento mas pequeño de S.

  Quiero demostrar que la propiedad P se cumple para todo elemento del conjunto S.

  1. P es cierta para n0
  2. Para todo elemento mayor que n0: Si P(n-1) es cierto tambien lo sera P(n)

*/


natural(1).
natural(N):- N > 1, N2  is N-1, natural(N2).
