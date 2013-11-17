#define LEN 256

#include <stdio.h>
#include <string.h>

/*
   //esempio di un passo
    i = 1

    //shift in avanti di 2 posizioni

    0 1 2 3 4
    c i a o \0

                 j = len = 4
          +------+
          |      |
          |      v
    c i a o \0 ? \0

              j = len-1 = 3
          +---+
          |   |
          |   v
    c i a o ? o \0

            j = len-2 = 2
        +---+
        |   |
        |   v
    c i a o a o \0

          j = len-3 = 1 == i = 1 (stop)
      +---+
      |   |
      |   v
    c i a i a o \0

    //inserimento della f
    c i a i a o \0

    c i f i a o \0
 */

int main()
{
    int i, j;
    int len, len_iniziale;

    char msg[LEN+1];

    printf("Inserisci una parola da convertire: ");
    scanf("%s", msg);

    i = 0;

    //attenzione, non posso usare la strlen() perche` la lunghezza della
    //stringa cambia durante il ciclo
    while (msg[i] != '\0') {
        if (msg[i] == 'a' || msg[i] == 'e' || msg[i] == 'i' || msg[i] == 'o' || msg[i] == 'u') {
            //controllo di avere abbastanza spazio per le due lettere
            //aggiuntive

            if (strlen(msg) + 2 < LEN) {
                //prima faccio spazio per 2 lettere aggiuntive, spostando tutto
                //in avanti di 2

                len = strlen(msg);

                //dall'ultima lettera alla corrente (inclusa)
                //j = len -> posizione terminatore
                for (j = len; j >= i; j--)
                    msg[j+2] = msg[j];

                //devo inserire 'f' in posizione i+1
                msg[i+1] = 'f';

                //avendo spostato in avanti di 2 posizioni, la prossima lettera
                //nella parola originale non e` la i+1-esima ma la i+3-esima
                i = i + 3;
            } else
                printf("Non e` possibile convertire tutta la parola\n");
        } else
            i++; //non vocale, quindi vado semplicemente avanti un passo
    }

    printf("%s\n", msg);
}
