import 'dart:io';

void main() {
  double horasTrabajadas = 45;
  double valorPorHora = 10.0;

  double salario;

  if (horasTrabajadas <= 40) {
    salario = horasTrabajadas * valorPorHora;
  } else {
    double horasExtras = horasTrabajadas - 40;
    salario = (40 * valorPorHora) + (horasExtras * valorPorHora * 1.5);
  }

  print("El salario total del trabajador es: ${salario.toStringAsFixed(2)}");
}
