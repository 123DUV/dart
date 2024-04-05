import 'dart:io';

void main() {
  String mes = "febrero"; 
  double importeCompra = 100.0;

  
  Map<String, double> descuentosPorMes = {
    "enero": 0.15,
    "febrero": 0.15,
    "marzo": 0.15,
    "abril": 0.20,
    "mayo": 0.20,
    "junio": 0.20,
  };

  
  double descuento = descuentosPorMes[mes.toLowerCase()] ?? 0.0;

  
  double importeCobrar = importeCompra - (importeCompra * descuento);

 
  print("El importe a cobrar al cliente en $mes es: ${importeCobrar.toStringAsFixed(2)}");
}
