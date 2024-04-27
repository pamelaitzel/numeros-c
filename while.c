#include <stdio.h>

int main() {
    int vector[10];
    int i = 0;

    
    while (i < 10) {
        vector[i] = 10;
        i++;
    }

    
    printf("Contenido del vector:\n");
    i = 0; 
    while (i < 10) {
        printf("Posición %d: %d\n", i, vector[i]);
        i++;
    }

    return 0;
}