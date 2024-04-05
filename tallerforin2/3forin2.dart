import 'dart:io';

void main() {

  var preciosFrutas = {
    'manzana': 2.5,
    'banana': 1.8,
    'naranja': 1.0,
    'pera': 3.2,
    'uva': 4.5
  };

  
  stdout.write("Ingrese el nombre de la fruta: ");
  var fruta = stdin.readLineSync()!.toLowerCase();

  if (preciosFrutas.containsKey(fruta)) {
    stdout.write("Ingrese la cantidad de kilos de $fruta: ");
    var kilos = double.parse(stdin.readLineSync()!);

    
    var precioTotal = preciosFrutas[fruta]! * kilos;
    print("El precio de $kilos kilos de $fruta es: $precioTotal");
  } else {
    print("La fruta $fruta no está en el diccionario de precios.");
  }
}
