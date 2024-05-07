import 'dart:io';

void main() {
 
  stdout.write("Ingrese el valor de la compra: ");
  double valorCompra = double.parse(stdin.readLineSync()!);

  double descuento = 0.0;

  
  if (valorCompra > 200000) {
    descuento = 0.20; 
  } else if (valorCompra > 100000) {
    descuento = 0.10;
  }

  
  double montoDescontado = valorCompra * descuento;
  double montoFinal = valorCompra - montoDescontado;

  
  print("El monto final a pagar es: ${montoFinal.toStringAsFixed(2)}");
}
