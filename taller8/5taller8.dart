import 'dart:io';

void main() {
 
  stdout.write("Ingrese el número de pasajeros: ");
  int numeroPasajeros = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el valor del pasaje: ");
  int valorPasaje = int.parse(stdin.readLineSync()!);

  
  int totalGenerado = numeroPasajeros * valorPasaje;

  
  double gananciaConductor = 0;
  if (numeroPasajeros < 300) {
    gananciaConductor = 0;
  } else if (numeroPasajeros <= 500) {
    gananciaConductor = totalGenerado * 0.20;
  } else {
    gananciaConductor = totalGenerado * 0.30;
  }


  double dineroEntregado = totalGenerado - gananciaConductor;

  
  print("El conductor debe entregar al dueño del bus: \$$dineroEntregado");
}
