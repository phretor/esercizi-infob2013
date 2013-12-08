% Creare una matrice M di dim 7x5 contenente 'o', 'r', 'b',
% matrice che rappresenta un momento di una partita di forza 4 in corso.

% Chiedere ai due giocatori, finché uno di questi non inserisce la lettera 'q' (quit),
% di inserire la colonna (tra 1 e 7) dove intende inserire la propria pedina.

% Inserire la pedina nella colonna corretta e visualizzare a schermo la matrice
% M così ottenuta.

M = [
    'o'   'o'   'o'   'o'   'o';
    'o'   'o'   'o'   'b'   'o';
    'o'   'o'   'o'   'b'   'o';
    'r'   'b'   'r'   'b'   'r';
    'r'   'r'   'b'   'r'   'r';
    'b'   'b'   'b'   'r'   'r';
    'b'   'b'   'b'   'r'   'r';
];

colori = ['r', 'b'];

giocata = input('Premere "q" o invio per uscire, o un altro tasto per proseguire: ', 's')

% finché non si preme il tasto 'q'
while giocata ~= 'q'
    % per ogni giocatore
    for c = colori
        % visualizza la situazione di gioco
        M

        % finché non si sceglie una colonna corretta
        ok = 0;
        while ~ok
            % finché non si inserisc un numero tra 1 e 7
            col = -1;
            while col < 1 | col > length(M(1, :))
                col = input(['giocatore ', c, ' - colonna: ']);
            end

            % c'è almeno una posizione libera
            ok = sum(M(:, col) == 'o') > 0;
        end

        % ricerca della prima posizione libera
        top = max(find(M(:, col) == 'o'));

        % inserimento pedina del colore del giocatore
        M(top, col) = c
    end

    giocata = input('Premere "q" per uscire, o un altro tasto per proseguire: ', 's')
end
