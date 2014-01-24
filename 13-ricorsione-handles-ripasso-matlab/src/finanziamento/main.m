%
% Il sig. Rossi ha ottenuto un finanziamento di 100000 euro. Ha scelto una
% formula con tasso fisso al 5 percento. Quindi ogni mese, per N anni, dovrà
% pagare una rata mensile. La rata mensile è composta da una quota capitale +
% una quota di interessi. La quota capitale è fissata in modo tale che la somma
% di tutte le quote capitali dia l'ammontare finanziato, mentre gli interessi
% sono calcolati in base al residuo del mese precedente. Al primo mese il
% residuo è il totale finanziato. Il tasso dato è annuo e va diviso per il
% numero di mesi.
%
% Implementare la seguente funzione (formula ammortamento all'italiana):
%
%     [rata residuo interessi] = calcola_amm(finanziamento, tasso, anni)
%
% che calcola il piano di ammortamento su un numero di anni indicato come
% parametro (ad esempio, anni = 3).
%
% Se ad esempio il finanziato è pari a 500 euro, con un tasso annuo del 12%
% si ottiene in 1 anno:
%
%     Rata       Residuo       Interessi
%     ----------------------------------
%     46.66667   458.33333     5.00000
%     46.25000   416.66667     4.58333
%     45.83333   375.00000     4.16667
%     45.41667   333.33333     3.75000
%     45.00000   291.66667     3.33333
%     44.58333   250.00000     2.91667
%     44.16667   208.33333     2.50000
%     43.75000   166.66667     2.08333
%     43.33333   125.00000     1.66667
%     42.91667    83.33333     1.25000
%     42.50000    41.66667     0.83333
%     42.08333     0.00000     0.41667
%
% E sommando le rate si ottiene un importo totale di 532.50 euro.
%
%
% Il sig. Bianchi ha ottenuto un finanziamento per un capitale di 100000 euro,
% ma con formula a tasso variabile. L'ammortamento è salvato in un array riga
% memorizzato in un file ascii "piano-ammortamento.txt" che contiene le sole
% rate.
%
% Implementare una funzione che confronta i due piani di ammortamento e
% restituisce in un array le differenze tra le singole rate negli stessi mesi.
% Specificare l'intestazione della funzione, il nome ed il significato di ogni
% parametro e le dimensioni.
%
% Il sig. Bianchi vorrebbe sapere quanto avrebbe risparmiato se avesse adottato
% l'opzione "salva rata", che la banca gli aveva proposto. Questa opzione fissa
% un tetto massimo per la rata mensile. Se una qualsiasi rata va al di sopra di
% tale tetto, il sig. Bianchi paga una rata pari al valore del tetto. In caso
% di rata inferiore, paga la rata prevista dal suo piano di ammortamento.
%
% Scrivere uno script che:
%
%     * calcola il piano di ammortamento del sig. Rossi usando la funzione
%       calcola_amm() su 10 anni a tasso 5 percento annuo
%
%     * carica da file il piano di ammortamento del sig. Bianchi
%
%     * stampa a video, in tre colonne:
%
%          - il piano di ammortamento del sig. Rossi
%          - il piano di ammortamento del sig. Bianchi
%          - la differenza, ad ogni mese, delle rate dei due piani
%
%     * calcolare chi, tra i due, ha ottenuto il finanziamento più conveniente
%
%     * calcolare, per il sig. Bianchi, quanto avrebbe risparmiato in totale
%       con l'opzione "salva rata" con un tetto pari a 1300 euro
%
%     * se il risparmio dovuto all'opzione "salva rata" è pari a zero, fissare
%     il tetto minimo necessario per far ottenere al sig. Bianchi un risparmio
%     maggiore di zero. Gli i decrementi sul tetto permessi sono pari a 10
%     euro.
%
%     * visualizzare in un singolo plot le rate del sig. Rossi, del sig. Bianchi
%     e del sig. Bianchi con opzione salva rata (con il tetto conveniente). Usare
%     linee continue di tre colori diversi.

function [rata residuo interessi] = calcola_amm(finanziamento, tasso, anni)
    % il tasso è da dividere per il numero di mesi in ogni anno, perché la rata
    % è mensile
    tasso = tasso/12/100;

    % la quota capitale è fissa ogni mese
    n_rate = anni*12;
    qc = finanziamento/(n_rate);

    % il capitale residuo è pari, ogni mese, al finanziamento meno k * qc, dove k è il numero del
    % mese corrente
    residuo(1:n_rate) = finanziamento - [1:n_rate] * qc;

    % gli interessi del primo mese sono basati sul finanziamento iniziale
    interessi(1) = finanziamento * tasso;

    % mentre per i seguenti 2:n_rate-1 si prende semplicemente il residuo e lo si moltiplica per il tasso
    interessi(2:n_rate) = residuo(1:n_rate-1) * tasso;

    % per la rata si somma quota capitale e interessi
    rata(1:n_rate) = qc + interessi(1:n_rate);
end

function [delta_amm] = differenza(a1, a2)
    % a1 e a2 sono array riga della medesima dimensione
    % delta_amm è puer un array riga della stessa dimensione di a1 e a2
    delta_amm = a1 - a2;
end

% calcolo piano ammortamento sig. Rossi
[r s i] = calcola_amm(100000, 5, 10);

L = length(r);

% caricamento piano sig. Bianchi
pa = load('piano-ammortamento.txt', '-ascii');

% calcolo differenza
d = differenza(r, pa);

% stampa in colonne
[r' pa' d'];

% quale conviene?
if sum(r) > sum(pa)
    fprintf('Il sig. Bianchi ha fatto un affare!\n');
elseif sum(r) < sum(pa)
    fprintf('Il sig. Rossi ha fatto un affare\n');
else
    fprintf('Entrambi hanno ottenuto un buon finanziamento\n');
end

% opzione tetto massimo
tetto = 1300;
pa_cap = pa;
pa_cap(pa_cap > tetto) = tetto;

if sum(pa) > sum(pa_cap)
    fprintf('Il tetto serve a far risparmiare %f\n', sum(pa) - sum(pa_cap));
else
    fprintf('Nessun risparmio');
end

% ricerca tetto minimo per risparmiare qualcosa
pa_cap = pa;
while sum(pa) <= sum(pa_cap)
    tetto = tetto - 10;
    pa_cap(pa_cap > tetto) = tetto;
end

fprintf('Tetto minimo per far risparmiare: %f\n', tetto);

% plot delle tre serie temporali
plot(1:L, r, 'r');
hold on
plot(1:L, pa, 'b');
plot(1:L, pa_cap, 'k');
hold off

% EOF
