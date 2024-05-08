class Producto {
  DateTime fechaCaducidad;
  int numeroLote;

  Producto(this.fechaCaducidad, this.numeroLote);

  void mostrarInformacion() {
    print('Fecha de caducidad: ${fechaCaducidad.toString()}');
    print('Número de lote: $numeroLote');
  }
}

// Clase ProductoFresco que hereda de Producto
class ProductoFresco extends Producto {
  DateTime fechaEnvasado;
  String paisOrigen;

  ProductoFresco(DateTime fechaCaducidad, int numeroLote, this.fechaEnvasado, this.paisOrigen)
      : super(fechaCaducidad, numeroLote);

  @override
  void mostrarInformacion() {
    super.mostrarInformacion();
    print('Fecha de envasado: ${fechaEnvasado.toString()}');
    print('País de origen: $paisOrigen');
  }
}

// Clase ProductoRefrigerado que hereda de Producto
class ProductoRefrigerado extends Producto {
  String codigoSupervision;
  DateTime fechaEnvasado;
  double tempMantenimiento;
  String paisOrigen;

  ProductoRefrigerado(DateTime fechaCaducidad, int numeroLote, this.codigoSupervision, this.fechaEnvasado,
      this.tempMantenimiento, this.paisOrigen)
      : super(fechaCaducidad, numeroLote);

  @override
  void mostrarInformacion() {
    super.mostrarInformacion();
    print('Código de supervisión: $codigoSupervision');
    print('Fecha de envasado: ${fechaEnvasado.toString()}');
    print('Temperatura de mantenimiento: $tempMantenimiento °C');
    print('País de origen: $paisOrigen');
  }
}

// Clase ProductoCongelado que hereda de Producto
class ProductoCongelado extends Producto {
  DateTime fechaEnvasado;
  String paisOrigen;
  double tempMantenimiento;

  ProductoCongelado(DateTime fechaCaducidad, int numeroLote, this.fechaEnvasado, this.paisOrigen, this.tempMantenimiento)
      : super(fechaCaducidad, numeroLote);

  @override
  void mostrarInformacion() {
    super.mostrarInformacion();
    print('Fecha de envasado: ${fechaEnvasado.toString()}');
    print('País de origen: $paisOrigen');
    print('Temperatura de mantenimiento: $tempMantenimiento °C');
  }
}

// Clase ProductoCongeladoAire que hereda de ProductoCongelado
class ProductoCongeladoAire extends ProductoCongelado {
  double porcentajeN2;
  double porcentajeO2;
  double porcentajeCO2;
  double porcentajeVaporAgua;

  ProductoCongeladoAire(DateTime fechaCaducidad, int numeroLote, DateTime fechaEnvasado, String paisOrigen,
      double tempMantenimiento, this.porcentajeN2, this.porcentajeO2, this.porcentajeCO2, this.porcentajeVaporAgua)
      : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen, tempMantenimiento);

  @override
  void mostrarInformacion() {
    super.mostrarInformacion();
    print('Porcentaje de Nitrógeno: $porcentajeN2%');
    print('Porcentaje de Oxígeno: $porcentajeO2%');
    print('Porcentaje de Dióxido de Carbono: $porcentajeCO2%');
    print('Porcentaje de Vapor de Agua: $porcentajeVaporAgua%');
  }
}

// Clase ProductoCongeladoAgua que hereda de ProductoCongelado
class ProductoCongeladoAgua extends ProductoCongelado {
  double salinidadAgua;

  ProductoCongeladoAgua(DateTime fechaCaducidad, int numeroLote, DateTime fechaEnvasado, String paisOrigen,
      double tempMantenimiento, this.salinidadAgua)
      : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen, tempMantenimiento);

  @override
  void mostrarInformacion() {
    super.mostrarInformacion();
    print('Salinidad del agua: $salinidadAgua g/L');
  }
}

// Clase ProductoCongeladoNitrógeno que hereda de ProductoCongelado
class ProductoCongeladoNitrogeno extends ProductoCongelado {
  String metodoCongelacion;
  int tiempoExposicion;

  ProductoCongeladoNitrogeno(DateTime fechaCaducidad, int numeroLote, DateTime fechaEnvasado, String paisOrigen,
      double tempMantenimiento, this.metodoCongelacion, this.tiempoExposicion)
      : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen, tempMantenimiento);

  @override
  void mostrarInformacion() {
    super.mostrarInformacion();
    print('Método de congelación: $metodoCongelacion');
    print('Tiempo de exposición al nitrógeno: $tiempoExposicion segundos');
  }
}

void main() {
  // Crear productos de ejemplo
  var productoFresco = ProductoFresco(DateTime(2024, 12, 31), 12345, DateTime(2024, 4, 1), 'México');
  var productoRefrigerado =
      ProductoRefrigerado(DateTime(2024, 12, 31), 54321, 'ABC123', DateTime(2024, 3, 15), 4.0, 'España');
  var productoCongeladoAire = ProductoCongeladoAire(
      DateTime(2024, 12, 31), 98765, DateTime(2024, 2, 10), 'Francia', -18.0, 70, 20, 5, 5);
  var productoCongeladoAgua = ProductoCongeladoAgua(
      DateTime(2024, 12, 31), 24680, DateTime(2024, 1, 5), 'Italia', -20.0, 10);
  var productoCongeladoNitrogeno =
      ProductoCongeladoNitrogeno(DateTime(2024, 12, 31), 13579, DateTime(2024, 6, 20), 'Alemania', -25.0, 'LN2', 30);

  // Mostrar información de los productos
  productoFresco.mostrarInformacion();
  print('\n');
  productoRefrigerado.mostrarInformacion();
  print('\n');
  productoCongeladoAire.mostrarInformacion();
  print('\n');
  productoCongeladoAgua.mostrarInformacion();
  print('\n'); 
}