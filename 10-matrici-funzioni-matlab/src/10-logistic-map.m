% La logistic map è una sequenza di numeri reali x(0), x(1), x(2), ..., tali
% che, per ogni numero intero naturale n, si ha che:
%
%    x(n+1) =r * x(n) * (1-x(n))
%
% dove 0 < x(0) < 1 e r > 0 è un numero reale. Per esempio, prendendo x(0) =
% 0.2 e r = 3.2, i primi quattro numeri della sequenza sono:
%
%   0.2000 0.5120 0.7995 0.5129
%
% Scrivere la funzione con la seguente intestazione:
%
%   function [x, rip] = logisticMap(x0, r, lun)
%
% che, ricevendo il primo valore x0 della sequenza, il coefficiente r, e un
% valore lun rappresentante la possibile lunghezza di sequenza, calcola in
% successione gli elementi della logistic map, fino a un numero massimo di lun
% elementi, e li inserisce nel vettore x.
%
%
% Durante la generazione della sequenza, se prima di raggiungere il numero di
% elementi lun si ottiene un elemento già generato in precedenza, allora il
% vettore x viene riempito con gli elementi fino a quello ripetuto (incluso) e
% il parametro rip viene posto a 1. Se nessun elemento si ripete, il vettore x
% viene riempito con i primi lun elementi della sequenza, e il parametro rip
% viene posto a 0.
%
% Per esempio, con la chiamata:
%
%   [a b] = logisticMap(0.3, 2, 10)
%
% si ottiene:
%
%   a = 0.3000 0.4200 0.4872 0.4997
%   b = 1
%
% mentre con la chiamata:
%
%   [a b] = logisticMap(0.3, 1.3, 8)
%
% si ottiene:
%
%   a = 0.3000 0.2730 0.2580 0.2489 0.2430 0.2391 0.2365 0.2348
%   b = 0
%
function [x, rip] = logisticMap(x0, r, lun)
    x = x0;

    % continua mentre la lunghezza non e` stata raggiunta
    while length(x) < lun
        % l'elemento successivo al corrente e` determinato dalla formula
        %
        % con x(length(x)) prendiamo l'ultimo elemento x(n)
        % ovvero x(end), se preferite
        x1 = r * x(length(x)) * (1 - x(length(x)));

        % inserisco l'elemento
        %
        % identico a x = [x, x1];
        x(length(x) + 1) = x1;

        % controllo se gia` generato
        if any(x == x1)
            % riporto a 1
            rip = 1;

            % ritorno immediatamente
            return;
        end
    end

    % riporto a zero in tutti gli altri casi
    rip = 0;
end
