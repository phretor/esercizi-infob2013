#include <stdio.h>

void main()
{
    int n, m, MCD, i;
    
    do {
        printf("Inserire n = ");
        scanf("%d" , &n);

        printf("Inserire m = ");
        scanf("%d" , &m);

    } while(n < 1 || m < 1);
    // contiuno a chiedere l'immissione se o m o n non è positivo

    // provo tutti i numeri minori o uguali ad n e ad m
    for (i = 1; i <= n && i <= m; i++)
        if(n % i == 0 && m % i == 0)
            MCD = i; //trovato, ma continuo a cercare
    
    printf("l'MCD e' %d\n" , MCD);
}
