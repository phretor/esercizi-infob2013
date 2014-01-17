function stampa_statistiche(dati_selezionati, city, anno, minimo, massimo, medio)
    fprintf('Statistiche anno %d in citta` %d\n\n', anno, city);

    for r = dati_selezionati
        fprintf('%d/%d/%d %f\n', r.giorno, r.mese, r.anno, r.valore);
    end

    fprintf('\nMin: %f, med: %f, max: %f\n', minimo, medio, massimo);
end
