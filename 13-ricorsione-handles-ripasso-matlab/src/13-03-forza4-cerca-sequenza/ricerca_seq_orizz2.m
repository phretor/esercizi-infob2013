%         M = [
%               'o' 'o' 'o' 'o' 'o' 'o'
%               'o' 'o' 'o' 'o' 'o' 'o'
%               'o' 'o' 'o' 'o' 'o' 'o'
%           ->  'r' 'r' 'r' 'r' 'o' 'o'
%               'b' 'b' 'b' 'r' 'o' 'o'
%         ]
%
%[r c] = ricerca_seq_orizz(M, colore)

% [x y] = ricerca_seq_orizz(M, 'r');
function [r c] = ricerca_seq_orizz(M, colore)
    [R C] = size(M);

    r = 0;
    c = 0;

    for r = 1:R
        for c = 1:C-3
            p = all(M(r, c:c+3) == colore);
            if p
                return;
            end
        end
    end
% fine
