import 'dart:io';

class Libro {
  String titulo;
  String autor;

  Libro(this.titulo, this.autor);

  @override
  String toString() {
    return 'Título: $titulo, Autor: $autor';
  }
}

class Espiritualidad extends Libro {
  Espiritualidad(String titulo, String autor) : super(titulo, autor);
}

class Psicologia extends Libro {
  Psicologia(String titulo, String autor) : super(titulo, autor);
}

class Novela extends Libro {
  String tipo; // histórica, romántica, policíaca, realista, ciencia ficción, aventuras

  Novela(String titulo, String autor, this.tipo) : super(titulo, autor);

  @override
  String toString() {
    return super.toString() + ', Tipo: $tipo';
  }
}

class ListaLibros {
  List<Libro> libros = [];

  int obtenerNumeroLibros() {
    return libros.length;
  }

  void insertarLibro(Libro libro) {
    libros.add(libro);
    libros.sort((a, b) => a.titulo.compareTo(b.titulo));
  }

  void eliminarLibro(int posicion) {
    if (posicion >= 0 && posicion < libros.length) {
      libros.removeAt(posicion);
    } else {
      print('Posición inválida');
    }
  }

  Libro obtenerLibro(int posicion) {
    if (posicion >= 0 && posicion < libros.length) {
      return libros[posicion];
    } else {
      throw Exception('Posición inválida');
    }
  }

  int buscarLibroPorTitulo(String parteTitulo) {
    for (int i = 0; i < libros.length; i++) {
      if (libros[i].titulo.toLowerCase().contains(parteTitulo.toLowerCase())) {
        return i;
      }
    }
    return -1; // No encontrado
  }
}

void main() {
  ListaLibros listaLibros = ListaLibros();

  while (true) {
    print('a. Conocer el número de libros');
    print('b. Insertar un nuevo libro');
    print('c. Eliminar un libro');
    print('d. Obtener un libro');
    print('e. Buscar un libro por título');
    print('f. Salir');
    print('¿Qué deseas hacer?');
    String opcion = stdin.readLineSync()!;

    switch (opcion) {
      case 'a':
        print('Número de libros: ${listaLibros.obtenerNumeroLibros()}');
        break;
      case 'b':
        print('Ingrese el título del libro:');
        String titulo = stdin.readLineSync()!;
        print('Ingrese el autor del libro:');
        String autor = stdin.readLineSync()!;
        print('Seleccione la categoría del libro:');
        print('1. Espiritualidad');
        print('2. Psicología');
        print('3. Novela');
        String categoria = stdin.readLineSync()!;

        switch (categoria) {
          case '1':
            listaLibros.insertarLibro(Espiritualidad(titulo, autor));
            break;
          case '2':
            listaLibros.insertarLibro(Psicologia(titulo, autor));
            break;
          case '3':
            print('Ingrese el tipo de novela (histórica, romántica, policíaca, realista, ciencia ficción, aventuras):');
            String tipo = stdin.readLineSync()!;
            listaLibros.insertarLibro(Novela(titulo, autor, tipo));
            break;
          default:
            print('Categoría no válida');
        }
        break;
      case 'c':
        print('Ingrese la posición del libro a eliminar:');
        int posicion = int.parse(stdin.readLineSync()!);
        listaLibros.eliminarLibro(posicion);
        break;
      case 'd':
        print('Ingrese la posición del libro a obtener:');
        int posicion = int.parse(stdin.readLineSync()!);
        try {
          Libro libro = listaLibros.obtenerLibro(posicion);
          print(libro);
        } catch (e) {
          print(e);
        }
        break;
      case 'e':
        print('Ingrese parte del título del libro a buscar:');
        String parteTitulo = stdin.readLineSync()!;
        int posicion = listaLibros.buscarLibroPorTitulo(parteTitulo);
        if (posicion != -1) {
          print('Libro encontrado en la posición: $posicion');
          print(listaLibros.obtenerLibro(posicion));
        } else {
          print('Libro no encontrado');
        }
        break;
      case 'f':
        return;
      default:
        print('Opción no válida');
    }
  }
}
