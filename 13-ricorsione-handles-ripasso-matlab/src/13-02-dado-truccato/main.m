%%
%
% Implementare la funzione di ordine superiore "vrand" che riceve in ingresso
% un function handle e un numero reale tra 0 e 1. Non si sa nulla sul function
% handle, se non che va chiamato senza alcun argomento. Ad esempio: handle().
%
% "vrand" dovra` chiamare la funzione passata come handle. Se il numero
% ritornato da tale chiamata è maggiore del numero reale ricevuto come
% parametro, questo viene ritornato immediatamente.

% Se invece è inferiore, si dovra` continuare a chiamare la funzione finche`
% questa non restituirà un numero maggiore del reale passato.
%
% Esempio:
%
% vrand(@handle, 0.4)
% -> 0.532
%
% vrand(@handle, 0.9)
% -> 0.923
%
% Che funzione built-in passereste come handle?
%
% Utilizzare "vrand" per realizzare un dado a sei facce truccato, ossia
% chiamare 100 volte la "vrand" e salvare i valori così ottenuti in un vettore
% V.
%
% Realizzare poi altre 100 estrazioni usando la "rand" al posto della "vrand" e
% salvare tali valori in un vettore R.
%
% Infine, utilizzare plot() per visualizzare le estrazioni di R e V:
%   - su due grafici diversi
%   - poi, sullo stesso grafico con colori diversi.
%

for ii = 1:100
    V(ii) = ceil(6 * vrand(@rand, 0.5));
    R(ii) = ceil(6 * rand());
end

% solo per Octave su Mac OS X
setenv GNUTERM 'x11';

% plot su due grafici diversi
figure(1), plot(R);
figure(2), plot(V);

% plot sullo stesso grafico con colori diversi
figure(3), plot(R), hold on, plot(V, 'r');
