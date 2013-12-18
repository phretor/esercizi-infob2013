% Scrivere una funzione che legge una parola e ritorna 1 se tale
% parola e` palindroma, zero altrimenti.

% Prima soluzione (non raccomandata)
%
function [p] = palindromaAllaC(par)
    % soluzione "alla C"

    % len = length(par);
    len = size(par, 2);
    pal = 1;
    ii = 1;

    while((ii  <= len / 2 ) && pal)
        if(par(ii) ~= par(end - ii + 1))
            pal = 0;
        end
        ii = ii + 1;
    end

    parAlContrario = par(end : -1 : 1);
    corrispondenze = (par == parAlContrario);

    if(sum(corrispondenze == 0))
        pal = 0;
    else
        pal = 1;
    end
% fine funzione palindromaAllaC

% Seconda soluzione (raccomandata)
%
function [p] = palindroma(par)
    % alternativa super-compatta
    pal = sum(par == par(end : -1 : 1));
%fine funzione palindroma

% acquisisco la parola
%
parola = input('inserire parola '  ,  's');

% chiamo la funzione
%
pal = palindroma(parola);

str = [parola];
if (pal)
    str = [str , ' è '];
else
    str = [str , ' NON è'];
end
str = [str , ' palindroma'];

disp(str);
