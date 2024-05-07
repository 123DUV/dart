import 'dart:io';

void main() {
  
  stdout.write("Ingrese las palabras y sus traducciones en formato palabra:traducción, separadas por coma: ");
  var entrada = stdin.readLineSync()!;

  
  var traducciones = <String, String>{};
  var pares = entrada.split(', ');
  for (var par in pares) {
    var partes = par.split(':');
    var palabraEsp = partes[0];
    var palabraIng = partes[1];
    traducciones[palabraEsp] = palabraIng;
  }

  
  stdout.write("Ingrese una frase en español: ");
  var fraseEsp = stdin.readLineSync()!;

  
  var palabras = fraseEsp.split(' ');
  var fraseIng = palabras.map((palabra) => traducciones[palabra] ?? palabra).join(' ');

  
  print("La frase traducida es: $fraseIng");
}
