% Anagrammi
%
% * chiedere all'utente parola1 e parola2 calcolare se sono anagrammi

parola1 = input('inserire parola ',  's');
parola2 = input('inserire parola ',  's');

% costruire h1 h2
%h1[65] = # di 'A' in parola1
%h1[67] = # di 'C' in parola1
%h2[65] = # di 'A' in parola2

h1 = zeros(1,255);
for cc = parola1
    h1(cc) = h1(cc) + 1;
end

h2 = zeros(1,255);
for cc = parola2
    h2(cc) = h2(cc) + 1;
end

anagr = all(h1 == h2);

str = [parola1];
if (anagr)
    str = [str , ' è '];
else
    str = [str , ' NON è'];
end

str = [str , ' anagramma di ' , parola2];

disp(str);
