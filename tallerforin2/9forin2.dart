import 'dart:io';

void main() {
  
  var facturas = <int, double>{};
  double totalCobrado = 0;

  
  while (true) {
    
    double totalPendiente = facturas.values.fold(0, (a, b) => a + b);
    print("Cantidad cobrada hasta el momento: ${totalCobrado.toStringAsFixed(2)}");
    print("Cantidad pendiente de cobro: ${totalPendiente.toStringAsFixed(2)}");

   
    print("\nOpciones:");
    print("1. Añadir nueva factura");
    print("2. Pagar una factura existente");
    print("3. Terminar");
    stdout.write("Seleccione una opción: ");
    var opcion = stdin.readLineSync();

    if (opcion == '1') {
      
      stdout.write("Ingrese el número de factura: ");
      var numeroFactura = int.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el coste de la factura: ");
      var costeFactura = double.parse(stdin.readLineSync()!);

      facturas[numeroFactura] = costeFactura;
    } else if (opcion == '2') {
     
      stdout.write("Ingrese el número de factura a pagar: ");
      var numeroFactura = int.parse(stdin.readLineSync()!);

      if (facturas.containsKey(numeroFactura)) {
        var costeFactura = facturas.remove(numeroFactura)!;
        totalCobrado += costeFactura;
        print("Factura $numeroFactura pagada con éxito.");
      } else {
        print("La factura $numeroFactura no existe.");
      }
    } else if (opcion == '3') {
      
      break;
    } else {
      print("Opción inválida");
    }
  }
}
