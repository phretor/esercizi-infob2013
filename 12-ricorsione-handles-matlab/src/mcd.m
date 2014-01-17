% Esempio visto a lezione
%
% Calcolo dell'MCD con algoritmo di Euclide
%
%     * se m = n, MCD(m,n) = m            (caso base)
%     * se m > n, MCD(m,n) = MCD(m-n, n)  (ricorsione)
%     * se m < n, MCD(m,n) = MCD(m, n-m)  (ricorsione)
%

function [M] = MCDeuclidRic(m, n, passo)
    % la variabile "passo" non e` parte della soluzione.

    if m == n
        M = m;
    else
        if m > n
            M = MCDeuclidRic(m-n, n, passo+1);
        else
            M = MCDeuclidRic(m, n-m, passo+1);
        end
    end

    % -----------------------------------------------------------
    % Da qui in poi il codice non fa parte della soluzione
    % -----------------------------------------------------------
    %
    % Questo codice verra` eseguito solo quando si arrivera` al caso base,
    % quindi quando "passo" assumera` come valore il numero di passi di
    % ricorsione.
    %

    % stampo "passi volte" il carattere TAB per "visualizzare" a che punto
    % della ricorsione mi trovo
    for ii = 1:passo
        fprintf('\t');
    end

    % stampo l'invocazione corrente
    fprintf('|--> MCDeuclidRic: m = %d, n = %d, passo = %d\n', m, n, passo);
    % -----------------------------------------------------------
end

mcd = MCDeuclidRic(32, 18, 0);

disp(num2str(mcd));
