%% Blocks placed on a table
%%

%% Block a seen in position 2,5
see(a, 2, 5).
see(d, 5, 5).
see(e, 5, 2).

% Block placed on top of another or on table
on(a, b).
on(b, c).
on(c, table).
on(d, table).
on(e, table).

% Se un blocco è sul tavolo allora la sua coordinata z è zero.
z(Blocco, 0) :-
    on(Blocco, table).

% L'altezza di un blocco la si può ricavare anche così: se esiste un altro blocco su cui il blocco di cui vogliamo calcolare l'altezza si trova,
% e se l'altezza di quest'altro blocco è una certa altezza e z + questa certa altezza + 1 allora z è l'altezza del blocco che stiamo cercando 
% Questo si chiama PREDICATO RICORSIVO. Perché ricorsivo? 
z(Blocco, Z) :-
    on(Blocco, AltroBlocco),
    z(AltroBlocco, Zaltro),
    Z is Zaltro + 1.

% Un blocco ha coordinate x e y se è visibile sullo stage
xy(B, X, Y) :-
    see(B, X, Y)

% Un blocco ha coordinate x e y se si trova su un altro blocco e se a coordinate x e y su quel dominio (coordinate del blocco sottostante)
xy(B, X, Y) :-
    on(B0, B),
    xy(B0, X, Y).