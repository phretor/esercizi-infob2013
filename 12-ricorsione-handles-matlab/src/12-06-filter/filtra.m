function V = filtra(condizione, vett)
    % contatore separato per V, che puo` contenere meno elementi di vett
    jj = 1;
    V = [];

    for ii = 1:length(vett)
        if condizione(vett(ii).x, vett(ii).y)
            V(jj).x = vett(ii).x;
            V(jj).y = vett(ii).y;

            jj = jj + 1;
        end
    end
% fine
