function r = misteriosa(array)
    k = size(array, 2);                     % come se fosse length(array)
                                            % assumendo vettori riga

    if (k == 1)                             % caso base 1: se ha una sola cella
        r = 1;                              % ritorno 1
    elseif (k == 2)                         % caso base 2: se invece ha due celle
        if (array(1) + array(2) == 10)      % se la prima e la seconda cella == 10
            r = 1;                          % ritorna 1
      else
          r = 0;                            % altrimenti ritorna 0
      end
    else                                    % se invece ha > 2 celle
      if (array(1) + array(k) == 10)        % se la prima + ultima cella == 10
          r = misteriosa(array(2:k-1));     % passo ricorsivo sul vettore 2:k-1
      else
          r = 0;                            % ritorna 0
      end
    end
end

% controlla se un vettore di interi, scansito dall'esterno verso l'interno ha
% tutte celle opposte che sommano a 10: se sì ritorna 1, altrimenti 0.

misteriosa([1 9 3 2 8 7 1 9])               % ci aspettiamo 1
misteriosa([1 9 3 2 8 7 2])                 % ci aspettiamo 0
misteriosa([1])                             % 1
misteriosa([1 2])                           % 0
