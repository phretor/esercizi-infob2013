function somma = somma_divisori(n)
    % soluzione alla C, non raccomandata
    %
    somma = 0;

    for d = 1:n/2
        if (~mod(n, d)) % mod(n, d) == 0
            somma = somma + d;
        end
    end

    % soluzione alla MATLAB
    %
    divisori = 1:n/2;
    resti = mod(n, divisori);
    divisori_interi = divisori(resti == 0);
    somma = sum(divisori);

    % soluzione compatta
    %
    somma = sum(divisori(mod(n, divisori) == 0));
% fine funzione somma_divisori
