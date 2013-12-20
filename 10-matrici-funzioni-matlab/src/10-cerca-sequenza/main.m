% Esercizio 2 (TdE del 20/07/2009)
% ================================
%
% Una matrice contiene numeri interi. Si vuole progettare una funzione che,
% ricevendo la matrice e un array di numeri interi che rappresenta una
% sequenza, cerchi tale sequenza all'interno della matrice. La sequenza cercata
% può essere disposta, nella matrice, verticalmente dall'alto verso il basso od
% orizzontalmente, da sinistra verso destra. La funzione deve avere la seguente
% intestazione:
%
%     function [riga, col, dir] = cerca_sequenza(matrice, seq)
%
% se la sequenza è presente nella matrice allora `riga` e `col` indicano gli
% indici di riga e di colonna del suo primo elemento, mentre `dir` viene posto
% uguale al carattere 'v' se la sequenza è disposta verticalmente, 'o' se
% orizzontalmente (se la sequenza è presente ripetuta in più posizioni, i
% valori restituiti possono essere quelli relativi a una qualsiasi delle
% ripetizioni); se la sequenza non è presente, `riga` e `col` valgono entrambi
% 0 e dir vale 'n'.
%
% Per codificare la funzione in questione, si sviluppa prima la seguente
% funzione ausiliaria
%
%     function [pres] = verifica_orizzontale_da_posizione(matrice, seq, riga, col)
%
% che ricerca la sequenza nella matrice a partire da una posizione d’inizio
% precisa, in direzione orizzontale: riga e col sono il punto di inizio; il
% risultato pres vale 1 se la sequenza è presente, 0 altrimenti.
%
% Successivamente si utilizza tale funzione per codificare la seguente
%
%     function [riga, col] = cerca_inizio_orizzontale(matrice, seq)
%
% mentre la versione verticale puo` essere facilmente derivata dalla precedente
%
%     function [riga, col] = cerca_inizio_verticale(matrice, seq)
%
% Queste funzioni cercano la sequenza in tutta la matrice con disposizione
% orizzontale e verticale, restituendo in riga e col le coordinate del punto
% d’inizio, se la sequenza viene trovata, o il valore 0 altrimenti.
%

% creo una matrice per verificare l'algoritmo
M = zeros(5,7);

% creo una sequenza
seq = [1 2 3 4];

% inserisco la sequenza orizzontale (poi la cerchero`)
M(end, 2:5) = seq;

% inserisco una sequenza verticale (poi la cerchero`)
M(2:5, 1) = seq';

% visualizzo la matrice risultante
M

% visualizzo la sequenza da cercare
seq

% eseguo la ricerca orizzontale
[r, c] = cerca_inizio_orizzontale(M, seq);
if (r ~= 0)
    fprintf('Sequenza orizzontale trovata in (%d,%d)\n', r, c);
end

% eseguo la ricerca verticale
[r, c] = cerca_inizio_verticale(M, seq);
if (r ~= 0)
    fprintf('Sequenza verticale trovata in (%d,%d)\n', r, c);
end

% eseguo la ricerca
[r, c, dir] = cerca_sequenza(M, seq);

fprintf('\n');

if (dir == 'n')
    fprintf('Sequenza non trovata.\n');
else
    if (dir == 'o')
        fprintf('Sequenza orizzontale trovata in (%d,%d)\n', r, c);
    end

    if (dir == 'v')
        fprintf('Sequenza verticale trovata in (%d,%d)\n', r, c);
    end
end

