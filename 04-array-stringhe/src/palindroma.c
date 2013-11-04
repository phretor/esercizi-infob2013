#define LEN 256

#include <stdio.h>
#include <string.h>

int main() {
    char frase[LEN+1];

    //indice
    int i;
    int len;

    printf("Inserisci una frase\n");
    gets(frase);

    len = strlen(frase);

    /*
     Scorro l'array in due direzioni opposte e controllo se le lettere non sono
     uguali. Mi basta trovare due lettere diverse per uscire dal ciclo e
     dichiarare la frase come non palindroma.

     Esempio (caso di lunghezza dispari):

     "abbabba"

     len = 7

     len/2 = 3 (int)

     Ad ogni ciclo, i e len-i-1 prendono i seguenti valori:

     i = 0 1 2

     len-i-1 = 6 5 4

     Quindi i confronti fatti sono:

     frase[0] == frase[6] --> vero
     frase[1] == frase[5] --> vero
     frase[2] == frase[4] --> vero

     prima di uscire dal ciclo i viene incrementata a 3

     3 = i < len/2 = 3 --> falso, quindi palindroma

     --

     Esempio (caso di lunghezza pari):

     "sabbas"

     len = 6

     len/2 = 3

     Ad ogni ciclo, i e len-i-1 prendono i seguenti valori:

     i = 0 1 2

     len-i-1 = 5 4 3

     Quindi i confronti fatti sono:

     frase[0] == frase[5] --> vero
     frase[1] == frase[4] --> vero
     frase[2] == frase[3] --> vero

     prima di uscire dal ciclo i viene incrementata a 3

     3 = i < len/2 = 3 --> falso

     --

     Esempio (non palindroma):

     "sabcas"

     len = 6

     len/2 = 3

     Ad ogni ciclo, i e len-i-1 prendono i seguenti valori:

     i = 0 1 2

     len-i-1 = 5 4 3

     Quindi i confronti fatti sono:

     frase[0] == frase[5] --> vero
     frase[1] == frase[4] --> vero
     frase[2] == frase[3] --> falso --> si esce dal ciclo

     il contatore i non viene incrementato, quindi

     2 = i < len/2 = 3 --> vero
    */

    for (i = 0; i < len/2 && frase[i] == frase[len-i-1]; i++) {
	/*
	  non faccio nulla - equivale a scrivere:

	  for (i = 0; i < len/2 && frase[i] == frase[len-i-1]; i++);
	*/
    }

    if (i < len/2) //uscita prematura?
        printf("non ");

    printf("palindroma\n");
}
