%%
%
% Un metodo per calcolare il valore approssimato x(n) della radice quadrata di
% un numero reale non negativo z, detto metodo babilonese, utilizza la seguente
% relazione ricorsiva:
%
%                     1                   z
%             x(n) = --- * ( x(n-1) + -------- )
%                     2                x(n-1)
%
%             x(0) = 1
%
% Dove n e` un intero non negativo arbitrario, mentre x(n) e` l'approssimazione
% della radice quadrata di z.
%
% Per esempio, se si vuole calcolare la radice quadrata approssimata di z = 2 e si
% sceglie di farlo con n = 3, il valore di x(n=3) ottenuto con il metodo
% babilonese e` 1.4142. Variando n si ottengono diverse approssimazioni della
% radice di z, ma varia anche il numero di ricorsioni per ottenere tali
% approssimazioni.
%
% L'errore di approssimazione si ottiene con:
%
%             err(n) = |x(n) - x(n-1)|
%
% e decresce al crescere di n.
%
%     1) Scrivere una funzione ricorsiva sqrt1(z,n) che restituisca
%     un'approssimazione della radice quadrata ed il relativo errore. Quando
%     n = 0 si assuma che l'errore sia pari a inf.
%
%     2) Scrivere una funzione sqrt2(z,err) che, utilizzando la funzione sqrt1,
%     restituisca un valore approssimato della radice quadrata di z con un
%     errore di approssimazione non superiore al valore err fornito come
%     parametro.
%%

[r e] = sqrt1(30.0, 4)
sqrt2(30.0, 0.4)

