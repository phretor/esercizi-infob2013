function [r1 r2 r3] = massimali(A, B)
    % r1
    % elementi uguali in posizioni corrispondenti
    t1 = A == B;
    r1 = sum(sum(t1));

    % r2
    % cerchiamo il massimo in B
    M = max(max(B));

    % i numeri di A maggiori di M saranno maggiori (o uguali) a tutti gli altri
    % elementi di B (in quanto M e` il massimo)
    t2 = A >= M;
    r2 = sum(sum(t2));

    % r3
    % somma lungo le righe tutti gli elementi massimali
    sc = sum(t2);

    % cerco il massimo
    r3 = max(sc);
% fine
