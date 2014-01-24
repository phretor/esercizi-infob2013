function Fm = valore_atteso(messaggi)
    N = length(messaggi);

    % accumulo i valori in una matrice di N righe x 3 colonne
    % (una riga per messaggio, una colonna per ogni valore)
    M = zeros([N 3]);

    % per ogni messaggio
    for ii = 1:N
        msg = messaggi(ii).testo;
        [l v c] = estrai_caratteristiche(msg);
        M(ii, :) = [l v c];
    end

    %
    % metto in colonna i valori aggregati
    %
    % [Ml Vl Mv Vv Mc Vc]
    %  1  2  3  4  5  6
    %
    % mean(M) ritorna un vettore riga di 3 elementi (idem per sqrt(var(M)))
    %

    Fm(1:2:5) = mean(M);      % posizioni dispari: media
    Fm(2:2:6) = sqrt(var(M)); % posizioni pari: deviazione standard
% fine
