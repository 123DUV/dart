import 'dart:io';

void main() {
  int cantidadAlumnos;
  int contadorMayorIgual7 = 0;
  int contadorMenor7 = 0;
  int contador = 0;

  stdout.write("Ingrese la cantidad de alumnos: ");
  cantidadAlumnos = int.parse(stdin.readLineSync()!);

  while (contador < cantidadAlumnos) {
    double nota;
    stdout.write("Ingrese la nota del alumno ${contador + 1}: ");
    nota = double.parse(stdin.readLineSync()!);

    if (nota >= 7) {
      contadorMayorIgual7++;
    } else {
      contadorMenor7++;
    }

    contador++;
  }

  print("Cantidad de alumnos con notas mayores o iguales a 7: $contadorMayorIgual7");
  print("Cantidad de alumnos con notas menores a 7: $contadorMenor7");
}
