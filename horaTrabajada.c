#include <stdio.h>

int main() {
    float horasTrabadas , preicioHora , salario;
    printf("ingrese horas trabajadas");
    scanf("%f" , &horasTrabadas);
    printf("ingrese el precio por hora");
    scanf("%f" , &preicioHora);
    if(horasTrabadas <= 40) {
        salario = horasTrabadas * preicioHora;

    }else{
        salario = 40 * preicioHora + (horasTrabadas - 40)*1.5*preicioHora;

    }
    printf("el salario del empleado es %2f  pesos\n" , salario);
    return 0;
}