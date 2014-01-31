%%
%
% Una stanza è dotata di termostato per regolare la temperatura. Il programma
% giornaliero della temperatura è definito da un vettore di 24 numeri interi
% che indicano le temperature desiderate per ogni ora del giorno.
%
% Questi dati sono salvati in un file ascii 'programma.txt', che contiene una
% riga per ogni dato.
%
% Si vuole scrivere una funzione 'regolazione' che riceve in ingresso la misura
% della temperatura ambiente nella stanza, l'ora corrente del giorno (si
% supponga da 1 a 24) e il vettore del programma.
%
% La funzione 'regolazione' calcola la media delle temperature previste dal
% programma in un intorno di ampiezza 3 ore, centrato sull'ora corrente del
% giorno, e ritorna la media e la differenza di tale media rispetto alla
% temperatura ambiente. Ad esempio, per le ore 3:00 la media sarà calcolata tra
% il programma delle ore 2:00, delle 3:00 e delle 4:00. Per gli estremi, la
% media è calcolata considerando che le ore 24:00 sono seguite dall'1:00.
%
% Si richiede di implementare la funzione 'regolazione' e di fornire un
% esempio di 'main' che svolga le seguenti operazioni.
%
%   * leggere il file 'programma.txt' in una variabile temp
%
%   * leggere il file 'ambiente.txt' in una variabile tamb, analoga a temp, ma
%   con numeri reali
%
%   * calcolare, per ogni ora, la media e la regolazione di temperatura
%   necessaria, e memorizzare tale informazione in un vettore
%
%   * visualizzare, sullo stesso grafico, l'andamento di:
%
%        - temperatura ambiente come letta dal file
%        - programma di temperatura come letto dal file
%        - temperatura media come calcolata precedentemente
%        - regolazione come calcolata precedentemente
%        - evidenziare (con dei pallini sulla linea della temperatura ambiente)
%          i punti che richiedono regolazione positiva
%
%   * salvare su un file MATLAB 'regolazione.mat' un vettore strutturato, che
%     per ogni elemento abbia il campo 'ora', 'temperatura media', 'regolazione'
%
%%

% necessario solo per Octave su Mac OS X
setenv GNUTERM 'x11';

% carico programma e temperatura ambinte
temp = load('programma.txt');
tamb = load('ambiente.txt');

% per ogni ora
for ii = 1:24
    % ii è l'ora corrente
    % tamb(ii) è la temperatura ambiente all'ora ii
    % temp è la temperatura da programm

    [m d] = regolazione(tamb(ii), ii, temp);

    % m contiene la temperatura ambiente media delle tre ore centrate in ii
    % salvo in M() la media
    M(ii) = m;

    % d contiene la differenza tra media e temperatura programmata
    % salvo in R() la regolazione
    R(ii) = d;
end

% ricerca indici di R positivi (regolazione positiva)
idx = find(R > 0);

% stampa temperatura ambiente
plot(1:24, tamb);

hold on;

% stampa temperatura da programma
plot(1:24, temp, 'r');

% stampa media e regolazione
plot(1:24, M, 'g');
plot(1:24, zeros([24 1]), 'k'); % opzionale
plot(1:24, R, 'k');

% stampa pallini per evidenziare regolazione positiva
plot(idx, tamb(idx), 'o');

hold off;

% salvataggio
regolazione = [];
for ii = 1:24
    regolazione(ii).ora = ii;
    regolazione(ii).temperatura_media = M(ii);
    regolazione(ii).regolazione = R(ii);
end

% salvo in un file MATLAB
save('regolazione.mat', 'regolazione');

