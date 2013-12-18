function [h] = calcola_istogramma(parola)

    h = zeros(1, 256);
    for c = parola
        h(c) = h(c) + 1;
    end

% fine funzione calcola_istogramma
