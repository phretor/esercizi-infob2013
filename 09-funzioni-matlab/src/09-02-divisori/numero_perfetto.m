function [perfetto, abbondante] = numero_perfetto(n)

    % calcolo la somma dei divisori (escluso il numero stesso)
    %
    somma = somma_divisori(n);

    % calcolo se la somma dei divisori coincide col numero stesso
    %
    perfetto = (n == somma);

    % calcolo se il numero e` maggiore della somma dei suoi divisori (abbondante)
    %
    abbondante = n > somma;

    % alla fine dell'esecuzione di questa funzione, le variabili 'perfetto' e
    % 'abbondante' saranno disponibili al programma chiamante.

%fine funzione numero_perfetto
