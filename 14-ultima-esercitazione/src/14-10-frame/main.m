%
% Si richiede di progettare e scrivere una funzione che, dato N un numero
% intero positivo, senza fare uso di ricorsione e usando al massimo un ciclo
% (e.g., for, while) costruisca una matrice quadrata di dimensioni N*2 x N*2
% con il seguente schema:
%
% (esempio per N = 5)
%
%   1   1   1   1   1   1   1   1   1   1
%   1   2   2   2   2   2   2   2   2   1
%   1   2   3   3   3   3   3   3   2   1
%   1   2   3   4   4   4   4   3   2   1
%   1   2   3   4   5   5   4   3   2   1
%   1   2   3   4   5   5   4   3   2   1
%   1   2   3   4   4   4   4   3   2   1
%   1   2   3   3   3   3   3   3   2   1
%   1   2   2   2   2   2   2   2   2   1
%   1   1   1   1   1   1   1   1   1   1
%
%
% Punto facoltativo, ottenere la seguente matrice:
%
%  -1   1   1   1   1   1   1   1   1  -1
%   1  -1   2   2   2   2   2   2  -1   1
%   1   2  -1   3   3   3   3  -1   2   1
%   1   2   3  -1   4   4  -1   3   2   1
%   1   2   3   4  -1  -1   4   3   2   1
%   1   2   3   4  -1  -1   4   3   2   1
%   1   2   3  -1   4   4  -1   3   2   1
%   1   2  -1   3   3   3   3  -1   2   1
%   1  -1   2   2   2   2   2   2  -1   1
%  -1   1   1   1   1   1   1   1   1  -1
%

function [M] = frame(n)
    % raddoppio n
    n = 2 * n;

    % parto da una matrice di soli zeri
    M = zeros(n);

    % per ogni sottomatrice "centrata"
    for ii = 1:n
        % l'operatore += 1 equivale a z = z + 1;
        M(ii:n-ii+1, ii:n-ii+1) += 1;

        % alternativamente M(ii:n-ii+1, ii:n-ii+1) = M(ii:n-ii+1, ii:n-ii+1) + 1;
        % alternativamente M(ii:n-ii+1, ii:n-ii+1) = ii; e non serve inizializzare a zeros();

        % punto facoltativo, ritocco gli angoli
        M([ii, n-ii+1], [ii, n-ii+1]) = -1;
    end
end

frame(5)
