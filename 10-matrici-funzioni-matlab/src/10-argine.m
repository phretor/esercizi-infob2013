% scrivere una funzione che riceva in ingresso
%
%   * un vettore `profiloArgine` che contiene le altezze dell’argine, in metri
%     rispetto al fondo del letto del fiume, in vari punti del corso del fiume a
%     distanze crescenti
%
%   * l’altezza attuale del livello dell'acqua del fiume in metri rispetto al
%     fondo del letto del fiume
%
%   * i millimetri di incremento totale di altezza del fiume in base alla
%     pioggia prevista per la giornata.
%
% a) Si definisca l’intestazione della funzione calcolaRischio, spiegando il
% significato dei suoi parametri in ingresso e dei sui valori di ritorno.
%
% b) Si scriva il codice della funzione calcolaRischio.
%
% c) richiamare la funzione calcolaRischio sviluppata al punto precedente;
%
% d) visualizza sullo schermo un grafico che mostri:
%    i) l’andamento del profilo dell’argine
%    ii) il livello attuale del fiume
%    iii) i punti dell’argine a rischio di esondazione
%
% e) genera e visualizza a video una tabella contenente i soli punti dell’argine a rischio di esondazione
%    * prima colonna: distanza del punto a rischio in metri dalla foce
%    * seconda colonna: altezza dell’argine in quel punto
%    * terza colonna: minuti che passeranno tra il rilevamento e l’esondazione in quel punto
%
%    minuti = (profiloArgine - altezzaFiume) * 1000 / (mmIncrementoPrevisto / 24 * 60)]
%

function puntiARischio = calcolaRischio(profiloArgine, altezzaFiume, mmIncrementoPrevisto)
%
% input:
%   profiloArgine: vettore contenente l’altezza dei punti dell’argine
%   altezzaFiume: scalare contenente il valore dell’altezza attuale del fiume
%   mmIncrementoPrevisto: scalare contenente il valore dell’incremento di altezza previsto del fiume
%
% output:
%   vettore contenente i punti dell’argine a rischio di esondazione
%
    puntiARischio = find(profiloArgine <= altezzaFiume + (mmIncrementoPrevisto / 1000));
% fine funzione
end

% dati di esempio
profiloArgine = [10 10 10 9 8 8 7 10 11 14 20 12 3];

nCampioni = length(profiloArgine);  % si supponga che il profilo sia già creato

% leggiamo l'altezza
altezzaFiume = input('Altezza attuale del fiume in metri: ');

% dominio (in metri)
x = 1:nCampioni;

% costante, altezza del fiume
yAltezza = zeros(1, nCampioni);

% assegno il valore dell'altezza (supponiamo letto da tastiera)
yAltezza(:) = altezzaFiume;

% plot del profilo dell'argine
plot(x, profiloArgine);
hold on

% plot dell'atezza (costante)
plot(x, yAltezza);

% plot dei punti a richio convertendo i mm in metri
plot(puntiARischio, altezzaFiume + mmIncrementoPrevisto /1000, '*');

hold off

% la tabella avrà [metri, profiloArgine, minuti]

% metri
metri = x;

% minuti
minuti = 1000 * 24 * 60 * abs(profiloArgine - altezzaFiume) / (mmIncrementoPrevisto);

% creo la tabella
tabella = [metri', profiloArgine, minuti];

% seleziono solo i punti a rischio (tutte le colonne)
tabella = tabella(puntiARischio, :);

% visualizzo
disp(tabella);

