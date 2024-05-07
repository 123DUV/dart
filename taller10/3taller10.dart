import 'dart:io';

void main() {
  int cantidadPersonas;
  double sumaAlturas = 0;
  int contador = 0;

  stdout.write("Ingrese la cantidad de personas: ");
  cantidadPersonas = int.parse(stdin.readLineSync()!);

  while (contador < cantidadPersonas) {
    double altura;
    stdout.write("Ingrese la altura de la persona ${contador + 1}: ");
    altura = double.parse(stdin.readLineSync()!);

    sumaAlturas += altura;
    contador++;
  }

  double alturaPromedio = sumaAlturas / cantidadPersonas;
  print("La altura promedio de las personas es: $alturaPromedio");
}
