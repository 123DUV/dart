import 'dart:io';

void main() {
  
  var usuario = <String, dynamic>{};

  
  var campos = ['nombre', 'edad', 'dirección', 'teléfono'];
  for (var campo in campos) {
    stdout.write("Ingrese su $campo: ");
    usuario[campo] = stdin.readLineSync();
  }

  
  print("${usuario['nombre']} tiene ${usuario['edad']} años, vive en ${usuario['dirección']} y su número de teléfono es ${usuario['teléfono']}.");
}
