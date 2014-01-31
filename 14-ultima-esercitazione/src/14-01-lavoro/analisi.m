function [M R] = analisi(ore)
    [G A] = size(ore);

    % dal terzo anno in avanti
    for y = 3:A
        % media tra i due anni precedenti
        M(:, y-2) = (ore(:,y-2) + ore(:,y-1))/2;

        % scostamento dalla media
        R(:, y-2) = ore(:,y) - M(:, y-2);
    end
% fine
