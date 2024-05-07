import 'dart:io';
void main() {
  List<String> estudiantes = ["H", "M", "M", "H", "H", "M", "M", "H", "H", "M"]; 

  int cantidadHombres = 0;
  int cantidadMujeres = 0;

 
  for (var estudiante in estudiantes) {
    if (estudiante == "H") {
      cantidadHombres++;
    } else if (estudiante == "M") {
      cantidadMujeres++;
    }
  }

  
  double porcentajeHombres = (cantidadHombres / estudiantes.length) * 100;
  double porcentajeMujeres = (cantidadMujeres / estudiantes.length) * 100;

  
  print("Porcentaje de hombres: ${porcentajeHombres.toStringAsFixed(2)}%");
  print("Porcentaje de mujeres: ${porcentajeMujeres.toStringAsFixed(2)}%");

  
  if (porcentajeHombres > porcentajeMujeres) {
    print("Mayor cantidad de hombres: ${porcentajeHombres.toStringAsFixed(2)}%");
  } else if (porcentajeMujeres > porcentajeHombres) {
    print("Mayor cantidad de mujeres: ${porcentajeMujeres.toStringAsFixed(2)}%");
  } else {
    print("Igual cantidad de hombres y mujeres");
  }
}
