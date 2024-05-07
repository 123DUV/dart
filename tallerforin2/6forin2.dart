import 'dart:io';

void main() {
  
  var persona = <String, dynamic>{};

  
  while (true) {
    stdout.write("Ingrese el nombre del dato (o 'fin' para terminar): ");
    var dato = stdin.readLineSync()!;
    if (dato == 'fin') {
      break;
    }

    stdout.write("Ingrese el valor del dato: ");
    var valor = stdin.readLineSync()!;

    
    persona[dato] = valor;

    
    print("Contenido del diccionario:");
    persona.forEach((key, value) {
      print("$key: $value");
    });
    print('');
  }
}
