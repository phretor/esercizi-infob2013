% Scrivere un programma che legga da file ascii una matrice cosi` organizzata.
% Ogni riga contiene, nell'ordine:
%
%   * codice citta` (intero positivo)
%   * giorno (intero positivo)
%   * mese (intero positivo)
%   * anno (intero positivo)
%   * valore (intero)
%
% Ad esempio:
%
%   52 4 12 2012 10
%
% Dopo aver acquisito i dati, il programma dovra` chiedere all'utente il codice
% di una citta` e un anno. A questo punto il programma cerchera` nell'archivio
% tutti i record riguardanti la citta` e l'anno richiesti. Stampera` poi a
% video i dati selezionati ed il relativo valore minimo, massimo e medio dei
% valori.
%
% acquisizione dati
%
dati = acquisizione_dati_meteo('dati.txt');

% richiesta dato da visualizzare
%
[city, anno] = interrogazione_archivio_meteo();

% ricerca dati e restituzione min, media, max
%
[dati_selezionati, minimo, medio, massimo] =
    calcolo_statistiche_meteo(dati, city, anno);

% stampa a video delle statistiche
%
stampa_statistiche(dati_selezionati, city, anno, minimo, massimo, medio);
