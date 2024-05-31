import 'dart:io';


class Pelicula {
  String nombrePeli;
  String genero;
  String pais;

  Pelicula(this.nombrePeli, this.genero, this.pais);

  void mostrarInformacion() {
    print('Título: $nombrePeli, Género: $genero, País: $pais');
  }
}


class PeliculaAccion extends Pelicula {
  int cantidadDeExplosiones;

  PeliculaAccion(String nombrePeli, String genero, String pais, this.cantidadDeExplosiones)
      : super(nombrePeli, genero, pais);

  @override
  void mostrarInformacion() {
    super.mostrarInformacion();
    print('Cantidad de explosiones: $cantidadDeExplosiones');
  }
}

void main() {
  bool continuar = true;
  Map<String, Pelicula> cartelera = {};
  int temp = 1;

  while (continuar) {
    print("a. agregar pelicula");
    print("b. ver pelicula");
    print("c. modificar pelicula");
    print("d. eliminar pelicula");
    print("e. salir");
    print("¿Qué deseas hacer?");
    dynamic opcion = stdin.readLineSync();

    switch (opcion) {
      case 'a':
        print("Ingrese título:");
        String? nombrePeli = stdin.readLineSync();
        print("Ingrese género:");
        String? genero = stdin.readLineSync();
        print("Ingrese país:");
        String? pais = stdin.readLineSync();
        print("Es una película de acción (s/n)?");
        String? esAccion = stdin.readLineSync();

        if (nombrePeli != null && genero != null && pais != null) {
          String idPelicula = "pelicula$temp";
          if (esAccion != null && esAccion.toLowerCase() == 's') {
            print("Ingrese la cantidad de explosiones:");
            int? cantidadDeExplosiones = int.tryParse(stdin.readLineSync()!);
            if (cantidadDeExplosiones != null) {
              agregar(idPelicula, PeliculaAccion(nombrePeli, genero, pais, cantidadDeExplosiones), cartelera);
            }
          } else {
            agregar(idPelicula, Pelicula(nombrePeli, genero, pais), cartelera);
          }
          temp++;
        }
        break;

      case 'b':
        print("Ingresa la película que quieres buscar:");
        String? busqueda = stdin.readLineSync();

        if (busqueda != null) {
          cartelera.forEach((key, pelicula) {
            if (busqueda == key) {
              print("ID: $key");
              pelicula.mostrarInformacion();
            }
          });
        }
        break;

      case 'c':
        print("Ingresa la película que deseas editar:");
        String? editarPelicula = stdin.readLineSync();
        if (editarPelicula != null) {
          editar(editarPelicula, cartelera);
        }
        break;

      case 'd':
        print("Ingresa la película que deseas eliminar:");
        String? borrarPelicula = stdin.readLineSync();
        if (borrarPelicula != null) {
          eliminar(borrarPelicula, cartelera);
        }
        break;

      case 'e':
        continuar = false;
        break;
    }
  }
}

void agregar(String id, Pelicula pelicula, Map<String, Pelicula> cartelera) {
  cartelera[id] = pelicula;
}

void eliminar(String id, Map<String, Pelicula> cartelera) {
  cartelera.remove(id);
}

void editar(String id, Map<String, Pelicula> cartelera) {
  if (cartelera.containsKey(id)) {
    print("Ingresa título nuevo:");
    String? nuevonombrePeli = stdin.readLineSync();
    print("Ingresa género nuevo:");
    String? nuevoGenero = stdin.readLineSync();
    print("Ingresa país nuevo:");
    String? nuevoPais = stdin.readLineSync();

    if (nuevonombrePeli != null && nuevoGenero != null && nuevoPais != null) {
      Pelicula pelicula = cartelera[id]!;
      pelicula.nombrePeli = nuevonombrePeli;
      pelicula.genero = nuevoGenero;
      pelicula.pais = nuevoPais;

      if (pelicula is PeliculaAccion) {
        print("Es una película de acción (s/n)?");
        String? esAccion = stdin.readLineSync();
        if (esAccion != null && esAccion.toLowerCase() == 's') {
          print("Ingrese la cantidad de explosiones:");
          int? cantidadDeExplosiones = int.tryParse(stdin.readLineSync()!);
          if (cantidadDeExplosiones != null) {
            (pelicula as PeliculaAccion).cantidadDeExplosiones = cantidadDeExplosiones;
          }
        }
      }
    }
  } else {
    print("Película no encontrada.");
  }
}

