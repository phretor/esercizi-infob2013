%
% Esercizio da TdE
% ----------------
%
% Scrivere un programma per la gestione di un magazzino dove ogni prodotto nel
% magazzino è univocamente identificato da un barcode (un numero intero) e da una
% tipologia (un carattere).
%
% Il software di gestione associa ad ogni prodotto due numeri, il primo che
% indica il numero di pezzi in stock il secondo che indica il numero di pezzi
% ordinati.
%
% Si ipotizzi che barcode, tipo, stock, ordine siano 4 vettori, già popolati,
% contenenti tutte le informazioni necessarie per la gestione del magazzino.
% (l'i-simo elemento di stock e di ordine rappresentano le quantità relative al
% prodotto a cui è associato l'i-simo elemento di barcode).
%
% Ad esempio:
%
%     barcodes =  [123 ; 1312 ; 12312 ; 1231 ; 99123];
%     tipo =      ['A' ; 'A'  ; 'X'   ; 'W'  ; 'W'  ];
%     stock =     [0   ; 300  ; 5     ; 6    ; 0    ];
%     ordine =    [23  ; 100  ; 2     ; 100  ; 0    ];
%
% Si scriva:
%
%   1) la funzione "ricerca" che prende in ingresso un barcode e restituisce un
%   messaggio contenente il tipo di prodotto, il numero di pezzi in stock ed in
%   ordine. In caso di multiple occorrenze, scegliere la prima.
%
%   2) un esempio di chiamata alla funzione "ricerca".
%
%   3) la funzione "ricercaMancanti" che, a seconda di un parametro P,
%       restituisce al programma chiamante un vettore contenente i
%       codici a barre dei prodotti:
%
%       * (se P = 0) non presenti in stock ma in ordine,
%
%       * (se P = 1) non presenti in stock che non sono nemmeno in ordine,
%
%       * (se P = 2) per cui ci sono piu` pezzi in ordine che
%         attualmente in stock.
%
%   4) Scrivere un esempio di chiamata alla funzione ricercaMancanti
%
%   5) Si scriva la funzione aggiungiProdotto, che permette di aggiungere al
%       magazzino un  nuovo prodotto (barcode + stock + ordine)
%
%   6) Scrivere un esempio di chiamata alla funzione aggiungiProdotto
%

clear
clc

% definizione funzioni
function [msg] = ricerca (b, t, s, o, bc)
    bc_indici = find(b == bc);
    b = b(bc_indici)(1);
    t = t(bc_indici)(1);
    s = s(bc_indici)(1);
    o = o(bc_indici)(1);

    msg = ['il prodotto corrispondente al codice a barre ',
            num2str(bc),
           ' e` di tipo ',
            num2str(t),
           ' elementi in stock: ',
            num2str(s),
           ' in ordine: ',
            num2str(o)
          ];
end

function [prodotti] = ricercaMancanti(b, t, s, o, P)
    switch P
        case 0
            bc_indici = find(s == 0 && o > 0);
        case 1
            bc_indici = find(s == 0 && o == 0);
        case 2
            bc_indici = find(o > s);
    end

    prodotti = b(bc_indici)
end

function [b, t, s, o] = aggiungiProdotto(b, t, s, o, n_b, n_t ,n_s, n_o)
    b = [b; n_b];
    t = [t; n_t];
    s = [s; n_s];
    o = [o; n_o];
end

% main
barcodes =  [123 ; 1312 ; 12312 ; 1231 ; 99123];
tipo =      ['A' ; 'A'  ; 'X'   ; 'W'  ; 'W'  ];
stock =     [0   ; 300  ; 5     ; 6    ; 0    ];
ordine =    [23  ; 100  ; 2     ; 100  ; 0    ];

ricerca(barcodes, tipo, stock, ordine, 12312)

ricercaMancanti(barcodes, tipo, stock, ordine, 0)
ricercaMancanti(barcodes, tipo, stock, ordine, 1)
ricercaMancanti(barcodes, tipo, stock, ordine, 2)

[barcodes, tipo, stock, ordine] = aggiungiProdotto(
    barcodes, tipo, stop, ordine,
    999, 'F', 3, 24
)

%EOF
