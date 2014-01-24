function r = cerca_top(C)
    r = 0;

    % scansione dal fondo
    for ii = length(C):-1:1
        if C(ii) == 'o'
            r = ii;
            return;
        end
    end
% fine
