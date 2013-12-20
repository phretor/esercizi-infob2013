function [riga, col, dir] = cerca_sequenza(matrice, seq)
    % non trovato
    riga = 0;
    col = 0;
    dir = 'n';

    % ricerca orizzontale
    [r, c] = cerca_inizio_orizzontale(matrice, seq);
    if r ~= 0
        riga = r;
        col = c;
        dir = 'o';
        return;
    end

    % ricerca verticale
    [r, c] = cerca_inizio_verticale(matrice, seq);
    if r ~= 0
        riga = r;
        col = c;
        dir = 'v';
        return;
    end
% fine
