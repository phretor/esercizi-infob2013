%%
% Scrivere un progamma che calcoli la sequenza di Fibonacci di lunghezza 100,
% poi richieda di inserire un numero e valuti se il numero è di Fibonacci.
% Altrimenti restituisce il numero di Fibonacci più vicino.
%
%
% La successione di Fibonacci è definita così:
%
% F(n) = F(n-1) + F(n-2) , n>1
% F(0) = 0
% F(1) = 1

% fare un programma che salva in un vettore i primi
% 100 numeri di fibonacci

N = 30;

F = [0 , 1];

% diverse soluzioni sono proposte

% ii = 3;
% while(ii <= N)
%     F(ii) = F(ii - 1) + F(ii - 2);
%     ii = ii + 1;
% end

for ii = [3 : 1: 100]
    F(ii) = F(ii - 1) + F(ii - 2);
end

% while(length(F) < N)
%     F = [F , F(end) + F(end - 1)];
% end

% figure(8) , plot(F)

% richiede un input all'utente da command line. Qualsiasi input "alla matlab" verrà associato a p
p = input(['inserire un numero']);

% guardo se un elemento in F coicide con p. Faccio la somma del vettore logico per vedere se c'è almeno un valore uguale
% a 1
if(sum(F == p) == 1)
    disp([num2str(p) ' è di fibonacci']);
else
    % prendo la sequenza dei numeri di Fibonacci maggiori di p
    mag_b = F >= p;
    mag = F(mag_b);

    % il più piccolo maggiorante ( -> candidato ad essere il più vicino a p), è
    % il primo elemento dei maggiornati
    M = mag(1);

    % prendo la sequenza dei numeri di Fibonacci minori di p
    minori_b = F < p;
    minori = F(minori_b);

    % il più grande minorante( -> candidato ad essere il più vicino a p), è il
    % l'ultmo elemento dei minoranti
    m = minori(end);

    % ho implicitamente assunto che le due sequenze sono ordinate in maniera
    % crescente

    % trovo tra M e m il più vicino, ovviamente posso assumere m < p < M
    if(M - p <  p - m)
        P = M;
    else
        P = m;
    end

    disp(['il numero fb + vc a ' , num2str(p) , ' è ' , num2str(P)])
end
