function [dati_selezionati, minimo, medio, massimo] =
    calcolo_statistiche_meteo(dati, city, tipo)

    indici = [dati.city] == city & [dati.tipo] == tipo;

    dati_selezionati = dati(indici);

    minimo = min([dati_selezionati.valore]);
    massimo = max([dati_selezionati.valore]);
    medio = mean([dati_selezionati.valore]);
% fine funzione calcolo_statistiche_meteo
