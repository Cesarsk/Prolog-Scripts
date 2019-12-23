grado(X,Y,1):-padre(X,Y),!. grado(X,Y,1):-madre(X,Y),!. 
grado(X,Y,G):-grado(X,Z,G1), grado(Z,Y,G2),G is G1+G2. 
padre(a,b).
padre(b,c).
padre(c,d).
madre(d,e).

