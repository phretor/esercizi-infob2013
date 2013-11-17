#define LEN 256

#include <stdio.h>
#include <string.h>

int main()
{
    int i, j;

    char msg[LEN+1];
    char fsg[LEN+1];

    printf("Inserisci una parola da convertire: ");
    scanf("%s", msg);

    for (i = 0, j = 0; msg[i] != '\0'; i++, j++) {
        //in ogni caso copio lettera per lettera
        fsg[j] = msg[i];

        //se trovo una vocale
        if (msg[i] == 'a' || msg[i] == 'e' || msg[i] == 'i' || msg[i] == 'o' || msg[i] == 'u') {
            //inserisco la 'f'
            j++;
            fsg[j] = 'f';

            //ripeto la vocale dopo la 'f'
            j++;
            fsg[j] = msg[i];
        }
    }

    printf("%s\n%s\n", msg, fsg);
}
