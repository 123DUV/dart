import 'dart:io';

void main() {
  
  stdout.write("Ingrese el valor hora del empleado: ");
  double valorHora = double.parse(stdin.readLineSync()!);

  
  stdout.write("Ingrese el nombre del empleado: ");
  String nombreEmpleado = stdin.readLineSync()!;

  
  stdout.write("Ingrese la antigüedad del empleado en años: ");
  int antiguedad = int.parse(stdin.readLineSync()!);

  
  stdout.write("Ingrese la cantidad de horas trabajadas en el mes: ");
  int horasTrabajadas = int.parse(stdin.readLineSync()!);

  
  double totalBruto = (valorHora * horasTrabajadas) + (antiguedad * 30000);

  
  double descuentos = totalBruto * 0.13;

  
  double valorNeto = totalBruto - descuentos;

  
  print("\nRecibo de pago:");
  print("Nombre del empleado: $nombreEmpleado");
  print("Antigüedad: $antiguedad años");
  print("Valor hora: ${valorHora.toStringAsFixed(2)}");
  print("Total a cobrar en bruto: ${totalBruto.toStringAsFixed(2)}");
  print("Total de descuentos: ${descuentos.toStringAsFixed(2)}");
  print("Valor neto a cobrar: ${valorNeto.toStringAsFixed(2)}");
}
