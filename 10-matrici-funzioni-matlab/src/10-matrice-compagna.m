% In algebra lineare la matrice compagna di un polinomio di grado N con i seguenti coefficienti
%
%   c_0 c_1 ... c_N-2 c_N-1
%
% è una matrice quadrata NxN avente:
%
%    * 1 sulla prima sovra diagonale
%    * i coefficienti, cambiati di segno, sull'ultima riga
%    * 0 (zero) altrove
%
% Scrivere una funzione che, ricevuto in ingresso il vettore dei coefficienti
% [c_0 c_1 ... c_N-2 c_N-1], restituisce la corrispondente matrice compagna.
%
function CP = matriceCompagna(coefficienti)
    % leggo la lunghezza del vettore
    n = length(coefficienti);

    % preparo una matrice NxN di zeri
    CP = zeros(n);

    % seleziono la sovradiagonale
    %
    % leggo la matrice per colonne:
    %   * il primo elemento della sovra-diagonale e` n + 1
    %   * i successivi elementi sono tutti distanti n + 1
    %   * mi fermo alla fine della matrice
    CP(n+1:n+1:end) = 1;

    % assegno all'ultima riga i coefficienti cambiati di segno
    CP(n,1:n) = -coefficienti;
