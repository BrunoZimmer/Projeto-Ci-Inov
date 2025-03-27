#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    const char str1[] = "Texto exemplo para Curso";
    char str2[] = "Formacao de Cozinheiros Experts";
    char str3[] = "Chips para Microeletronica";

    char *sub_str1, *sub_str2, *sub_str3, *result;

    sub_str1 =  strrchr(str1,' ');
    sub_str2 =  strtok(str2," ");
    sub_str3 =  strrchr(str3,' ');
    
    if (sub_str1 != NULL && sub_str2 != NULL && sub_str3 != NULL) {
        size_t total_length = strlen(sub_str1) + strlen(sub_str2) + strlen(sub_str3) + 2;
        result = (char *)malloc(total_length * sizeof(char));

        if (result == NULL) {
            fprintf(stderr, "Erro ao alocar memória.\n");
            return 1;
        }

        // Concatenar as substrings em 'result'
        strcpy(result, sub_str1);
        strcat(result, " ");
        strcat(result, sub_str2);
        strcat(result, sub_str3);

        puts(result);

        // Liberar a memória alocada
        free(result);
    } else {
        puts("Nenhuma das substrings pôde ser encontrada.");
    }

    return 0;
}
