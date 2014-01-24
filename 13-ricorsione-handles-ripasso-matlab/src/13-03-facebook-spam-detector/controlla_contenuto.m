function buono = controlla_contenuto(testo, messaggi)
    % calcolo valore atteso su tutti i messaggi
    Fm = valore_atteso(messaggi); %[Ml Vl Mv Vv Mc Vc]

    % caratteristiche del testo da esaminare
    [l v c] = estrai_caratteristiche(testo);
    F = [l v c]

    % estremi inferiori
    int_inf = Fm(1:2:5) - sqrt(2) .* Fm(2:2:6)

    % estremi superiori
    int_sup = Fm(1:2:5) + sqrt(2) .* Fm(2:2:6)

    % confronto tutte le caratteristiche con l'intervallo cosi` costruito
    buono = 1;
    for ii = 1:3
       if int_inf(ii) > F(ii) || F(ii) > int_sup(ii)
           buono = 0;
           return;
       end
    end
% fine
