
import 'dart:io';

void main() {
  String usuarioCorrecto = "123";
  String contrasenaCorrecta = "123";
  int intentosRestantes = 3;

  while (intentosRestantes > 0) {
    stdout.write("Ingrese su usuario: ");
    String usuario = stdin.readLineSync()!;
    
    stdout.write("Ingrese su contraseña: ");
    String contrasena = stdin.readLineSync()!;
    
    if (usuario == usuarioCorrecto && contrasena == contrasenaCorrecta) {
      print("Bienvenido");
      break;
    } else {
      intentosRestantes--;
      if (intentosRestantes == 0) {
        print("Acceso denegado. No tiene más intentos.");
      } else {
        print("Usuario o contraseña incorrectos. Intentos restantes: $intentosRestantes");
      }
    }
  }
}
