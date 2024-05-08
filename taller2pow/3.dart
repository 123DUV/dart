void calcularHorasExtras(double horasTrabajadas, double horasNormales) {
  double horasExtras = horasTrabajadas - horasNormales;
  if (horasExtras > 0) {
    double minutosExtras = horasExtras * 60; 
    print('El empleado tiene $horasExtras horas extras.');
    print('Se deben pagar $minutosExtras minutos extras.');
  } else {
    print('El empleado no tiene horas extras.');
  }
}

void main() {
  double horasTrabajadas = 45;
  double horasNormales = 40; 
  calcularHorasExtras(horasTrabajadas, horasNormales);
}
