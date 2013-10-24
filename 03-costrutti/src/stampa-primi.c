#include <stdio.h>

void main()
{
    int n = 0;
    int i;
    int primo;
    int nPrimi;
    int j;

    do {
        printf("Inserire il nr di primi:");
        scanf("%d", &nPrimi);
    } while(nPrimi < 1);

    n = 2;
    j = 1;

    while (j <= nPrimi) {
	//da n/2 a 2 cerco divisori interi
        for (i = n/2; i >= 2 && n % i != 0; i--);

	//se non sono uscito prima di averli provati tutti vuol dire
	//che non ho trovato un divisore --> primo
        if(!(i >= 2)) {
            printf(" %d " , n);

	    //conto il numero di numeri primi
            j++;
        }

        n++; // passo a valutare il prossimo intero

    } // chiude ciclo per cercare nPrimi numeri primi

} // chiude main
