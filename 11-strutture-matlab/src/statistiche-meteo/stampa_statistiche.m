function stampa_statistiche(dati_selezionati, city, tipo, minimo, medio, massimo)
    fprintf('Statistiche della misura %d in citta` %d\n\n', tipo, city);

    for r = dati_selezionati
        fprintf('%d/%d/%d %f\n', r.giorno, r.mese, r.anno, r.valore);
    end

    fprintf('\nMin: %f, med: %f, max: %f\n', minimo, medio, massimo);
end
