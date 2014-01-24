function S = maiuscola_iterativa(s)
    for ii = 1:length(s)
        S(ii) = char(s(ii) - 32);

        % la linea successiva non fa parte della soluzione
        fprintf('passo iterativo = %d: %c -> %c\n', ii, s(ii), S(ii));

    end
end

% Nota:
%
% anche se in questo esercizio era richiesta esplicitamente una versione
% iterativa, sappiate che è possibile realizzare la stessa operazione
% con una sola chiamata a char(s-32), dove "s" è la stringa.
