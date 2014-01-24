%%
%
% Implementare una funzione iterativa (e poi una sua versione ricorsiva) per
% tradurre i caratteri di una stringa da minuscoli a maiuscoli. Assumere che la
% funzione riceva in ingresso una stringa di caratteri minuscoli.
%
% La traduzione viene effettuata semplicemente sottraendo 32 al carattere da
% tradurre, e applicando char(). Ad esempio:
%
% > char('a'-32)
% ans = 'A'
%

s = 'ciaocomestai';

fprintf('------------------------------------------------------------------\n');

S = maiuscola_iterativa(s)

fprintf('------------------------------------------------------------------\n');

S = maiuscola_ricorsiva(s, 1)

fprintf('------------------------------------------------------------------\n');
