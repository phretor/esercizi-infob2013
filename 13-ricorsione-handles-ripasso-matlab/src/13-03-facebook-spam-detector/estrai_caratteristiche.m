function [l v c] = estrai_caratteristiche(testo)
    spazi = testo == ' ';
    vocali = testo == 'a' | testo == 'e' | testo == 'i' | testo == 'o' | testo == 'u';
    consonanti = ~spazi & ~vocali;

    l = length(testo(~spazi));
    v = length(testo(vocali));
    c = length(testo(consonanti));
% fine
