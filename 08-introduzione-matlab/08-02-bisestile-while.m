%% Aggiunta rispetto a quanto visto a lezione, per spiegare i cicli while

bisestile = 1;
counter = 0;

while(bisestile)
    n = input(['inserire anno ']);

    div_4 = (mod(n , 4) == 0);
    div_100 = (mod(n , 100) == 0);
    div_400 = (mod(n , 400) == 0);

    bisestile = ((div_4) && ~(div_100)) || (div_400);

    stringa_output = num2str(n);

    if(bisestile == 0)
        stringa_output = [stringa_output , ' non è '];
    else
        stringa_output = [stringa_output ,' è '];
        counter = counter + 1;
    end

    stringa_output = [stringa_output , 'bisestile'];
    disp(stringa_output);
end

disp(['game over hai inserito esattamente ' , num2str(counter) , ' bisestili'])
