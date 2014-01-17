function [res] = palindroma_iterativa(parola)
    res = 1;

    for ii = 1:length(parola)/2
        % questa linea non fa parte della soluzione
        fprintf('passo iterativo = %d: %c =?= %c\n', ii, parola(ii), parola(end - ii + 1));

        if parola(ii) ~= parola(end - ii + 1)
            res = 0;
            return;
        end
    end
% fine




















