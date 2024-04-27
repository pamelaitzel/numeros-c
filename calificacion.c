#include <stdio.h>

int main() {

    float calificacion;

    printf("ingrese calificacion del alumno");

     scanf("%f" , &calificacion);
   if (calificacion >=8.0 ) {
       printf("felicidades aprobaste el curso");
    
    }
    printf("no aprobaste");
    return 0;
}