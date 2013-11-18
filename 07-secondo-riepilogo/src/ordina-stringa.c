#include <stdio.h>

#define LEN 256

int main () {
    char str[LEN+1];
    char tmp;
    int passi = 0;
    int scambi;
    int i;

    printf("Inserire una stringa: ");
    gets(str);

    do {
	scambi = 0; //non ho scambiato
	for (i = 0; str[i+1] != '\0'; i++) {
	    if (str[i] > str[i+1]) { //se non ordinati
		//scambio
		tmp = str[i];
		str[i] = str[i+1];
		str[i+1] = tmp;
		scambi = 1; //ho dovuto scambiare
		printf("  %d: %s\n", passi, str);
	    }
	}

	printf("%d: %s\n", passi, str);

	passi++;
    } while (scambi); //stop quando scambi non vale 1

    return 0;
}
