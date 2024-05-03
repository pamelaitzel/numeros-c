#include <stdio.h>

int main() {
    int antiguedad , sueldo;
    printf("ingrese la antiguedad en años en el trabajo");
    scanf("%d" , &antiguedad);
    printf("ingrese el sueldo mensual");
    scanf("%d" , &sueldo);
    if(antiguedad 100 >= 5 && sueldo * 0.1 > 1000) {
        printf("es sujeta a credito");

    }else{
        printf("no es sujeta");
    }
    return 0;
}
