#define LEN 160
#define KMIN 0
#define KMAX 10

#include <stdio.h>
#include <string.h>

int main() {
    char messaggio[LEN+1];

    int i;
    int chiave;
    int len;

    printf(
        "Scrivere un SMS su una riga (massimo %d caratteri):\n"
        "---premere invio per terminare il messaggio---\n", LEN);
    gets(messaggio);

    do {
        printf("Inserire la chiave di cifratura: intero in [%d, %d]: ",
               KMIN, KMAX);
        scanf("%d", &chiave);

        if (chiave < KMIN || chiave > KMAX)
            printf("Chiave non valida!");
    } while (chiave < KMIN || chiave > KMAX);

    len = strlen(messaggio);

    printf("Messaggio cifrato:\n");

    //cifratura (scorrimento al contrario + chiave)
    for (i = 0; i < len+1; i++)
        printf("%c", messaggio[len-i] + chiave);
    printf("\n\n");

    //alternativa alla fflush(stdin), che su alcuni terminali
    //potrebbe non funzionare correttamente
    while(getchar() != '\n');

    //decifratura
    printf(
        "Scrivere l'SMS cifrato su una riga (massimo %d caratteri):\n"
        "---premere invio per terminare il messaggio---\n", LEN);
    gets(messaggio);

    len = strlen(messaggio);

    for (i = len; i > 0; i--)
        printf("%c", messaggio[i-1] - chiave);
    printf("\n");
}
