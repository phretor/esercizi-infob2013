%
% Un supermercateo ha memorizzato un archivio di scontrini in un file
% "scontrini.mat" che contiene l'array strutturato chiamato "scontrini", con i
% seguenti campi per ogni elemento:
%
%     * id_cliente: intero positivo > 0 che identifica univocamente un cliente
%     * totale: totale della spesa in euro
%     * punti: punti extra accumulati in quella spesa
%
% quindi ogni elemento rappresenta una spesa di un certo cliente.
%
% Oltre ai punti extra, per ogni spesa il cliente ha diritto anche ad un punto
% premio per ogni 10 euro spesi.
%
% Scrivere uno script MATLAB che legge il file "scontrini.mat" e costruisce
% un opportuno array strutturato di nome "saldo" contenente, per ciascun
% cliente, i seguenti campi:
%
%     * id_cliente: intero positivo > 0 che identifica univocamente un cliente
%     * punti: punti totali dovuti a tutti i punti extra e tutte le spese
%
% Si noti che lo stessso cliente può comparire più volte nell'array "scontrini".
%
% Infine si costruisca un array "statistiche" di tre elementi, ognuno indicante
% il numero di clienti che possiedono:
%
%     * meno di 1000 punti
%     * più di 1000 ma meno di 5000 punti
%     * più di 5000 punti
%

% carico file in formato MATLAB
load('scontrini.mat');

% preparo un array strutturato "saldo"
saldo.id_cliente = -1;
saldo.punti = 0;

% contatore dei clienti (senza ripetizioni)
n = 1;

% per ogni scontrino
for ii = 1:length(scontrini)
    % variabili temporanee
    id_cliente = scontrini(ii).id_cliente;
    punti = scontrini(ii).punti;
    totale = scontrini(ii).totale;

    % se non ho già incontrato questo cliente lo aggiungo in posizione n
    if ~any([saldo.id_cliente] == id_cliente)
        saldo(n).id_cliente = id_cliente;

        % cerco le posizioni di tutti gli scontrini del cliente
        dd = find([scontrini.id_cliente] == id_cliente);

        % calcolo punti extra per quel cliente
        punti_extra = sum([scontrini(dd).punti]);

        % calcolo i punti derivanti dalla spesa
        %
        % assumiamo che i punti siano calcolati sulla spesa singola
        punti_spesa = sum(floor([scontrini(dd).totale]/10));

        % se invece volessimo contare i punti totali e poi arrotondare
        % si dovrebbe fare floor(sum(...))/10

        % somma
        saldo(n).punti = punti_extra + punti_spesa;

        % trattandosi di un cliente appena aggiunto devo incrementare
        % il contatore dei clienti unici
        n = n + 1;
    end
end

% calcolo statistiche
statistiche = [
    sum([saldo.punti] < 1000),
    sum([saldo.punti] >= 1000 & [saldo.punti] < 5000),
    sum([saldo.punti] >= 5000)
]
