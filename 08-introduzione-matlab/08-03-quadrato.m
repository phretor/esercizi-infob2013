% Il quadrato di N è uguale alla somma dei primi N numeri dispari, calcolare il
% quadrato di un numero inserito da utente (<100)

clc
clear

N = input('Inserire il numero da elevare al quadrato (< 100): ');

numeri = 2 * [0 : N - 1] + 1

c = 1;
somma = 0;

while c <= N
    somma = somma + numeri(c);
    c = c + 1;
end

fprintf('%d^2 = %d\n', N, somma);
