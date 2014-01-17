function ok = controllo_funzione_vett(func, X, Y)
    % assumere che X e Y abbiano la stessa lunghezza
    %
    % si noti che "func" e` gia` un function handle, quindi non devo passarlo
    % con l'operatore "@".
    %
    ok = 1;

    for ii = 1:length(X)
        if ~controllo_funzione(func, X(ii), Y(ii))
            ok = 0;
            return;
        end
    end
end
