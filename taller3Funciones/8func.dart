import 'dart:io';


double suma(double num1, double num2) {
  return num1 + num2;
}

double resta(double num1, double num2) {
  return num1 - num2;
}

double multiplicacion(double num1, double num2) {
  return num1 * num2;
}

double division(double num1, double num2) {
  if (num2 != 0) {
    return num1 / num2;
  } else {
    print("Error: No se puede dividir por cero.");
    return double.nan;
  }
}


void mostrarMenu() {
  print("=== Calculadora ===");
  print("1. Suma");
  print("2. Resta");
  print("3. Multiplicación");
  print("4. División");
  print("5. Salir");
}

void main() {
  int? opcion;
  double num1, num2;

  while (opcion != 5) {
    mostrarMenu();
    stdout.write("Seleccione una opción: ");
    opcion = int.tryParse(stdin.readLineSync()!);

    if (opcion == null || opcion < 1 || opcion > 5) {
      print("Opción inválida. Por favor, seleccione una opción del 1 al 5.");
      continue;
    }

    if (opcion == 5) {
      break;
    }

    stdout.write("Ingrese dos números: ");
    num1 = double.parse(stdin.readLineSync()!);
    num2 = double.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("El resultado de la suma es: ${suma(num1, num2)}");
        break;
      case 2:
        print("El resultado de la resta es: ${resta(num1, num2)}");
        break;
      case 3:
        print("El resultado de la multiplicación es: ${multiplicacion(num1, num2)}");
        break;
      case 4:
        print("El resultado de la división es: ${division(num1, num2)}");
        break;
    }
  }
}
