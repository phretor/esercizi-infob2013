function visualizza(M, figura)
    % commentare se non si usa Octave con gnuplot
    setenv GNUTERM 'x11'

    % A partire dalla matrice M di dim 7x5 contenente 'o', 'r', 'b' creiamo %
    % un'immagine RGB, ovvero una matrice T di dim 7*scale x 5*scale x 3 con:
    %
    % - [1 1 1] nei quadrati 30x30 corrispondenti alle aree 'o' (no pedina: nero)
    % - [1 0 0] nei quadrati 30x30 corrispondenti alle aree 'r' (pedina rossa)
    % - [0 0 1] nei quadrati 30x30 corrispondenti alle aree 'b' (pedina blu)
    % - scale e` un fattore di scala (ad esempio, 30 pixel per ogni pedina)

    SCALE_FACTOR = 30;

    % Tabellone del forza 4 (un'immagine RGB)
    % di default, la matrice T e` tutta a [0 0 0] (nero) == no pedina
    T = zeros([SCALE_FACTOR * size(M), 3]);

    % Pedine rosse:
    %  - righe e colonne degli elementi di M con pedina rossa
    [r1 , c1] = find(M == 'r');

    % Pedine blu:
    %  - righe e colonne degli elementi di M con pedina blu
    [r2 , c2] = find(M == 'b');

    % Per ogni pedina rossa trovata:
    % Faccio quadrati di dimensione (SCALE_FACTOR - 1) x (SCALE_FACTOR - 1) di
    % colori diversi. Lascio una riga ed una colonna vuota (i.e., pixel neri) tra
    % una pedina e l'altra
    %
    for ii = 1 : length(r1) %avrei potuto mettere anche length(c1)
        % Righe rosse riscalate

        % per ogni pedina rossa, creo SCALE_FACTOR-1 righe
        r_start = SCALE_FACTOR * (r1(ii) - 1) + 1;
        r_end = SCALE_FACTOR * r1(ii) - 1;

        % Colonne rosse riscalate

        % per ogni pedina rossa, creo SCALE_FACTOR-1 righe
        c_start = SCALE_FACTOR * (c1(ii) - 1) + 1;
        c_end = SCALE_FACTOR * c1(ii) - 1;

        % rosso = pongo a uno il rosso (primo elemento della tripla)
        % ricordiamoci che ogni elemento T(riga, colonna) e` una tripla [R G B]
        T(r_start:r_end, c_start:c_end, 1) = 1;
    end

    % Per ogni pedina blu trovata;
    % [idem, ma sul terzo canale (blu)]
    for ii = 1 : length(r2)
        % Righe blu riscalate

        r_start = SCALE_FACTOR * (r2(ii) - 1) + 1;
        r_end = SCALE_FACTOR * r2(ii) - 1;


        % Colonne blu riscalate

        c_start = SCALE_FACTOR * (c2(ii) - 1) + 1;
        c_end = SCALE_FACTOR * c2(ii) - 1;

        % blu = pongo a uno il blu (terzo elemento della tripla)
        % ricordiamoci che ogni elemento T(riga, colonna) e` una tripla [R G B]
        T(r_start:r_end, c_start:c_end, 3) = 1;
    end

    figure(figura),
    imshow(T)
% fine

