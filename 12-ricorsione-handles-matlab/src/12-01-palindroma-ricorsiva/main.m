% Scrivere una funzione che verifichi iterativamente se una stringa è
% palindroma. Scrivere poi una funzione che implementi la stessa funzionalita`
% in modo ricorsivo.

% parola palindroma
R = 'abbAbba';

% parola non palindroma
P = 'abbiibaia';

fprintf('------------------------------------------------------------------\n');

% invocazione funzione iterativa
palindroma_iterativa(R);

fprintf('------------------------------------------------------------------\n');

palindroma_iterativa(P);

fprintf('------------------------------------------------------------------\n');

% invocazione funzione ricorsiva
palindroma_ricorsiva(R, 1);

fprintf('------------------------------------------------------------------\n');

palindroma_ricorsiva(P, 1);

fprintf('------------------------------------------------------------------\n');
