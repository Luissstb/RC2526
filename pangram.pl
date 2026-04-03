

/*

member(?Elem, ?List) es cierto si el elemento Elem pertenece a la lista List

pangram(+Lista) es cierto si Lista contiene todas las letras del alfabeto


Lista=[a,b,c,d,e,f,g,h,i,j,k,l,m,n,ñ,o,p,q,r,s,t,u,v,w,x,y,z].

*/





pangram([], _ ).

pangram([Cab|Resto], Lista) :- member(Cab,Lista), pangram(Resto,Lista).


