#define DIM 20
#define INF 18
#define SUP 30

#include <stdio.h>
#include <math.h> //per sqrt(), radice quadrata, e pow(), potenza

int main()
{
    int i;
    int dim;
    int voti[DIM];
    int min;
    int max;

    //statistiche
    float media = 0.0;
    float media_troncata;
    float scarto_medio = 0.0;
    float scarto;
    float dev_std;
    float var;

    //acquisizione della dimensione
    do {
        printf("Quanti elementi vuoi inserire (max: %d)? ", DIM);
        scanf("%d", &dim);

        if (dim > DIM)
            printf("Il valore inserito e' troppo grande!\n");
    } while (dim > DIM);

    //acquisizione voti con ricerca di min max
    for (i = 0; i < dim; i++) {
        do {
            printf("Inserire il %do voto: ", i+1);
            scanf("%d", &voti[i]);

            if (voti[i] < INF || voti[i] > SUP)
                printf("\nIl valore inserito e' fuori dagli estremi [%d, %d]!\n",
                       INF, SUP);
        } while (voti[i] < INF || voti[i] > SUP);

        if (voti[i] < min)
            min = voti[i];

        if (voti[i] > max)
            max = voti[i];

        media = media + voti[i];
    }

    //i valori sono tutti positivi, quindi posso eliminare min/max semplicemente
    media_troncata = media - min - max;

    //calcolo di media e media troncata
    media = media/dim;
    media_troncata = media_troncata/(dim-2);

    //calcolo scarti quadratici dalla media
    for (i = 0; i < dim; i++) {
        scarto = (voti[i] - media);
        scarto_medio = scarto_medio + pow(scarto, 2);
    }

    //calcolo varianza (va bene anche con "dim")
    //http://it.wikipedia.org/wiki/Varianza
    var = scarto_medio/(dim-1);

    //calcolo deviazione standard
    //http://it.wikipedia.org/wiki/Deviazione_standard
    dev_std = sqrt(var);

    //calcolo scarto medio
    scarto_medio = scarto_medio/dim;

    //stampa
    printf(
        "\n\nSTATISTICHE VOTI:\n\n"
        "Esami sostenuti: %.2f\n"
        "Media: %.2f\n"
        "Media troncata: %.2f\n"
        "Varianza: %.2f\n"
        "Deviazione standard: %.2f\n",

        dim,
        media,
        media_troncata,
        scarto_medio,
        var,
        dev_std);
}
