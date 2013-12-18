% Commentare se non si usa Octave con Gnuplot su X11
setenv GNUTERM 'x11'

% Creare una matrice 10x10x3 di zeri
%
X = zeros([10, 10, 3]);

% Visualizzare la matrice come immagine RGB
%
imshow(X);

% Verra` visualizzato un quadrato nero: perche`?
% Perche` ogni ii, jj e` pari a zero (no rosso, no verde, no blu)
% R(ii,jj) = 0, G(ii,jj) = 0, B(ii,jj) = 0

% mettiamo ad 1 il canale rosso di 5 punti a caso
%
% la terza dimensione e` il canale:
%   * 1 -> R
%   * 2 -> G
%   * 3 -> B
%

for ii = 1 : 5 % 5 estrazioni
    % 1 significa "massima intensita` di rosso"
    % randi(N) restituisce un intero casuale da 0 a N

    %                       1 == red
    X(randi(10), randi(10), 1) = 1;
end

% facciamo lo stesso con il verde, ma con un'intensita` casuale tra 0 e 1

for ii = 1 : 5
    %                       2 == green
    X(randi(10), randi(10), 2) = rand(1);
end

% --

% Creare una matrice 30x10x3 di zeri per creare un "semaforo"
%
X = zeros([30, 10, 3]);

% Visualizzare la matrice come immagine RGB
%
imshow(X);
pause(5); % pausa per 5 secondi

% Facciamo la stessa manipolazione vista sopra, ma lavorando su un quadrante
% 8x8 per volta

% Primo quadrante dall'alto: tutto rosso, escluso il bordo che e` gia` nero.
%
X(2:9,2:9, 1) = 1;
imshow(X);
pause(5); % pausa per 5 secondi

% Secondo quadrante: tutto arancione, escluso il bordo. Il colore arancione
% lo creiamo con la seguente combinazione di colori RGB:
%  R = 1
%  G = 0.4
%  B = 0.2

X(11:19, 2:9, 1) = 1;       % rosso al 100%
X(11:19, 2:9, 2) = 0.4;     % verde al 40%
X(11:19, 2:9, 3) = 0.2;     % blu al 20%
imshow(X);
pause(5); % pausa per 5 secondi

% Terzo quadrante: tutto verde, escluso il bordo.
%

X(21:end-1,2:9, 2) = 1;

% Visualizzazione del semaforo
%
imshow(X);

% TODO: provate a far accendere e spegnere i vari colori del semaforo
% all'infinito secondo la corretta sequenza prevista dal codice della strada
% (Art.41).
%
% http://www.mit.gov.it/mit/site.php?p=normativa&o=vd&id=1&id_dett=43
%
