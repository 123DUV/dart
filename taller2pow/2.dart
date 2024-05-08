class Empleado {
  String nombre;
  int edad;
  String puesto;

  Empleado(this.nombre, this.edad, this.puesto);

  void trabajar() {
    print('$nombre está trabajando en su puesto de $puesto.');
  }

  void tomarDescanso() {
    print('$nombre está tomando un descanso.');
  }
}

class Programador extends Empleado {
  List<String> lenguajes;

  Programador(String nombre, int edad, this.lenguajes)
      : super(nombre, edad, 'Programador');

  void codificar() {
    print('$nombre está codificando en ${lenguajes.join(', ')}');
  }

  @override
  void trabajar() {
    super.trabajar();
    codificar();
  }
}

void main() {
  Empleado empleado1 = Empleado('Juan', 30, 'Gerente de Proyectos');
  empleado1.trabajar();
  empleado1.tomarDescanso();

  Programador programador1 = Programador('María', 25, ['Java', 'Python']);
  programador1.trabajar();
}
