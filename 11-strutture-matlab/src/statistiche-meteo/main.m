% Scrivere un programma che chieda all'utente di inserire una serie di dati
% contenenti ognuno i seguenti attribut:
%
%   * citta` (char)
%   * giorno (intero positivo)
%   * mese (intero positivo)
%   * anno (intero positivo)
%   * tipo di misurazione (char)
%   * valore (reale)
%
% Ad esempio, l'utente potra` inserire:
%
%   M
%   04
%   12
%   2012
%   N
%   10.5.5.5.5
%
% Dopo aver acquisito una certa quantita` di dati, il programma dovra` chiedere
% all'utente il nome di una citta` e un tipo di misurazione. A questo punto il
% programma cerchera` nell'archivio tutti i record riguardanti la citta` e il
% tipo di misurazione richiesti. Stampera` poi a video i dati selezionati ed il
% relativo valore minimo, massimo e medio dei valori.
%
% NOTA
% ----
% Questo esercizio e` una variante dell'esercizio "6.29 Statistiche
% meteorologiche" del libro di testo "Introduzione alla programmazione in
% MATLAB" di "A. Campi, E. Di Nitto, D. Loiacono, A. Morzenti, P. Spoletini"

% acquisizione dati
%
dati = acquisizione_dati_meteo();

% richiesta dato da visualizzare
%
[city, tipo] = interrogazione_archivio_meteo();

% ricerca dati e restituzione min, media, max
%
[dati_selezionati, minimo, medio, massimo] = calcolo_statistiche_meteo(dati, city, tipo);

% stampa a video delle statistiche
%
stampa_statistiche(dati_selezionati, city, tipo);

