function r = sqrt2(z, err)
    n = 0;
    err_temp = inf;                     % errore inizialmente infinito

    % cerco n tale che err_temp <= err
    while err_temp > err                % condizione negata
        n = n + 1;
        [r err_temp] = sqrt1(z, n);
    end
end
