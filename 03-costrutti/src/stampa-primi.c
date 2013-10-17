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
    } while(n < nPrimi);

    n = 1;
    j = 1;
    
    while (j <= nPrimi) {
        // qui inizia il blocco di codice per valutare se n è primo
        primo = 1;
        
        i = 2; // non devo controllare 1 perché uno divide tutti
        
        /*
          così facendo quando n è 1 non entro nel ciclo e concludo
          correttamente che 1 è primo
        */
        while (i <= n/2 && primo == 1) {
            if(n % i == 0)
                primo = 0;
            i++;
        } // chiude ciclo per cercare i divisori

        /*
          se la variabile di flag primo è rimasta == 1, allora non è
          mai capitato n % i == 0, quindi non esiste 2 <= i <= n /2
          che divide n
        */
        if(primo == 1)
        {
            printf(" %d " , n);

            /*
              incremento la variabile che conta il numero di primi
              incontrati
            */
            j++;
        }
        
        n++; // passo a valutare il prossimo intero,
        
        // indipendentemente dal fatto di aver trovato un numero primo o no.

    } // chiude ciclo per cercare nPrimi numeri primi

} // chiude main
