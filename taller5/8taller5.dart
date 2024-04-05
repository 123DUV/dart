import 'dart:math';
import 'dart:io';

void main() {
 
  Random random = Random();
  int numero1 = random.nextInt(101);
  int numero2 = random.nextInt(101);

  
  int sumaCorrecta = numero1 + numero2;

  
  int respuestaUsuario;
  bool respuestaCorrecta = false;

  while (!respuestaCorrecta) {
    stdout.write("¿Cuál es la suma de $numero1 y $numero2?: ");
    respuestaUsuario = int.parse(stdin.readLineSync()!);

    
    if (respuestaUsuario == sumaCorrecta) {
      respuestaCorrecta = true;
      print("¡Respuesta correcta!");
    } else {
      print("Respuesta incorrecta. Inténtalo de nuevo.");
    }
  }
}
