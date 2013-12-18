function [an] = sono_anagrammi(h1, h2)

    % assumo che gli istogrammi abbiano la stessa dimensione

    % soluzione alla C
    an = 1; %vero
    ii = 1;

    while an && ii < length(h1)
        an = h1(ii) == h2(ii);
        ii = ii + 1;
    end

    % soluzione alla MATLAB
    an = all(h1 == h2);
    % an = ~any(h1 ~= h2);

% fine funzione sono_anagrammi
