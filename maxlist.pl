maxlist([],[]).
maxlist([X|Y],[N|T]):- max(X,N),maxlist(Y,T).

max([X],X):-!.
max([X|T],X):- max(T,N),X>=N,!.
max([X|T],N):- max(T,N).

max2([X],X):-!.
max2([X|T],X):- max2(T,N),X>=N,!.
%max2([X|T],N):- max2(T,N).