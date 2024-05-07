import 'dart:io';

void main() {
  stdout.write("Ingrese el capital inicial: ");
  double capitalInicial = double.parse(stdin.readLineSync()!);

  double capitalActual = capitalInicial;
  int meses = 0;

  while (capitalActual < capitalInicial * 2) {
    capitalActual *= 1.05; 
    meses++;
  }

  print("El capital se duplicará en $meses meses.");
}
