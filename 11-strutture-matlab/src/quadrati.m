% Sia data una struttura dati che rappresenta un array di punti nel piano
% cartesiano, ove ogni cella dell'array contiene due campi "x" e "y" interi
% tra 3 e 8, ad esempio:
%
%     punti(1).x = 7
%     punti(1).y = 3
%
%     punti(2).x = 6
%     punti(2).y = 4
%
% Si ipotizzi che la struttura sia già riempita con valori validi.
%
% Si vuole aggiungere, ad ogni cella, un campo chiamato "matrice",
% costruita nel seguente modo:
%
%     - dimensioni pari a R*10 x C*10
%     - assuma valore 1
%           - nelle righe comprese tra (x-1)*R-1 e x*R+1
%           - nelle colonne comprese tra (y-1)*C-1 e y*C+1
%     - assuma valore 0 altrove
%
% Si assuma che R e C siano già definiti. Nell'esempio di cui sopra
% il risultato è (con R = 1 e C = 1):
%
%     > punti(1).matrice
%     > ans =
%
%       0   0   0   0   0   0   0   0   0   0
%       0   0   0   0   0   0   0   0   0   0
%       0   0   0   0   0   0   0   0   0   0
%       0   0   0   0   0   0   0   0   0   0
%       1   1   1   1   0   0   0   0   0   0
%       1   1   1   1   0   0   0   0   0   0
%       1   1   1   1   0   0   0   0   0   0
%       1   1   1   1   0   0   0   0   0   0
%       0   0   0   0   0   0   0   0   0   0
%       0   0   0   0   0   0   0   0   0   0
%
%     > punti(2).matrice
%     ans =
%
%        0   0   0   0   0   0   0   0   0   0
%        0   0   0   0   0   0   0   0   0   0
%        0   0   0   0   0   0   0   0   0   0
%        0   1   1   1   1   0   0   0   0   0
%        0   1   1   1   1   0   0   0   0   0
%        0   1   1   1   1   0   0   0   0   0
%        0   1   1   1   1   0   0   0   0   0
%        0   0   0   0   0   0   0   0   0   0
%        0   0   0   0   0   0   0   0   0   0
%        0   0   0   0   0   0   0   0   0   0
%
clear;

% inizializzo a valori casuali l'array di punti (non richiesto)
for ii = [1:1:10]
    punti(ii).x = randi([3,8]);
    punti(ii).y = randi([3,8]);
end

% scegliamo dei valori per R e C, ma potremmo farli inserire dall'utente
R = 1;
C = 1;

% --- la soluzione inizia da qui

% per ogni punto
for ii = [1:1:length(punti)]

    % inizializzo a zero tutta la matrice
    punti(ii).matrice = zeros([R*10, C*10]);

    % definisco gli estremi delle porzioni di interesse
    r_start = (punti(ii).x-1)*R-1;   % prima riga
    r_end = punti(ii).x*R+1;         % ultima riga

    c_start = (punti(ii).y-1)*C-1;   % prima colonna
    c_end = punti(ii).y*C+1;         % ultima colonna

    % seleziono la porzione con gli indici definiti e assegno ad 1
    punti(ii).matrice(r_start:r_end, c_start:c_end) = 1;

    punti(ii).matrice
    % senza punto e virgola, per vedere il risultato
end
