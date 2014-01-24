function [riga colonna] = ricerca_seq_orizz(M, colore)
    riga = -1;
    colonna = -1;

    [R C] = size(M);

    % per ogni riga
    for r = 1:R
        % per ogni colonna
        for c = 1:C-4+1
            % cerco sequenza di 4 "colore"
            pres = all(M(r, c:c+4-1) == [colore colore colore colore]);

            if pres
                riga = r;
                colonna = c;
                return;
            end
        end
    end
% fine
