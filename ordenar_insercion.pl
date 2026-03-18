
/*

insertar_en_list_ord(+Lista,+E,-ListaE). ListaE unifica con una lista igual que Lista pero ordenada y con el elemento E en la posicion correcta.

ordenar_insercion(+Lista,-ListaR).

[1,9,2,3]  7  --> [1,2,3,7,9]

*/




%----------------------------------------------------------------------------------------------

ordenar_insercion([], []).

ordenar_insercion([Cab|Resto], R) :- ordenar_insercion(Resto, R1), insertar_en_list_ord(R1, Cab, R).

%----------------------------------------------------------------------------------------------

insertar_en_list_ord([], E, [E]).

insertar_en_list_ord([Cab|Resto], E, [E, Cab|Resto]) :- E =< Cab.
    
insertar_en_list_ord([Cab|Resto], E, [Cab|R]) :- E > Cab, insertar_en_list_ord(Resto, E, R).
