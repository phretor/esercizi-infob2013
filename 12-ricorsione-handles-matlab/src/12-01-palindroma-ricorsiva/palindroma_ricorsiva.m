function [res] = palindroma_ricorsiva(parola, passo)
    %
    % Passo e` una variabile di supporto, per chiarire il concetto di
    % ricorsione; in particolare indica il passo ricorsivo corrente (e.g.,
    % primo, secondo, terzo).
    %
    % Caso base: stringhe di un carattere (o vuote sono palindrome)
    %
    if length(parola) < 2
        res = 1;
    else
        % controllo se gli estremi sono uguali
        %
        if parola(1) == parola(end)
            % Passo ricorsione: richiama palindroma_ricorsiva
            % su parola(2, end-1)
            %
            res = palindroma_ricorsiva(parola(2:end-1), passo+1);
            %
            % da qui, l'esecuzione e` bloccata fino a che la funzione
            % precedente non ritorna
        else
            res = 0;
        end
    end

    % -----------------------------------------------------------
    %    da qui in poi il codice non fa parte della soluzione
    % -----------------------------------------------------------
    for ii = 1:passo
        fprintf('\t');
    end
    fprintf('|--> palindroma_ricorsiva(%s, %d)\n', parola, passo);
    % -----------------------------------------------------------
%fine
