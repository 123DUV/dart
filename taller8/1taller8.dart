import 'dart:io';

void main() {
  
  stdout.write("Ingrese la cantidad de docenas compradas: ");
  int cantidadDocenas = int.parse(stdin.readLineSync()!);

  
  double precioPorDocena = 1200; 
  double descuentoBase = 0.10; 

  
  double montoCompraSinDescuento = cantidadDocenas * precioPorDocena * 12;


  double montoDescuento = 0;
  int unidadesObsequio = 0;

  
  if (cantidadDocenas > 3) {
    
    descuentoBase = 0.15; 
    montoDescuento = montoCompraSinDescuento * descuentoBase;

    
    unidadesObsequio = (cantidadDocenas - 3) * 12;
  } else {
   
    montoDescuento = montoCompraSinDescuento * descuentoBase;
  }

 
  double montoAPagar = montoCompraSinDescuento - montoDescuento;

 
  print("\nResumen de la compra:");
  print("Cantidad de docenas compradas: $cantidadDocenas");
  print("Monto de la compra sin descuento: \$$montoCompraSinDescuento");
  print("Descuento aplicado: \$$montoDescuento");
  print("Monto a pagar: \$$montoAPagar");
  print("Unidades de obsequio: $unidadesObsequio");
}
