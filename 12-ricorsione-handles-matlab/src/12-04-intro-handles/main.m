% Ripasso sui function handle

% * Un "function handle" e` una variabile il cui valore e` una funzione
%
% * Data una funzione esistente, il suo function handle e` dichiarato come
%   handle = @nome dove "nome" e` il nome di tale funzione esistente. Una volta
%   dichiarato l'handle, e` possibile invocarlo come fosse una funzione (di
%   fatto, lo e`).

octave:1> handle_sum([3 2])
error: `handle_sum' undefined near line 1 column 1

octave:1> handle_sum = @sum
handle_sum = @sum

octave:2> handle_sum([3 2])
ans =  5

octave:3> sum([3 2])
ans =  5

% * Un function handle puo` essere dichiarato anche "al volo", ossia su una
%   funzione non esistente. Ad esempio: handle = @(x) x*3 e` un handle di una
%   funzione "anonima" che accetta in ingresso un parametro formale "x" e svolge
%   su di esso una moltiplicazione. Si noti che "x*3" e` a tutti gli effetti
%   il corpo della funzione anonima.

octave:4> handle = @(x) x*3
handle =

@(x) x * 3

octave:5> handle(10)
ans =  30

% Essendo variabili, gli handle possono essere passati ad altre funzioni, e
% cosi` via, creando le cosiddette "funzioni di ordine superiori", in quanto
% ricevono in ingresso altre funzioni (come handle).

octave:19> handle_es = @(vett, func) func(vett)
handle_es =

@(vett, func) func (vett)

octave:20> handle_es([3 2], @sum)
ans =  5

octave:21> handle_es([3 2], handle_sum)
ans =  5
