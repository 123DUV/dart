import 'dart:io';

void main() {
  String contrasena;
  
  do {
    stdout.write("Ingrese la contraseña: ");
    contrasena = stdin.readLineSync()!;
    
    if (contrasena != "1234") {
      print("Contraseña incorrecta");
    }
  } while (contrasena != "1234");

  print("Bienvenido");
}
