
#define DIM 10

#include <stdio.h>

int main(void)
{
    //definisco il tipo matrix_t, matrice di interi
    typedef int matrix_t[DIM][DIM];

    //definisco due matrici
    matrix_t m,
             n;

    //variabili ausiliarie
    int i,                      //indice delle righe
        j,                      //indice delle colonne
        x,                      //indice delle righe della sottomatrice
        y,                      //indice delle colonne della sottomatrice
        Imin, Imax,             //limiti delle righe della sottomatrice
        Jmin, Jmax;             //limiti della colonne della sottomatrice

    //inizializzo la matrice con valori crescenti
    for (i = 0; i < DIM; i++) {
        for (j = 0; j < DIM; j++) {
            m[i][j] = i * j;

            printf("%2d ", m[i][j]);
        }

        printf("\n");
    }

    for (i = 0; i < DIM; i++) {
        for (j = 0; j < DIM; j++) {
            /* limiti della sottomatrice:
             *
             * Imin = min(i-1,0),
             * Jmin = min(0,j-1)
             *
             * Imax = min(i+1,DIM)
             * Jmax = min(j+1,DIM)
             */

            //calcolo Imin
            if (i-1 < 0)
                Imin = 0;
            else
                Imin = i-1;

            //calcolo Imax
            if (i+1 > DIM)
                Imax = DIM;
            else
                Imax = i+1;

            //calcolo Jmin
            if (j-1 < 0)
                Jmin = 0;
            else
                Jmin = j-1;

            //calcolo Jmax
            if (j+1 > DIM)
                Jmax = DIM;
            else
                Jmax = j+1;

            //inizializzo a zero
            n[i][j] = 0;

            //scansione della sottomatrice
            for (x = Imin; x < Imax; x++)
                for (y = Jmin; y < Jmax; y++)
                    n[i][j] = n[i][j] + m[x][y];

            printf("%3d ", n[i][j]);
        }

        printf("\n");
    }

    return 0;
}
