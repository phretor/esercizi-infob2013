function S = maiuscola_ricorsiva(s, passo)
    %
    % Passo è una variabile di supporto, per chiarire il concetto di
    % ricorsione; in particolare indica il passo ricorsivo corrente (e.g.,
    % primo, secondo, terzo).
    %
    % Caso base: stringa di un carattere
    if length(s) < 2
        % Nota:
        %
        % prende di fatto solo il caso length(s) == 1. Il caso length(s) == 0
        % non accade mai perché non viene mai passata una stringa vuota perché
        % non appena length(s) == 1 la ricorsione si ferma

        S = [char(s(1) - 32)];
        % return; % implicito, non serve ritornare esplicitamente
    else
        S = [char(s(1) - 32) maiuscola_ricorsiva(s(2:end), passo+1)];
    end

    % Alternativamente:
    % ----------------
    %
    % Caso base: stringa vuota
    % if ~length(s)
    %     S = [];
    % else
    %   ...idem...
    % end

    % -----------------------------------------------------------
    %    da qui in poi il codice non fa parte della soluzione
    % -----------------------------------------------------------
    for ii = 1:passo
        fprintf('  ');
    end
    fprintf('|--> maiuscola_ricorsiva(%s, %d)\n', s, passo);
    % -----------------------------------------------------------
% fine
