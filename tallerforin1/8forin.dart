import 'dart:io';

void main() {
 
  stdout.write("Ingrese una palabra: ");
  String palabra = stdin.readLineSync()!.toLowerCase();

  
  int contadorA = contarVocal(palabra, 'a');
  int contadorE = contarVocal(palabra, 'e');
  int contadorI = contarVocal(palabra, 'i');
  int contadorO = contarVocal(palabra, 'o');
  int contadorU = contarVocal(palabra, 'u');

 
  print("Número de veces que contiene cada vocal en la palabra:");
  print("A: $contadorA");
  print("E: $contadorE");
  print("I: $contadorI");
  print("O: $contadorO");
  print("U: $contadorU");
}


int contarVocal(String palabra, String vocal) {
  int contador = 0;
  for (int i = 0; i < palabra.length; i++) {
    if (palabra[i] == vocal) {
      contador++;
    }
  }
  return contador;
}
