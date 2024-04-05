import 'dart:io';

void main() {

  stdout.write("Ingrese su nombre: ");
  String nombre = stdin.readLineSync()!;
  stdout.write("Ingrese su sexo (M/F): ");
  String sexo = stdin.readLineSync()!.toUpperCase();

  
  String primeraLetraNombre = nombre[0].toUpperCase();


  String grupo;
  if (sexo == 'F') {
    if (primeraLetraNombre.compareTo('N') < 0) {
      grupo = 'A';
    } else {
      grupo = 'B';
    }
  } else if (sexo == 'M') {
    if (primeraLetraNombre.compareTo('M') > 0) {
      grupo = 'A';
    } else {
      grupo = 'B';
    }
  } else {
    print("Sexo inválido");
    return;
  }


  print("Usted pertenece al grupo $grupo.");
}
