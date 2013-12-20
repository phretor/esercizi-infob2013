function [pres] = verifica_orizzontale_da_posizione(matrice, seq, riga, col)
    % calcolo la lunghezza della sequenza
    len = length(seq);

    % estraggo una porzione di matrice a partire da riga,colonna fino a
    % riga,colonna+len-1
    porzione = matrice(riga, col:col+len-1);

    % se la porzione coincide con la sequenza, la sequenza e` trovata
    pres = all(porzione == seq);
% fine

