import 'dart:io';

void main() {
  int cantidadPiezas;
  int contador = 0;

  stdout.write("Ingrese la cantidad de piezas a procesar: ");
  cantidadPiezas = int.parse(stdin.readLineSync()!);

  while (cantidadPiezas > 0) {
    double longitud;
    stdout.write("Ingrese la longitud del perfil: ");
    longitud = double.parse(stdin.readLineSync()!);

    if (longitud >= 1.20 && longitud <= 1.30) {
      contador++;
    }

    cantidadPiezas--;
  }

  print("La cantidad de piezas aptas en el lote es: $contador");
}
