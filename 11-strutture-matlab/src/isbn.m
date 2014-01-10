% Esercizio TdE 02/09/2013
%
% Il codice ISBN è una sequenza di numeri di 13 cifre usata per
% catalogare i libri. La 13^ cifra è un numero di controllo e viene
% calcolato nel seguente modo:
%
%   - si motiplica ognuna per le prime 12 cifre per un peso definito
%     dalla posizione stessa.
%
% 1) si richiede di implementare in MATLAB una funzione "controllo" che
%    riceve in ingresso un vettore numerico contenente le prime 12 cifre
%    e ritorna la corrispondente 13^ cifra
%
% 2) si implementi poi una funzione "verifica" che riceve in ingresso
%    un vettore numerico contenente 13 cifre, ovvero un ISBN, e ritorna
%    1 se la cifra di controllo è corretta, 0 altrimenti.
%
function n = controllo(vettore)
    n = 10-mod(sum(1 * vettore(1:2:12)) + sum(3 * vettore(2:2:12)), 10);
end

function r = verifica(isbn)
    r = isbn(13) == controllo(isbn(1:12));
end
