import 'dart:io';

void main() {
  
  stdout.write("Ingrese su puntuación: ");
  int puntuacion = int.parse(stdin.readLineSync()!);

  
  String nivel;
  int cantidadDinero;

  if (puntuacion < 20) {
    nivel = "Inaceptable";
    cantidadDinero = 0;
    print("Llamado de atención: Su rendimiento es inaceptable.");
  } else if (puntuacion == 20) {
    nivel = "Regular";
    cantidadDinero = 200000 * puntuacion;
  } else if (puntuacion == 40) {
    nivel = "Aceptable";
    cantidadDinero = 200000 * puntuacion;
  } else if (puntuacion == 60) {
    nivel = "Sobresaliente";
    cantidadDinero = 200000 * puntuacion;
  } else {
    nivel = "Excelente";
    cantidadDinero = 200000 * puntuacion;
  }

  
  print("Su nivel de rendimiento es $nivel.");
  print("Usted recibirá un bono de \$${cantidadDinero.toStringAsFixed(2)}.");
}


