% Creare un programma che legga una frase in ingresso e la converta in alfabeto
% farfallino (usando una seconda stringa di supporto).
%
frase = input(['inserire una stringa '] , 's');

far = [];

for c = frase
    far = [far , c ];
    if(c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u')
        far = [far ,'f' ,c];
    end
end

disp([frase , ' in alfabeto far diventa ' , far])
