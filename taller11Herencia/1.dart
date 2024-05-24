class Persona {
  String cedula;
  String nombres;
  int edad;
  String sexo;

  Persona(this.cedula, this.nombres, this.edad, this.sexo);
}

class Aprendiz extends Persona {
  double calificacion;
  int faltas;

  Aprendiz(String cedula, String nombres, int edad, String sexo, this.calificacion)
      : faltas = 0,
        super(cedula, nombres, edad, sexo);
}

class Instructor extends Persona {
  String asignatura;
  int noDisponibilidad;

  Instructor(String cedula, String nombres, int edad, String sexo, this.asignatura)
      : noDisponibilidad = 0,
        super(cedula, nombres, edad, sexo);
}
class Asignatura {
  String nombre;

  Asignatura(this.nombre);
}

final asignaturasOfertadas = [
  Asignatura('Programación Orientada a Objetos'),
  Asignatura('Estructura de datos'),
  Asignatura('Estructuras discretas')
];
class Aula {
  int id;
  int maxAprendices;
  Asignatura asignatura;
  String ubicacion;
  bool tieneProyector;

  Instructor? instructor;
  List<Aprendiz> aprendices;

  Aula(this.id, this.maxAprendices, this.asignatura, this.ubicacion, this.tieneProyector)
      : aprendices = [];

  bool puedeDarClase() {
    if (instructor == null || instructor!.noDisponibilidad > (20 / 100) * maxAprendices) {
      return false;
    }

    int presentes = maxAprendices - aprendices.fold(0, (sum, a) => sum + a.faltas);
    if (presentes < (60 / 100) * maxAprendices) {
      return false;
    }

    return true;
  }

  Map<String, int> aprobados() {
    int hombres = 0;
    int mujeres = 0;
    for (var aprendiz in aprendices) {
      if (aprendiz.calificacion >= 3) { // Aprobado
        if (aprendiz.sexo.toLowerCase() == 'masculino') {
          hombres++;
        } else {
          mujeres++;
        }
      }
    }
    return {'hombres': hombres, 'mujeres': mujeres};
  }
}
  void main() {
  
  var instructor = Instructor('12345', 'Juan Pérez', 35, 'Masculino', 'Programación Orientada a Objetos');
  instructor.noDisponibilidad = 10; 

 
  var aprendiz1 = Aprendiz('23456', 'Ana Gómez', 20, 'Femenino', 7.5);
  var aprendiz2 = Aprendiz('34567', 'Carlos Díaz', 22, 'Masculino', 8.0);
  var aprendiz3 = Aprendiz('45678', 'Luisa López', 21, 'Femenino', 9.0);
  
  aprendiz1.faltas = 5;
  aprendiz2.faltas = 2;
  aprendiz3.faltas = 3;

  var aula = Aula(101, 30, asignaturasOfertadas[0], 'Edificio A', true);
  aula.instructor = instructor;
  aula.aprendices.addAll([aprendiz1, aprendiz2, aprendiz3]);

 
  if (aula.puedeDarClase()) {
    print('Se puede dar clase.');
    var aprobados = aula.aprobados();
    print('Hombres aprobados: ${aprobados['hombres']}');
    print('Mujeres aprobados: ${aprobados['mujeres']}');
  } else {
    print('No se puede dar clase.');
  }
}
