class Departamento {
  String nombre;

  Departamento(this.nombre);
}

class Docente {
  String cedula;
  String nombre;
  Departamento departamento;
  String area;
  List<String> diasDisponibles;

  Docente(this.cedula, this.nombre, this.departamento, this.area, this.diasDisponibles);
}

class Asignatura {
  String nombre;
  int creditos;
  bool esTeorica;

  Asignatura(this.nombre, this.creditos, this.esTeorica);
}

class Curso {
  int numero;
  List<Asignatura> asignaturas;

  Curso(this.numero) : asignaturas = [];
}

class Aula {
  String nombre;
  String ubicacion;
  int capacidad;
  bool esTeorica;
  String tipoPupitre; // Solo para aulas teóricas
  bool tieneAltavoces; // Solo para aulas prácticas
  bool tieneCamara; // Solo para aulas prácticas

  Aula.teorica(this.nombre, this.ubicacion, this.capacidad, this.tipoPupitre)
      : esTeorica = true,
        tieneAltavoces = false,
        tieneCamara = false;

  Aula.practica(this.nombre, this.ubicacion, this.capacidad, this.tieneAltavoces, this.tieneCamara)
      : esTeorica = false,
        tipoPupitre = '';
}
class Horario {
  String dia;
  String hora;
  Aula aula;
  Docente docente;
  Asignatura asignatura;

  Horario(this.dia, this.hora, this.aula, this.docente, this.asignatura);
}

class Sistema {
  List<Curso> cursos;
  List<Docente> docentes;
  List<Aula> aulas;
  List<Horario> horarios;

  Sistema()
      : cursos = [],
        docentes = [],
        aulas = [],
        horarios = [];

  void agregarCurso(Curso curso) {
    cursos.add(curso);
  }

  void agregarDocente(Docente docente) {
    docentes.add(docente);
  }

  void agregarAula(Aula aula) {
    aulas.add(aula);
  }

  void generarHorarios() {
    for (var curso in cursos) {
      for (var asignatura in curso.asignaturas) {
        var docentesAsignatura = docentes.where((d) => d.area == asignatura.nombre).toList();
        if (docentesAsignatura.isNotEmpty) {
          var docente = docentesAsignatura.first;
          var diasSeleccionados = docente.diasDisponibles.take(3).toList();
          for (var dia in diasSeleccionados) {
            var horas = asignatura.creditos * 3;
            var aulasDisponibles = aulas.where((a) => a.esTeorica == asignatura.esTeorica).toList();
            if (aulasDisponibles.isNotEmpty) {
              var aula = aulasDisponibles.first;
              for (var i = 0; i < horas; i++) {
                var hora = _obtenerHora(i);
                var horario = Horario(dia, hora, aula, docente, asignatura);
                horarios.add(horario);
              }
            }
          }
        }
      }
    }
  }

  String _obtenerHora(int indice) {
    // Implementar lógica para obtener la hora basada en el índice
    List<String> horas = [
      '08:30', '09:30', '10:30', '11:30', '12:30', '13:30',
      '15:30', '16:30', '17:30', '18:30', '19:30', '20:30'
    ];
    return horas[indice % horas.length];
  }

  void consultarHorarios() {
    for (var horario in horarios) {
      print(
          'Asignatura: ${horario.asignatura.nombre}, Docente: ${horario.docente.nombre}, Aula: ${horario.aula.nombre}, Día: ${horario.dia}, Hora: ${horario.hora}');
    }
  }
}
  void main() {
  var departamentoTI = Departamento('Tecnologías de la Información');

  var docente1 = Docente('12345', 'Juan Pérez', departamentoTI, 'Programación Orientada a Objetos', ['Lunes', 'Miércoles', 'Viernes']);
  var docente2 = Docente('67890', 'Ana Martínez', departamentoTI, 'Estructura de datos', ['Martes', 'Jueves', 'Viernes']);

  var asignaturaPOO = Asignatura('Programación Orientada a Objetos', 3, true);
  var asignaturaED = Asignatura('Estructura de datos', 2, true);

  var curso1 = Curso(1);
  curso1.asignaturas.addAll([asignaturaPOO, asignaturaED]);

  var aula1 = Aula.teorica('Aula 101', 'Edificio A', 30, 'Abatible');
  var aula2 = Aula.teorica('Aula 102', 'Edificio A', 25, 'Fijo');

  var sistema = Sistema();
  sistema.agregarCurso(curso1);
  sistema.agregarDocente(docente1);
  sistema.agregarDocente(docente2);
  sistema.agregarAula(aula1);
  sistema.agregarAula(aula2);

  sistema.generarHorarios();
  sistema.consultarHorarios();
}
