% Amici: due numeri sono amici quando la somma dei divisori del primo (escluso
% il numero stesso) coincide al secondo numero; e viceversa.

function amici = sono_amici(a, b)
    amici = (somma_divisori(a) == b) && (somma_divisori(b) == a);
% end funzione sono_amici
