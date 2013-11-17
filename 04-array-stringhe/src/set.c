#define DIM 30

#include <stdio.h>

int main()
{
    int i, j, k = 0;
    int dim;
    int trovato;
    int lista[DIM];
    int insieme[DIM];

    //acquisizione della dimensione
    do {
        printf("Quanti elementi vuoi inserire (max: %d)? ", DIM);
        scanf("%d", &dim);

        if (dim > DIM)
            printf("Il valore inserito e' troppo grande!\n");
    } while (dim > DIM);

    for (i = 0; i < dim; i++) {
        printf("Inserire il %do elemento: ", i+1);
        scanf("%d", &lista[i]);
    }

    //per ogni elemento
    for (i = 0; i < dim; i++) {
        trovato = 0;

        //scorro la lista fino a che trovo lo stesso elemento
        for (j = 0; !trovato && j < k; j++)
            trovato = (lista[i] == insieme[j]);

        //se non trovato, lo inserisco e incremento l'indice
        if (!trovato) {
            insieme[k] = lista[i];
            k++;
        }
    }

    // stampo la lista
    printf("lista = [");
    for (i = 0; i < dim; i++) {
        printf("%d ", lista[i]);
    }
    printf("]\n");

    //stampo l'insieme - k ora è la lunghezza dell'insieme
    printf("insieme = {");
    for (i = 0; i < k; i++) {
        printf("%d ", insieme[i]);
    }

    printf("}\n");
}
