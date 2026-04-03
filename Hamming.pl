


/*

Hamming(+Lista1,+Lista2,-Distancia) Distancia unifica con el numero de elementos que no hay en las mismas posiciones de Lista1 y Lista2


*/



hamming([],[],0).


hamming([Cab1|Resto1],[Cab2|Resto2], D) :-  Cab1 is Cab2, Hamming(Resto1,Resto2,Distancia), D is Distancia+1.