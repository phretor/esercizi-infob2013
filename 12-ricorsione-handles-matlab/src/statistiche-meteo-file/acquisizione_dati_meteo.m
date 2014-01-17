function dati = acquisizione_dati_meteo(nome_file)
    dati = load(nome_file, '-ascii');
    fprintf('%d record acquisiti da file.\n', length(dati(:, 1)));
end
