#include <stdio.h>

void main()
{
    int n, i;
    
    do {
        printf("Inserire un intero ");
        scanf("%d" , &n);
    } while(n < 1);

    // soluzione con il ciclo while
    /*
    i = 1; //init_expr

    while(i <= n) {
        if(n % i == 0)
            printf(" %d " , i);
            
        i++;
    }
    */

    // soluzione alternativa con il for,

    /*
      NB: l'init_expr i = 1; e la loop_expr i++; fanno parte della
      prima riga nel ciclo. Nel ciclo while erano prima del ciclo e
      all'interno rispettivamente.
    */
    for(i = 1; i <= n ; i++)
        if(n % i == 0)
            printf(" %d ", i);

}
