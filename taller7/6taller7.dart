import 'dart:io';

void main() {
 
  print("Opciones de candidatos:");
  print("A. Candidato A por el partido rojo");
  print("B. Candidato B por el partido verde");
  print("C. Candidato C por el partido azul");

 
  stdout.write("Ingrese la letra correspondiente al candidato por el cual desea votar: ");
  String opcion = stdin.readLineSync()!.toUpperCase();

  
  String mensaje;

  switch (opcion) {
    case 'A':
      mensaje = "Usted ha votado por el partido rojo.";
      break;
    case 'B':
      mensaje = "Usted ha votado por el partido verde.";
      break;
    case 'C':
      mensaje = "Usted ha votado por el partido azul.";
      break;
    default:
      mensaje = "Opción errónea.";
      break;
  }

  
  print(mensaje);
}
