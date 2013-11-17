#define DIM 10

#include <stdio.h>

int main()
{
    //dichiarazione variabili
    int i;
    int dim;
    int min_idx = 0; //assumiamo che min sia il primo elemento
    int max_idx = 0; //assumiamo che max sia il primo elemento

    float valori[DIM];

    //acquisizione della dimensione
    do {
        printf("Quanti elementi vuoi inserire (max: %d)? ", DIM);
        scanf("%d", &dim);

        if (dim > DIM)
            printf("Il valore inserito e' troppo grande!\n");
    } while (dim > DIM);

    //acquisizione valori con ricerca di min max
    for (i = 0; i < dim; i++) {
        printf("Inserire il %do valore: ", i+1);
        scanf("%f", &valori[i]);

        if (valori[i] < valori[min_idx])
            min_idx = i;

        if (valori[i] > valori[max_idx])
            max_idx = i;
    }

    //stampa dei valori con indicazione del massimo e del minimo
    for (i = 0; i < dim; i++) {
        if (i == min_idx && i == max_idx)
            printf("- +|");
        else {
            if (i == min_idx)
                printf("-  |");

            if (i == max_idx)
                printf("  +|");
        }

        if (i != min_idx && i != max_idx)
            printf("   |");

        printf(" %.2f\n", valori[i]);
    }
}
