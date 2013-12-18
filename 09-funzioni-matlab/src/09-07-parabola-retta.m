%% operazioni logiche tra vettori e plot (caso di studio: parabola e retta)

% definiamo il dominio dei numeri decimali da -10 a 10 con passo 0.1
x = [-10:0.1:10];

% definiamo una retta r = 3x - 2
r = 3 * x - 2;

% definiamo una parabola p = -x^2+1
p = -x .^ 2 + 1;

% attenzione: la retta e parabola definite solo dei vettori di numeri, ovvero i
% valori che le rispettive parabole e rette "continue" assumono in
% corrispondenza di ogni 'x' nel dominio

% operazione logica tra vettori: maggiore è un vettore logical
%
maggiore = (p > r);

% NB i vettori per poter essere confrontati devono avere la stessa lunghezza

% Vogliamo però estrarre le posizioni (indici) in cui il vettore logical
% maggiore è vero, ossia dove la parabola assume valori maggiori della retta
%
indici = find(maggiore); % indici per cui maggiore è vero

% vogliamo valutare il vettore parabola in tali indici
%
valoriParabola = p(indici);

% NB: per disegnare tali punti occorrerà associarli a x(indici)

% determinare il vettore v così costituito
% v = r dove r > p
% v = -p dove r <= p

% area1 = r > p;
indici2 = find(r > p);
indici3 = find(r <= p);
v(indici2) = r(indici2);
v(indici3) = -p(indici3);

% in alternativa
v = r;

v(find(r <= p)) = -p(find(r <= p));
v(r <= p)= -p(r <= p);


%% Visualizzazione
figure(1),

plot(x, r, 'b.'); %(x(1),r(1)),....,(x(end),r(end))
hold on,

plot(x, p, 'r.');
plot(x(indici), valoriParabola, 'ko');
plot(x, v, 'g.');
plot(x, zeros(size(x)), 'k')

hold off;
