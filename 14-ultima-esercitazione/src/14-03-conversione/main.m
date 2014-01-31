%%
%
% Dato un numero reale positivo si richiede di scrivere un algoritmo iterativo
% per tradurlo in notazione scientifica, ovvero in un numero reale e una
% potenza di 10. Per esempio:
%
%    12345.1 diventa 1.23451 e 10^4
%
% TODO: implementare lo stesso algoritmo in una funzione ricorsiva.
%
% TODO: implementare anche il caso in cui il numero sia < 1
%%

n = input('Scrivere un numero reale maggiore di 1 = ');
c = 0;
N = n;

% contiamo le decine
while N >= 10
    N = N/10;   % dividiamo il numero per 10
    c = c + 1;
end

fprintf('%f = %f * 10^%d\n', n, N, c);

