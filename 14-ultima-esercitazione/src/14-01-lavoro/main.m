%%
%
% In un ufficio si tiene traccia del numero di ore di lavoro effettuate. Il
% numero di ore giornaliero è memorizzato in un file ascii 'ore.txt' che
% contiene una sola serie di dati, una matrice di dimensioni [365 A] dove A
% indica il numero di anni, non noto a priori.
%
% Si richiede di scrivere una funzione 'analisi' che, data la matrice del punto
% precedente, calcoli e restituisca per ogni anno la media delle ore lavorate
% nei due anni precedenti negli stessi giorni, ottenendo quindi una matrice
% [365 A-2], visto che per i primi due anni i valori degli anni precedenti non
% sono disponibili.  Per lo stesso anno, la funzione dovrà calcolare e
% restituire in una matrice di dimensioni [365 A-2] lo scostamento dalla media,
% ossia quanto si lavora, ogni giorno, rispetto alla media giornaliera dei due
% anni precedenti.
%
% Si richiede di implementare la funzione 'analisi' e di fornire un esempio di
% 'main' che svolga le seguenti operazioni.
%
%    * leggere i dati dal file 'ore.txt' e scriverli nella variabile 'lavoro'
%
%    * calcolare la matrice [365 A-2] sopra descritta
%
%    * visualizzare, sullo stesso grafico, per ogni giorno del terzo anno:
%       - il numero di ore lavorate
%       - il numero medio di ore lavorate nei primi due anni
%       - evidenziare (con dei pallini sulla linea del numero di ore lavorate)
%       i giorni in cui l'ufficio ha lavorato di piu` della media dei due anni
%       precedenti
%
%    * salvare su un file MATLAB 'analisi.mat' le due matrici [365 A-2] calcolate
%    ai punti precedenti
%
%%

% questo comando serve solo per Octave su Mac OS X
setenv GNUTERM 'x11';

% leggo la matrice
lavoro = load('ore.txt', '-ascii');

% le dimensioni sono [365 anni]
[giorni anni] = size(lavoro);

% processo la matrice con la funzione
[M R] = analisi(lavoro);

% residuo terzo anno (rispetto ai due precedenti)
residuo = R(:,1);
terzo_anno = lavoro(:,3);

% giorni in cui si e` lavorato piu` della media
over_idx = find(residuo > 0);

% valori al di sopra della media
over = terzo_anno(over_idx);

% stampa ore lavoro terzo anno
plot(1:giorni, terzo_anno);

hold on;

% stampa ore lavoro medie
plot(1:giorni, M(:,1), 'r');

% stampa pallini sulla linea del terzo anno, nei punti dove le ore sono oltre
% la media
plot(over_idx, over, 'o');

hold off;

% salvataggio di M e R
save('analisi.mat', 'M', 'R');

