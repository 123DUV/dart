import 'dart:io';

void main() {
  int cantidadEmpleados;
  int contador = 0;
  int empleados100a300 = 0;
  int empleadosMas300 = 0;
  double totalSueldos = 0;

  stdout.write("Ingrese la cantidad de empleados: ");
  cantidadEmpleados = int.parse(stdin.readLineSync()!);

  while (contador < cantidadEmpleados) {
    double sueldo;
    stdout.write("Ingrese el sueldo del empleado ${contador + 1}: ");
    sueldo = double.parse(stdin.readLineSync()!);

    totalSueldos += sueldo;

    if (sueldo >= 100 && sueldo <= 300) {
      empleados100a300++;
    } else if (sueldo > 300) {
      empleadosMas300++;
    }

    contador++;
  }

  print("Cantidad de empleados que cobran entre 100 y 300: $empleados100a300");
  print("Cantidad de empleados que cobran más de 300: $empleadosMas300");
  print("La empresa gasta un total de ${totalSueldos.toStringAsFixed(2)} en sueldos.");
}
