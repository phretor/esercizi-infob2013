%
% Esercizio 1 (TdE 3 Febbraio 2009)
%
% Scrivere una funzione che prende come parametro due matrici A e B, delle
% stesse dimensioni, e restituisce i seguenti 3 valori:
%
%     1) Il numero totale di elementi uguali in posizioni corrispondenti.
%
%     2) Il numero di elementi di A massimali per la matrice B, cioè il numero
%     di posizioni, nella matrice A, in cui è presente un numero che è maggiore
%     o uguale a tutti gli elementi presenti nella matrice B.
%
%     3) il numero massimo di elementi di A massimali per la matrice B (secondo
%     la definizione precedente) presenti in ogni colonna della matrice A.
%

A = 2 * rand([5 6])
B = rand([5 6])

[r1 r2 r3] = massimali(A, A)

[r1 r2 r3] = massimali(A, B)

