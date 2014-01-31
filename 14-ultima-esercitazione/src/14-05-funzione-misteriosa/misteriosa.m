% Si spieghi cosa fa la seguente funzione, fornendo *anche* degli esempi di
% output a fronte di alcuni esempi di input

function r = misteriosa(array)
    k = size(array, 2);

    if (k == 1)
        r = 1;
    elseif (k == 2)
        if (array(1) + array(2) == 10)
            r = 1;
      else
          r = 0;
      end
    else
      if (array(1) + array(k) == 10)
            r = misteriosa(array(2:k-1));
      else
          r = 0;
      end
    end
end
