import 'dart:io';

void main() {
  List<int> numerosGanadores = [];

  
  for (int i = 1; i <= 6; i++) {
    stdout.write("Ingrese el número ganador $i: ");
    int numero = int.parse(stdin.readLineSync()!);
    numerosGanadores.add(numero);
  }

  
  numerosGanadores.sort();

 
  print("Los números ganadores de la lotería son:");
  for (int numero in numerosGanadores) {
    print(numero);
  }
}
