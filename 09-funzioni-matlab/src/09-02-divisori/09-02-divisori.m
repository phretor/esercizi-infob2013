% ----------------------------------------------------------------------------
% Scrivere un programma che:
%
%   1. acquisisca un numero da tastiera e continui a richiedere l'inserimento
%      finche` il numero inserito continua a non essere intero positivo
%
%   2. calcolare se il numero intero positivo acquisito e` perfetto, abbondante
%   o difettivo:
%
%        * Perfetto: numero i cui divisori positivi (escluso il numero stesso),
%        sommano al numero stesso.
%
%        * Abbondante: numero i cui divisori positivi (escluso il numero stesso),
%        sommano al numero stesso.
%
%        * Difettivo: se non e` perfetto e non e` abbondante.
%
%   3. se il numero non e` perfetto, controllare se e` abbondante o difettivo
%   e stampare un messaggio a video che lo dica.
%
%   4. inoltre, nel caso 3., richiedere anche un altro numero intero positivo,
%   b, e controllare se a e b sono amici:
%
%        * Amici: due numeri sono amici quando la somma dei divisori del primo
%        (escluso il numero stesso) coincide al secondo numero; e viceversa.
%
%
% TODO: Scrivere un programma che elenchi i primi k numeri abbondanti,
%       con k definito dall'utente.
%
% ----------------------------------------------------------------------------

% pulizia schermo e workspace
clc
clear

% inserimento di un numero positivo attraverso la chiamata della funzione
%
a = leggi_intero_positivo();

% a questo punto dell'esecuzione il numero inserito e` senz'altro positivo

% calcolo se il numero e` perfetto, abbondante o difettivo
%
[perfetto, abbondante] = numero_perfetto(a);

% se perfetto, allora stampo che e` perfetto e concludo
if (perfetto == 1)
    disp([num2str(a), ' e` perfetto']);
else % altrimenti
    % controllo se e` abbondante o difettivo
    %
    if (abbondante == 1)
        disp([num2str(a), ' e` abbondante']);
    else
        disp([num2str(a), ' e` difettivo']);
    end

    % acquisisco un altro numero, riusando la funzione
    %
    b = leggi_intero_positivo();

    % a e b sono amici?
    %
    amici = sono_amici(a, b);

    if (amici == 1)
        disp([num2str(a), ' e ', num2str(b), ' sono amici']);
    else
        disp([num2str(a), ' e ', num2str(b), ' NON sono amici']);
    end
end
