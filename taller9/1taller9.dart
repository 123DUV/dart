import 'dart:io';

void main() {
  int numero1, numero2;

  
  stdout.write("Ingrese el primer número positivo: ");
  numero1 = int.parse(stdin.readLineSync()!);

  while (numero1 <= 0) {
    print("El número ingresado no es positivo.");
    stdout.write("Ingrese el primer número positivo: ");
    numero1 = int.parse(stdin.readLineSync()!);
  }

  
  stdout.write("Ingrese el segundo número positivo: ");
  numero2 = int.parse(stdin.readLineSync()!);
  while (numero2 <= 0) {
    print("El número ingresado no es positivo. ");
    stdout.write("Ingrese el segundo número positivo: ");
    numero2 = int.parse(stdin.readLineSync()!);
  }

 
  int mayor, menor;
  if (numero1 > numero2) {
    mayor = numero1;
    menor = numero2;
  } else {
    mayor = numero2;
    menor = numero1;
  }

  
  print("Los números pares entre $menor y $mayor son:");
  int num = menor;
  if (num % 2 != 0) { 
    num++;
  }
  while (num <= mayor) {
    print(num);
    num += 2; 
  }
}
