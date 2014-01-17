function [dati_selezionati, minimo, medio, massimo] = calcolo_statistiche_meteo(dati, city, anno)

    [r c] = find(
        dati(:, 1) == city &
        dati(:, 3) == anno
    );

    minimo = min(dati(r, 4));
    massimo = max(dati(r, 4));
    medio = mean(dati(r, 4));
% fine funzione calcolo_statistiche_meteo
