import 'dart:io';

void main() {
  
  const double costoBase = 300000;
  const double costoAdicional300to1000 = 15000;
  const double costoAdicionalMasDe1000 = 10000;
  const int limite300 = 300;
  const int limite1000 = 1000;
  const double iva = 0.20;

  
  stdout.write("Ingrese la cantidad de kilómetros recorridos: ");
  int kilometrosRecorridos = int.parse(stdin.readLineSync()!);

 
  double montoBase = costoBase;

  
  double montoAdicional = 0;
  if (kilometrosRecorridos > limite300 && kilometrosRecorridos <= limite1000) {
    montoAdicional = (kilometrosRecorridos - limite300) * costoAdicional300to1000;
  } else if (kilometrosRecorridos > limite1000) {
    montoAdicional = (kilometrosRecorridos - limite1000) * costoAdicionalMasDe1000;
  }


  double montoTotalAntesImpuestos = montoBase + montoAdicional;

  
  double montoTotalConIVA = montoTotalAntesImpuestos * (1 + iva);

  
  print("\nResumen del alquiler:");
  print("Monto base: \$$montoBase");
  print("Monto adicional: \$$montoAdicional");
  print("Monto total antes de impuestos: \$$montoTotalAntesImpuestos");
  print("Monto total con impuestos (IVA incluido): \$$montoTotalConIVA");
}
