#define LEN 256

#include <stdio.h>
#include <string.h>

int main () {

    int i, k, len;
    char str[LEN];

    /* Acquisizione */
    do {
	printf("Inserire una frase da tradurre: ");
	gets(str);
	len = strlen(str);
    } while (len > LEN);

    /* Lettura da sx a dx */
    for (i = 0; i <= len; i++) {
	if (str[i] == 'a'||
	    str[i] == 'e'||
	    str[i] == 'i'||
	    str[i] == 'o'||
	    str[i] == 'u') {

	    /* Shift a dx di 2 posizioni */
	    for(k = len; k > i ; k--)
		str[k + 2] = str[k];

	    str[i+1] = 'f';
	    str[i+2] = str[i];

	    i = i + 2;
	    len = len + 2;
	}
    }

    printf("%s\n", str);
}
