p([1,2,3,4,5,6,7,8,9]).

is_list([]).
is_list([X|L])  :-  is_list(L).

genitore(aldo,andrea).
genitore(patrizia,andrea).
figlio(X, Y) :- genitore(X, Y).
