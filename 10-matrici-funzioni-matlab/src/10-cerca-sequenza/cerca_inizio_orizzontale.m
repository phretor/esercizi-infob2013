function [riga, col] = cerca_inizio_orizzontale(matrice, seq)
    [R, C] = size(matrice);
    len = length(seq);

    for r = 1:R % per ogni riga
        for c = 1:C-len+1 % per ogni colonna (tenendo conto della lunghezza della sequenza)
            % cerca la sequenza orizzontalmente
            pres = verifica_orizzontale_da_posizione(matrice, seq, r, c);

            % se trovata, salva riga e colonna, poi ritorna
            if pres
                riga = r;
                col = c;
                return;
            end
        end
    end
% find

