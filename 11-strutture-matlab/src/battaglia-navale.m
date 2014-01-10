% Esercizio TdE 17/07/2013
%
% Si consideri una versione semplificata della battaglia navale
% in cui le navi possono essere posizionate solo in orizzontale
% e ogni riga può contenere al massimo una nave.
%
% Il campo di gioco è rappresentato da una matrice quadrata 5x5
% in cui ogni cella può assumere solo i valori 0 o 1. Il valore 1
% indica la presenza di una nave.
%
% Ogni nave può essere lunga 1, 2, 3, 4 o 5 celle.
%
% Ad esempio:
%
campo = [
    0   1   1   0   0;
    1   1   1   1   1;
    0   0   0   0   0;
    0   0   0   0   0;
    0   1   1   1   1]
%
% Scrivere un programma che, ipotizzando di aver già acquisito una
% matrice che rappresenta il campo di gioco, visualizzi a video:
%
%   - per ogni riga che contiene una nave
%       - numero di riga
%       - lunghezza nave
%
%   - numero di navi total presenti
%   - lunghezza della nave più corta e quella della più lunga
%   - il numero di navi trovate per ogni lunghezza possibile
%

% soluzione alla MATLAB (da preferire)

% somma lungo la seconda dimensione (colonne)
somme_colonne = sum(campo, 2);

% seleziono le righe con navi
righe = find(somme_colonne > 0);

% conteggio delle navi totali
disp(['tot: ', num2str(length(righe))]);

disp(['riga lunghezza']);
% stampa informazioni su righe con nave (tabella)
[righe, somme_colonne(righe)]

disp(['min: ', num2str(min(somme_colonne(righe)))]);
disp(['max: ', num2str(max(somme_colonne(righe)))]);

% statistiche
for l = 1:5
    disp([num2str(l), ' ', num2str(sum(l == somme_colonne))]);
end


% soluzione alla C
[r,c] = size(campo);
tot = 0;
m = 0;
M = 0;
stat = zeros([1 5]);

% per ogni riga
for ii = 1:r
    % calcolo lunghezza nave
    len = sum(campo(ii,:));

    % se lunghezza maggiore di 0
    if len > 0

        % stampo
        disp(['Nave in riga ', num2str(ii), ' lunghezza ', num2str(len)]);

        % incremento contatore navi
        tot = tot + 1;

        % lunghezza minima da aggiornare?
        if (m == 0 | len < m)
            m = len;
        end

        % lunghezza massima da aggiornare?
        if (M == 0 | len > M)
            M = len;
        end

        % statistiche
        stat(len) = stat(len) + 1;
    end
end

disp(['tot: ', num2str(tot)]);
disp(['min: ', num2str(m)]);
disp(['max: ', num2str(M)]);

[[1:5]', stat']
