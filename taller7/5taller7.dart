import 'dart:io';

void main() {
  
  print("¿Qué tipo de pizza desea?");
  print("1. Pizza vegetariana");
  print("2. Pizza no vegetariana");
  stdout.write("Ingrese su elección (1 o 2): ");
  int opcion = int.parse(stdin.readLineSync()!);

 
  String tipoPizza;
  String ingredienteAdicional = "";
  int precioBase;

 
  if (opcion == 1) {
    tipoPizza = "vegetariana";
    precioBase = 8000; 
  } else if (opcion == 2) {
    tipoPizza = "no vegetariana";
    precioBase = 10000; 
  } else {
    print("Opción no válida.");
    return;
  }

  
  print("\nIngredientes adicionales disponibles:");
  if (tipoPizza == "vegetariana") {
    print("1. Pimiento (+\$1000)");
    print("2. Tofu (+\$2000)");
    print("3. Champiñones (+\$3000)");
  } else {
    print("1. Pepperoni (+\$2000)");
    print("2. Jamón (+\$3000)");
    print("3. Salmón (+\$5000)");
  }


  stdout.write("Seleccione un ingrediente adicional (1-3): ");
  int opcionIngrediente = int.parse(stdin.readLineSync()!);

  
  if (opcionIngrediente == 1) {
    ingredienteAdicional = tipoPizza == "vegetariana" ? "Pimiento" : "Pepperoni";
    precioBase += tipoPizza == "vegetariana" ? 1000 : 2000;
  } else if (opcionIngrediente == 2) {
    ingredienteAdicional = tipoPizza == "vegetariana" ? "Tofu" : "Jamón";
    precioBase += tipoPizza == "vegetariana" ? 2000 : 3000;
  } else if (opcionIngrediente == 3) {
    ingredienteAdicional = tipoPizza == "vegetariana" ? "Champiñones" : "Salmón";
    precioBase += tipoPizza == "vegetariana" ? 3000 : 5000;
  } else {
    print("Opción no válida.");
    return;
  }

 
  print("\nUsted ha ordenado una pizza $tipoPizza");
  if (ingredienteAdicional.isNotEmpty) {
    print("Con ingrediente adicional: $ingredienteAdicional");
  }
  print("El precio a pagar es: \$$precioBase");
}
