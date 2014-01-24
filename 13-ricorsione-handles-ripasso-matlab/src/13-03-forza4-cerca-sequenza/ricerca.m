function [stop colore r c dir] = ricerca(M)
    % inizializzazione
    stop = 0;
    r = -1;
    c = -1;
    dir = '';

    % per ogni colore
    for colore = ['r' 'b']
        % ricerca in orizzontale
        [r c] = ricerca_seq_orizz(M, colore);
        if r != -1 && c != -1 % r != 0 && c != 0
            dir = 'o';
            stop = 1;
            return;
        end

        % ricerca in verticale
        [r c] = ricerca_seq_vert(M, colore);
        if r != -1 && c != -1
            dir = 'v';
            stop = 1;
            return;
        end
    end
% fine
