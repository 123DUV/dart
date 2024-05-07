import 'dart:io';

void main() {
  List<int> lista1 = [];
  List<int> lista2 = [];

 
  print("Ingrese los 15 valores para la Lista 1:");
  for (int i = 0; i < 15; i++) {
    stdout.write("Valor ${i + 1}: ");
    int valor = int.parse(stdin.readLineSync()!);
    lista1.add(valor);
  }

  
  print("\nIngrese los 15 valores para la Lista 2:");
  for (int i = 0; i < 15; i++) {
    stdout.write("Valor ${i + 1}: ");
    int valor = int.parse(stdin.readLineSync()!);
    lista2.add(valor);
  }

  
  int sumaLista1 = lista1.reduce((a, b) => a + b);
  int sumaLista2 = lista2.reduce((a, b) => a + b);

  
  if (sumaLista1 > sumaLista2) {
    print("\nLista 1 mayor");
  } else if (sumaLista2 > sumaLista1) {
    print("\nLista 2 mayor");
  } else {
    print("\nListas iguales");
  }
}
