import 'dart:io';

void main() {
  stdout.write("Ingrese una cadena de caracteres: ");
  String cadena = stdin.readLineSync()!.toLowerCase();

  Map<String, int> conteoVocales = contarVocales(cadena);

  print("Número de apariciones de cada vocal en la cadena:");
  for (String vocal in conteoVocales.keys) {
    print("$vocal: ${conteoVocales[vocal]}");
  }
}

Map<String, int> contarVocales(String cadena) {
  Map<String, int> conteoVocales = {'a': 0, 'e': 0, 'i': 0, 'o': 0, 'u': 0};

  for (int i = 0; i < cadena.length; i++) {
    String caracter = cadena[i];
    if (conteoVocales.containsKey(caracter)) {
      conteoVocales[caracter] = conteoVocales[caracter]! + 1;
    }
  }

  return conteoVocales;
}
