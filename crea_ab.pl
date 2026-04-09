


/*

 crea_ab(+ListaEtiquetas, -ArbolBinario) es cierto cuando ArbolBinario unifica con un arbol binario BALANCEADO que contiene solo las etiquetas de ListaEtiquetas
 
 
 variante:
 
 crea_ab(+N, -ArbolBinario) es cierto cuando ArbolBinario unifica con un arbol binario BALANCEADO que contiene todas las etiquetas sin repeticion desde 1 a N

*/


crea_ab([],nil).

crea_ab( [Cab|Resto] , ) :- Resto is ,  crea_ab(Resto, a(