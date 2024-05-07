import 'dart:io';

void main() {
  
  var cestaCompra = <String, double>{};

  
  while (true) {
    stdout.write("Ingrese el artículo (o 'fin' para terminar): ");
    var articulo = stdin.readLineSync()!;
    if (articulo == 'fin') {
      break;
    }

    stdout.write("Ingrese el precio del artículo: ");
    var precio = double.parse(stdin.readLineSync()!);

    
    cestaCompra[articulo] = precio;
  }

  
  print("\nLista de la compra:");
  double total = 0;
  cestaCompra.forEach((articulo, precio) {
    print("$articulo - \$${precio.toStringAsFixed(2)}");
    total += precio;
  });
  print("Coste total: \$${total.toStringAsFixed(2)}");
}
