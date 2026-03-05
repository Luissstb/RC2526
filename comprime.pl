

/*


comprime(+Lista, -R) es cierto si R unifica con una lista de la siguiente forma:

comprime([a,a,a,b,b,c,c,c,a,a],R)
R=[(a,3),(b,2),(c,3),(a,2)]
o tambien asi:
R=[a-3,b-2,c-3,a-2]


*/