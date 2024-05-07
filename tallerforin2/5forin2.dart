void main() {
  
  var creditosAsignaturas = {
    'Matemáticas': 6,
    'Física': 4,
    'Química': 5
  };

  
  for (var asignatura in creditosAsignaturas.keys) {
    var creditos = creditosAsignaturas[asignatura];
    print("$asignatura tiene $creditos créditos");
  }

  
  var totalCreditos = creditosAsignaturas.values.reduce((a, b) => a + b);
  print("El número total de créditos del curso es: $totalCreditos");
}
