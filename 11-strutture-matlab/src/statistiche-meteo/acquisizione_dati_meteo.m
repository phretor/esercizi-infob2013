function dati = acquisizione_dati_meteo()
    next = 1;
    dati = [];
    ii = 0;

    while next == 1
        ii = ii + 1;

        dati(ii).city = input('Citta`: ');
        dati(ii).giorno = input('Giorno: ');
        dati(ii).mese = input('Mese: ');
        dati(ii).anno = input('Anno: ');
        dati(ii).tipo = input('Tipo: ');
        dati(ii).valore = input('Valore: ');

        next = input('Per inserire un nuovo record premere 1, altrimenti 0: ');
    end

    fprintf('%d dati inseriti.\n', ii);
end
