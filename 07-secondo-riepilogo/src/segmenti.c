#include <stdio.h>

int main () {
    typedef struct {
	float x;
	float y;
    } punto;

    typedef struct {
	punto a;
	punto b;
    } segmento;

    segmento dati[100];
    segmento s;
    segmento ris[100];
    int num_coincidenti;
    int i;

    //[...] inizializzazione della variabile dati

    //1
    printf("Inserire coordinata x del primo punto: ");
    scanf("%f", &s.a.x);

    printf("\nInserire coordinata y del primo punto: ");
    scanf("%f", &s.a.y);

    printf("Inserire coordinata x del secondo punto: ");
    scanf("%f", &s.b.x);

    printf("\nInserire coordinata y del secondo punto: ");
    scanf("%f", &s.b.y);

    //2
    num_coincidenti = 0;
    for (i = 0; i < 100; i++)
	if (dati[i].a.x == s.a.x &&
	    dati[i].a.y == s.a.y &&
	    dati[i].b.x == s.b.x &&
	    dati[i].b.y == s.b.y ||

	    dati[i].b.x == s.a.x &&
	    dati[i].b.y == s.a.y &&
	    dati[i].a.x == s.b.x &&
	    dati[i].a.y == s.b.y) {

	    ris[num_coincidenti].a.x = s.a.x;
	    ris[num_coincidenti].a.y = s.a.y;
	    ris[num_coincidenti].b.x = s.b.x;
	    ris[num_coincidenti].b.y = s.b.y;

	    num_coincidenti++; //3
	}

    //4
    for (i = 0; i < 100-1; i++)
	if (dati[i].b.x == dati[i+1].a.x &&
	    dati[i].b.y == dati[i+1].a.y)
	    printf("(%f, %f)--(%f, %f)--(%f, %f)\n",
		   dati[i].a.x, dati[i].a.y,
		   dati[i].b.x, dati[i].b.y,
		   dati[i+1].a.x, dati[i+1].a.y);

    return 0;
}
