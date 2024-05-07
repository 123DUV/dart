import 'dart:io';

import 'dart:io';

void main() {
  
  stdout.write("Ingrese el primer número: ");
  double numero1 = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  double numero2 = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el tercer número: ");
  double numero3 = double.parse(stdin.readLineSync()!);

  
  if (numero1 > numero2) {
    double temp = numero1;
    numero1 = numero2;
    numero2 = temp;
  }
  if (numero2 > numero3) {
    double temp = numero2;
    numero2 = numero3;
    numero3 = temp;
  }
  if (numero1 > numero2) {
    double temp = numero1;
    numero1 = numero2;
    numero2 = temp;
  }

  
  print("Los números ordenados de menor a mayor son: $numero1, $numero2, $numero3");
}
