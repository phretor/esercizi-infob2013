%%
%% Dispensa 8 - Riepilogo delle nozioni base di MATLAB
%%
%% Corso: Inforbatica B - A.A. 2013--2014
%% Docente: Prof. G. Boracchi
%% Esercitatore: Ing. F. Maggi
%%

% -------------------------------------------------------------------------
% 8.1 Workspace e finestra dei comandi (command window)
% -------------------------------------------------------------------------

% pulisce il workspace (elimina tutte le variabili)

clear


% pulisce la command window

clc


% -------------------------------------------------------------------------
% 8.2 Variabili, operazioni matematiche e stampa
% -------------------------------------------------------------------------

% assegnamento e dichiarazione (implicita) delle variabili

a = 15;
b = 5;


% la presenza del ";" nasconde il risultato dell'istruzione dalla finestra dei
% comandi

c = a + b


% il risultato viene associato ad una variabile di default "ans"

7+8


% notate che la "stampa" del contenuto di una variabile e` implicita: non serve
% printf come in C (tale funzione servira` per altro come vedremo)

a
b;
c


% Il comando "whos" guarda cosa contiene il workspace (i.e., le variabili
% attualmente dichiarate ed il loro contenuto). Compare anche la dimensione
% delle variabili es 1x1 o 3x4: il primo numero è il numero di righe, il scondo
% il numero dicolonne. Per matlab tutto è una matrice (il singolo valore e` in
% realta` una matrice 1x1).

whos


% ATTENZIONE ai nomi riservati: 'i' è l'unità immaginaria, quindi evitate di
% dichiarare una variabile con quello stesso nome. Così facendo,
% sovrascrivereste la variabile predefinita "i".

ii = 2;
i

% -------------------------------------------------------------------------
% 8.3 Vettori
% -------------------------------------------------------------------------

% Dichiarazione di un vettore riga mediante operatore CAT orizzontale [ , ]
% (le virgole sono opzionali)

riga = [10, 11, 12, 13, 14];


% Accesso ad un elemento del vettore alla posizione corrispondenet al v
%
% Attenzione, il primo elemento è riga(1). Diversamente dal C, la base e` 1,
% non 0

riga(ii)


% Accoda, mediante l'operazione CAT orizzontale, un elemento al vettore riga. E
% sovrascrive il vettore risultante assegnandolo alla variabile riga

riga = [riga, 8]


% Prova ad accedere alla posizione 10 di riga, da errore "index out of matrix
% dimensions"

riga(10)


% Assegna un elemento alla posizione 10 del vettore riga (che non esiste). Il
% vettore viene allungato e ai valori intermedi viene associato di default 0

riga(10) = 8;


% -------------------------------------------------------------------------
% 8.4 Trasposizione e vettori colonna
% -------------------------------------------------------------------------

col = riga';
whos % si notino le dimensioni di col


% dichiarazione di un vettore colonna mediante operatore CAT verticale: [ ; ]

col = [4; 5; 6];
col = [0; col]


% altre trasposizioni

riga = [riga, col'] % operatore cat orizzontale
riga = [riga'; col]


% -------------------------------------------------------------------------
% 8.5 Matrici
% -------------------------------------------------------------------------

A = [1, 2; 3, 4]
A = [1 2; 3 4]


% la matrice viene sviluppata in un vettore leggendo le righe

aa = A(:)


% è possibile accedere algli elementi della matrice specificando dei valori ad
% entrambi gli indici

A(1, 2)


% se si fornisce un solo indice si intende la posizione all'interno di A(:)

A(3) % è come scrivere A(1,2), o se preferite, A(:)(3)


% il seguente comando darebbe errore "index exceeds matrix dimensions"

%A(4, 3)

% -------------------------------------------------------------------------
% 8.6 Dichiarazione vettore per passi
% -------------------------------------------------------------------------

inizio = 9;
step = 15;
fine = 223;

v = [inizio : step : fine]


% definizioni compatte equivalenti
% vettore = inizio : step : fine
% vettore = [inizio : fine] %implicito step = 1
% vettore = inizio : fine


% -------------------------------------------------------------------------
% 8.7 Sottovettori
% -------------------------------------------------------------------------

w = [v(1), v(2)]

indici = [1, 8, 3];


% c è un array contenente i valori che la variabile v assume in corrispondenza
% degli indici corrispondenti agli elementi della variabile indici

c = vettore(indici)


% è possibile definire il vettore degli indici all'interno delle parentesi di v

c = v(1 : 3)


% la keyword "end" utilizzata all'interno degli indici di un vettore assume il
% valore corrispondente alla lunghezza del vettore

d = v(end)


% è anche possibile riordinare il vettore v, specificando un opportuno vettore
% di indici

vettoreAlContrario = v([end : -1 : 1]);


%% dicharazione di matrici di zeri e uni

A = zeros(5);
A = ones(5);


% -------------------------------------------------------------------------
% 8.8 Manipolazione di matrici
% -------------------------------------------------------------------------

% sostituzione di valori all'interno di una matrice mediante definizione di
% sottoindici

% prende tutti gli elementi di A con indice della riga da 1 a end e indice di
% colonna 3, quindi la terza colonna

A([1 : end] , 3)


% associa il vettore estratto al vettore a

a = A([1 : end] , 3)


% versione stringata

a = A(: , 3)


% è possibile sovrascrivere alla terza colonna di A il valore 2

A([1 : end], 3) = 2


% è possibile sovrascrivere alla terza colonna di A un vettore colonna di 5
% elementi (le dimensioni sono consistenti)

A(: , 3) = [1 : 5]'


% questo comando dovrebbe dare problemi perchè state scrivendo un vettore riga
% su uno colonna, ma MATLAB "capisce" che la "destinazione" del vettore riga e`
% in realta` una colonna (quindi effettua una trasposizione al volo)

A(: , 3) = [1 : 5]


% copia parte della matrice da un'altra parte

A([ 1 :  2 ], 1) = A([4 , 5] , 3);
A([ 1 :  2 ], 1) = A([5 , 5] , 3);
A([ 1 :  2 ], 1) = A([5,4] , 3);


% errore perchè a dx ho un vettore di 3 righe 1 colonna e a sx un vettore di 2
% righe una colonna

A([ 1 :  2 ], 1) = A([3 , 3, 3 ] , 3);


% prende un quarto della matrice 

A(3 : end , 3 : end )


% associa a tutto questo il valore 1

A(3 : end , 3 : end ) = 1


% visualizzazione della matrice

figure, imagesc(A)



% -------------------------------------------------------------------------
% 8.9 Algebra lineare
% -------------------------------------------------------------------------

% somma e prodotto sono da intendersi come operazioni tra matrici

a = [1 2 3]
b = [1 2]


% non è possiobile sommare vettori di lunghezza differente

a + b % questo comando darebbe errore

b = [1 2 4]
c = a + b % questo invece funziona


% prodotto: corrisponde al prodotto matriciale, quindi il numero di righe di a
% deve essere uguale al numero di *colonne* di b

a * b


% prodotto element-wise, questo è possibile quando a e b hanno la stessa
% dimensione

a .* b


% idem per l'elevamento al quadrato, a^2 non ha senso perchè sarebbe a*a.
% Invece a.^2 corrisponde ad a .* a

a .^ 2

% EOF
