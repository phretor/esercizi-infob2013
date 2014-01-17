%%
% Si definisca una funzione che riceve in ingresso un function handle e due
% variabili "x" e "y" contenenti numeri (entrambi interi o float, e`
% indifferente).
%
% Tale funzione, chiamata "controllo_funzione", dovra` controllare se
% applicando ad "x" la funzione passata tramite function handle, si ottiene
% "y", e ritornare 1 o 0 a seconda che tale controllo vada a buon fine o meno.
%
% Implementare entrambe le funzioni, scegliendo arbitrariamente la funzione che
% svolgera` l'operazione su "x" (ad esempio, moltiplica "x" per 2).
%
% Estendere l'esempio ai vettori, ovvero costruire "controllo_funzione"
% affinche` riceva in ingresso un vettore X e un vettore Y, e controlli che la
% condizione di cui sopra valga per tutti gli elementi corrispondenti di X e Y.

% implemento "operazione" affinche` controlli che y sia il doppio di x.
func = @operazione   % operazione e` caricata dal file "operazione.m"

x = rand();

controllo_funzione(func, x, 2*x) % vero

controllo_funzione(func, x, 3*x) % falso

X = rand([10 1]);
Y = 2*X;

controllo_funzione_vett(func, X, Y) % vero

% modifico un elemento di Y a scelta in modo da invalidare la condizione
Y(3) = Y(3) - 1;

controllo_funzione_vett(func, X, Y) % falso

% NOTA: la differenza fondamentale tra una funzione invocata da una seconda
% funzione e una funzione passata come function handle a una seconda funzione
% e` che il function handle puo` essere cambiato dal chiamante (es., il main)
% senza modificare l'implementazione della seconda funzione

% ad esempio, se adesso volessi cambiare l'operazione da svolgere, posso
% dichiarare "al volo" una funzione anonima che riceve "x" in ingresso e,
% invece di raddoppiarne il valore come fa "operazione", somma 3 ad "x".

func = @(x) x+3

% a questo punto posso chiamare "controllo_funzione" come sopra, senza
% modificarla

x = rand();

controllo_funzione(func, x, x+3) % vero

controllo_funzione(func, x, x*2) % falso

% se non avessi usato i function handle e avessi voluto cambiare l'operazione
% avrei dovuto modificare "controllo_funzione" affinche` chiamasse un'altra
% funzione, o affinche` svolgesse essa stessa l'operazione di x+3
