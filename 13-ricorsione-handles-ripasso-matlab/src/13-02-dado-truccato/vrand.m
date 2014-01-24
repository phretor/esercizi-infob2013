function ris = vrand(r, m)
    ris = r();

    while ris < m
        ris = r();
    end
end

