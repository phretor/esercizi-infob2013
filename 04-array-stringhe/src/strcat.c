#define LEN 100

#include <stdio.h>

int main()
{
    int i, j;

    /*

      str1[0] = 'c';
      str1[1] = 'i';
      str1[2] = 'a';
      str1[3] = 'o';
      str1[4] = '\0';

      str2[0] = 'm';
      str2[1] = 'a';
      str2[2] = 'r';
      str2[3] = 'e';
      str2[4] = '\0';

      cat[0] = str1[0] = 'c';
      cat[1] = str1[1] = 'i';
      cat[2] = str1[2] = 'a';
      cat[3] = str1[3] = 'o';
      cat[4] = str2[0] = 'm';
      cat[5] = str2[1] = 'a';
      cat[6] = str2[2] = 'r';
      cat[7] = str2[3] = 'e';
      cat[8] = '\0';

     */

    char str1[LEN+1];
    char str2[LEN+1];
    char cat[2*LEN+1];

    printf("str1 = ");
    gets(str1);

    printf("str2 = ");
    gets(str2);

    for (i = 0; str1[i] != '\0'; i++) {
        printf("cat[%d] = str[%d] = %c\n", i, i, str1[i]);
        cat[i] = str1[i];
    }

    for (j = 0; str2[j] != '\0'; j++) {
        printf("cat[%d] = str[%d] = %c\n", i+j, i, str2[j]);
        cat[i+j] = str2[j];
    }

    cat[i+j] = '\0';

    printf("cat = %s\n", cat);
}

