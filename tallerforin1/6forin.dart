import 'dart:io';

void main() {
 
  List<String> asignaturas = ["Matemáticas", "Física", "Química", "Historia", "Lengua"];

  
  List<String> asignaturasARepetir = [];

  
  for (String asignatura in asignaturas) {
    stdout.write("Ingrese la nota que ha sacado en $asignatura: ");
    double nota = double.parse(stdin.readLineSync()!);
    
    
    if (nota < 5) {
      asignaturasARepetir.add(asignatura); 
    }
  }

  
  if (asignaturasARepetir.isEmpty) {
    print("¡Felicidades! No tienes que repetir ninguna asignatura.");
  } else {
    print("Debes repetir las siguientes asignaturas:");
    for (String asignatura in asignaturasARepetir) {
      print(asignatura);
    }
  }
}
