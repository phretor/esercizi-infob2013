% Esercizio 3 (TdE 09/09/2009)
% ============================
%
% Scrivere una funzione che, ricevendo in ingresso una matrice M di numeri,
% restituisce in uscita una matrice MR, ottenuta da M nel seguente modo:
%
%    * si calcola la media aritmetica dei valori di M
%
%    * per i valori che in M sono minori della media, in MR si pone nella
%    posizione corrispondente il valore -1,
%
%    * per quelli superiori alla media si pone il valore 1,
%
%    * per gli altri (quelli uguali alla media) si pone lo stesso valore in M.
%

% soluzione alla MATLAB, da preferire
%
function [MR] = transformMatrix(M)
    media = mean(mean(M));
    MR = M;
    MR(MR < media) = -1;
    MR(MR > media) = 1;
% fine funzione transformMatrix

% soluzione alla C, non raccomandata
%
function [MR] = transformMatrixCstyle(M)
    [R, C] = size(M);
    media = 0;

    % somma di tutti gli elementi
    for r = 1:R
        for c = 1:C
            media = media + M(r,c);
        end
    end

    % calcolo media
    media = media / (R * C);

    % generazione MR elemento per elemento
    for r = 1:R
        for c = 1:C
            if M(r,c) < media
                MR(r,c) = -1;
            else
                if M(r,c) > media
                    MR(r,c) = 1;
                else
                    MR(r,c) = M(r,c);
                end
            end
        end
    end
%fine funzione transformMatrixCstyle
