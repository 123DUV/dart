import 'dart:io';


class Empleado {
  String documento;
  double sueldoBase;
  double pagoHoraExtra;
  int horasExtra;
  bool casado;
  int hijos;

  Empleado(this.documento, this.sueldoBase, this.pagoHoraExtra, this.horasExtra, this.casado, this.hijos);

  double calcularPagoHorasExtra() {
    return pagoHoraExtra * horasExtra;
  }

  double calcularSueldoBruto() {
    return sueldoBase + calcularPagoHorasExtra();
  }

  double calcularRetenciones() {
    double porcentajeRetenciones = 0;
    if (casado) {
      porcentajeRetenciones += 2;
    }
    porcentajeRetenciones += hijos;

    return (porcentajeRetenciones / 100) * calcularSueldoBruto();
  }

  double calcularSueldoNeto() {
    return calcularSueldoBruto() - calcularRetenciones();
  }

  void mostrarInformacionBasica() {
    print("documento: $documento");
    print("Sueldo Base: $sueldoBase");
    print("Casado: $casado");
    print("Numero de Hijos: $hijos");
  }

  void mostrarTodaInformacion() {
    print("documento: $documento");
    print("Sueldo Base: $sueldoBase");
    print("Pago por Hora Extra: $pagoHoraExtra");
    print("Horas Extra: $horasExtra");
    print("Casado: $casado");
    print("Numero de Hijos: $hijos");
    print("Sueldo Bruto: ${calcularSueldoBruto()}");
    print("Retenciones: ${calcularRetenciones()}");
    print("Sueldo Neto: ${calcularSueldoNeto()}");
  }
}


class EmpleadoTemporal extends Empleado {
  int duracionContrato; 
  EmpleadoTemporal(String documento, double sueldoBase, double pagoHoraExtra, int horasExtra, bool casado, int hijos, this.duracionContrato)
      : super(documento, sueldoBase, pagoHoraExtra, horasExtra, casado, hijos);

  @override
  void mostrarTodaInformacion() {
    super.mostrarTodaInformacion();
    print("Duracion del Contrato: $duracionContrato meses");
  }
}

void main() {
  bool continuar = true;
  Empleado empleado1 = EmpleadoTemporal("123456789", 1500, 10, 8, true, 2, 12);

  while (continuar) {
    print("a. Informacion basica del empleado");
    print("b. Ver toda la informacion del empleado");
    print("c. Salir");
    print("¿Qué deseas hacer?");
    dynamic opcion = stdin.readLineSync();

    switch (opcion) {
      case 'a':
        empleado1.mostrarInformacionBasica();
        break;
      case 'b':
        empleado1.mostrarTodaInformacion();
        break;
      case 'c':
        continuar = false;
        break;
    }
  }
}
