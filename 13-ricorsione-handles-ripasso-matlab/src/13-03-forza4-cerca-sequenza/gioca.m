function [M ok] = gioca(M, colore, colonna)
    [R C] = size(M);
    ok = 0;

    % giochiamo solo se la colonna inserita e` valida
    %
    if colonna <= C && colonna > 0
        % cerchiamo la cima della colonna (cima = prima posizione libera)
        top = cerca_top(M(:, colonna));

        % se la cima della colonna lascia spazio a giocate
        % proseguiamo con la giocata
        if top > 0
                ok = 1;
                M(top, colonna) = colore;
                return;
            end
        end
    end

    % altrimenti ok restera` a zero (falso, giocata non effettuata)
% fine
