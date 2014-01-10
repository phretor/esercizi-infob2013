function stampa_statistiche(dati_selezionati, tipo)
    fprintf('Statistiche della misura %d in citta` %d\n\n', city, tipo);

    for r = dati_selezionati
        fprintf('%d/%d/%d %f\n', r.giorno, r.mese, r.anno, r.valore);
    end

    fprintf('\nMin: %f, med: %f, max: %f\n', minimo, medio, massimo);

% fine funzione stampa_statistiche
