import 'dart:io';

void main() {
  int cantidadNumeros;
  double suma = 0;

  stdout.write("Ingrese la cantidad de números para calcular el promedio: ");
  cantidadNumeros = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantidadNumeros; i++) {
    stdout.write("Ingrese el número ${i + 1}: ");
    double numero = double.parse(stdin.readLineSync()!);
    suma += numero;
  }

  double promedio = suma / cantidadNumeros;
  print("El promedio de los $cantidadNumeros números es: $promedio");
}
