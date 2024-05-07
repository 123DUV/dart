import 'dart:io';

void main() {
  
  stdout.write("Ingrese el número de empleados: ");
  int numeroEmpleados = int.parse(stdin.readLineSync()!);

  
  stdout.write("Ingrese el número de horas trabajadas por cada empleado: ");
  double horasTrabajadas = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el valor por hora: ");
  double valorPorHora = double.parse(stdin.readLineSync()!);

  double totalPagarPorEmpleado = horasTrabajadas * valorPorHora;

  
  double subsidioTransporte = 0.0;
  if (numeroEmpleados > 50) {
    subsidioTransporte = totalPagarPorEmpleado * 0.20;
  }

 
  double totalPagarConSubsidio = totalPagarPorEmpleado + subsidioTransporte;

  
  double nominaTotal = totalPagarConSubsidio * numeroEmpleados;

  
  print("La nómina total de la empresa es: \$${nominaTotal.toStringAsFixed(2)}");
}
