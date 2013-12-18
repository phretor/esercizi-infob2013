% Anagramma: versione con funzioni.

setenv GNUTERM 'x11'; % commentare se non si usa Octave con Gnuplot su X11

% leggere 2 parole da tastiera
%
[parola1, parola2] = leggi_parole();

% costruire gli istogrammi secondo l'alfabeto ASCII esteso (256 simboli)
%
h1 = calcola_istogramma(parola1);
h2 = calcola_istogramma(parola2);

% visualizzare gli istogrammi come grafici a barre
%
figure(5), bar(h1)
figure(6), bar(h2)

% calcolare se si tratta di anagrammi
%
anagrammi = sono_anagrammi(h1, h2);

if (anagrammi)
    fprintf('Le due parole sono anagrammi\n');
else
    fprintf('Le due parole NON sono anagrammi\n');
end
