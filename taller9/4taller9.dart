import 'dart:math';
import 'dart:io';

void main() {
  
  Random random = Random();
  int numero1 = random.nextInt(101);
  int numero2 = random.nextInt(101);

  
  int sumaCorrecta = numero1 + numero2;

  int respuestaUsuario;

  
  do {
    stdout.write("Por favor, calcule e introduzca la suma de $numero1 y $numero2: ");
    respuestaUsuario = int.parse(stdin.readLineSync()!);

   
    if (respuestaUsuario != sumaCorrecta) {
      print("Respuesta incorrecta");
    }
  } while (respuestaUsuario != sumaCorrecta);

  print("¡Respuesta correcta!");
}
