import 'dart:io';

void main() {
 
  var diccionario = {'Euro': '€', 'Dollar': '\$', 'Yen': '¥'};

  
  stdout.write("Ingrese una divisa: ");
  String divisa = stdin.readLineSync()!;

  
  bool encontrada = false;
  for (var entry in diccionario.entries) {
    if (entry.key == divisa) {
      print("El símbolo de $divisa es ${entry.value}");
      encontrada = true;
      break;
    }
  }

 
  if (!encontrada) {
    print("La divisa $divisa no está en el diccionario.");
  }
}
