%
% Ricordiamo la formula:
%
%                     1                   z
%             x(n) = --- * ( x(n-1) + -------- )
%                     2                x(n-1)

function [r err] = sqrt1(z, n)
    if n == 0                               % caso base
        err = inf;
        r = 1;
    elseif n > 0                            % ricorsione
        % calcolo di x(n-1)
        [r_temp err_temp] = sqrt1(z, n-1);  % passo ricorsivo

        % calcolo di x(n)
        r = (r_temp + z / r_temp)/2;        % x(n) = (x(n-1)+z/x(n-1))/2
                                            % dove x(n-1) = r_temp

        % calcolo di err(n)
        err = abs(r - r_temp);              % scostamento
    end
end
