function [m d] = regolazione(t, ora, prog)
    sx = ora - 1;
    dx = ora + 1;

    if ora == 1
        sx = 23;
    elseif ora == 24
        dx = 1;
    end

    finestra = [sx ora dx];

    m = mean(prog(finestra));
    d = t - m;
% fine
