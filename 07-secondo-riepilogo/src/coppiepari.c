#define MAX 100

#include <stdio.h>

int main () {
    typedef struct {
	int p1, p2;
    } pari;

    int i, n;
    pari arrayCoppiePari[MAX];

    do {
	scanf("%d", &n);
    } while(n <= 0 || n > MAX);

    //primo numero pari == 2
    arrayCoppiePari[0].p1 = 2;

    for (i = 0; i < n; i++) {
	arrayCoppiePari[i+1].p1 = arrayCoppiePari[i].p2 = arrayCoppiePari[i].p1 + 2;
	printf("<p1: %d, p2: %d>\n", arrayCoppiePari[i].p1, arrayCoppiePari[i].p2);
    }

    return 0;
}
