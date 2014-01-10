% Esercizio TdE 17/09/2012
%
% Si scrivere in MATLAB una funzione per analizzare i codici IBAN dei conti
% correnti. Un codice IBAN è una sequenza di 27 caratteri anfanumerici così
% composta:
%
%   2 caratteri maiuscoli (sigla della nazione)
%   2 cifre (CIN Europeo)
%   1 carattere maiuscolo (CIN italiano)
%   5 cifre (ABI)
%   5 cifre (CAB)
%   12 cifre (numero di conto corrente)
%
% Si scrivano prima le seguenti tre funzioni:
%
%   - remove_spaces, che prende in ingresso str_in e restituisce str_out
%     contenente tutti i caratteri di str_in tranne gli spazi.
%
%   - all_upper, che prende in ingresso una stringa e restituisce 1
%     solo se la stringa contiene soltanto caratteri maiuscoli, 0 altrimenti.
%
%   - all_digit, che prende in ingresso una stringa e restituisce 1
%     solo se la stringa contiene solo caratteri corrispondenti a cifre,
%     0 altrimenti.
%
% Si usino poi tali funzioni per scrivere la funzione check_iban che
% richiede all'utente l'inserimento di un codice IBAN e restituisce 1
% solo se, una volta tolti gli spazi dalla stringa IBAN, essa rispetta
% lo schema previsto.
%
function str_out = remove_spaces(str_in)
    str_out = str_in(str_in ~= ' ');
end

function r = all_alpha(str_in)
    r = all(str >= 'A' & str <= 'Z');
end

function r = all_digit(str_in)
    r = all(str_in >= '0' & str_in <= '9');
end

function r = check_iban()
    % inserimento IBAN
    iban = input('Inserire IBAN: ', 's');

    r = all_alpha(iban(1:2)) & all_digit(iban(3:4)) & all_alpha(iban(5)) & 
        all_digit(iban(6:end)) & length(iban) == 27;

    % in alternativa
    r = all_alpha(iban([1, 2, 5])) & all_digit(iban([3, 4, 6:end])) &
        length(iban) == 27;
end
