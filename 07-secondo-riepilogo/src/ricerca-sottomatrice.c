#define DIM 10
#define DIMS 3

#include <stdio.h>

int main() {
    int i, j, si, sj, uguali;

    //una matrice
    int m[DIM][DIM];

    //una sottomatrice
    int s[DIMS][DIMS];

    //inizializzazione della matrice con valori crescenti
    for (i = 0; i < DIM; i++) {
        for (j = 0; j < DIM; j++) {
            m[i][j] = i*j;
            printf("%2d ", m[i][j]);
        }

        printf("\n");
    }

    //inizializzazione della sottomatrice
    /*
      Test 1: 36 42 48 42 49 56 48 56 64
      Test 2: 1  2  3 2  4  6 3  6  9
      Test 3: 36 42 48 42 49 56 48 56 65
     */
    for (i = 0; i < DIMS; i++) {
        for (j = 0; j < DIMS; j++) {
	    scanf("%d", &s[i][j]);
	    printf("%2d ", s[i][j]);
	}

	printf("\n");
    }

    //indici per scorrere la sottomatrice
    si = sj = 0;
    uguali = 0;

    for (i = 0; i < DIM-DIMS && !uguali; i++) {
	for (j = 0; j < DIM-DIMS && !uguali; j++) {
	    uguali = 1;

	    for (si = 0; si < DIMS && uguali; si++)
		for (sj = 0; sj < DIMS && uguali; sj++) {
		    uguali = (m[i+si][j+sj] == s[si][sj]);
		    printf("%d %d %d %d\n", i, j, si, sj);
		}
	}
    }

    //se ha completato i 2 cicli interni e 'uguali == 1'
    if (!uguali)
	printf("NON ");
    printf("trovata");
}
