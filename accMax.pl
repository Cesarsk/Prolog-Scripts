   % Caso in cui il valore è effettivamente un max
   % così imposta accumulatore = max e poi reitera il procedimento con la coda
   accMax([H|T],A,Max)  :- 
         H  >  A, 
         accMax(T,H,Max). 
         
	 % Caso in cui il valore non è un max,
	 % reitera il procedimento con il resto della lista senza impostare l'accumulatore
   accMax([H|T],A,Max)  :- 
         H  =<  A, 
         accMax(T,A,Max). 

   % Il primo argomento è una lista, il secondo l'accumulatore ed il terzo il max
   accMax([],A,A).

   % Query di prova: accMax([1,2,3,4],0,Max)