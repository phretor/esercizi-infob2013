%%
% Scrivere una funzione "filtra" che riceva come parametri una funzione "cond"
% (function handle) e un vettore strutturato:
%
%    vett(1).x       intero o float
%    vett(1).y       intero o float
%
%    vett(2).x
%    vett(2).y
%
%     . . .
%
%    vett(N).x
%    vett(N).y
%
% La funzione "cond" riceve in ingresso due parametri, "a" e "b", e ritorna 1
% (true) se "a" e` maggiore di "b", altrimenti ritorna 0 (false).
%
% La funzione di ordine superiore "filtra" dovra` utilizzare la funzione
% "cond", ricevendone in ingresso un suo function handle, al fine di filtrare
% il vettore ricevuto in ingresso, costruendo un vettore che contenga solo
% quegli elementi che hanno il campo "x" maggiore del campo "y".
%
% Implementare le seguenti due funzioni:
%
%     * ris = cond(a, b)
%     * vett_modificato = filtra(condizione, vett)
%
% dove "condizione" e` un function handle (nel nostro caso, quando invocheremo
% "filtra", passeremo un handle alla funzione "cond").
%
% Sperimentare con altre funzioni al posto di "cond". Ad esempio "minore di",
% oppure "uguale a", oppure "uno la soma dell'altro", etc.
%

% riempimento del vettore in modo casuale
%
for ii = 1:9
    vett(ii).x = rand();
    vett(ii).y = rand();
end

% stampa del vettore
%
vett

% filtraggio e stampa del vettore ottenuto - si noti che @cond viene passato
% come function handle.
%
vett_modificato = filtra(@cond, vett);

vett_modificato

