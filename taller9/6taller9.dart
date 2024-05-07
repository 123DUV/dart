import 'dart:io';

void main() {
  stdout.write("Ingrese el primer número entero: ");
  int numero1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número entero: ");
  int numero2 = int.parse(stdin.readLineSync()!);

  int cantidadNumeros = 0;

  while (true) {
    stdout.write("Ingrese un número entero entre $numero1 y $numero2 (o un número fuera del rango para terminar): ");
    int numero = int.parse(stdin.readLineSync()!);

    if (numero < numero1 || numero > numero2) {
      break; 
    }

    cantidadNumeros++;
  }

  print("La cantidad de números escritos entre $numero1 y $numero2 es: $cantidadNumeros");
}
