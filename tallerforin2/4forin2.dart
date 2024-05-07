import 'dart:io';

void main() {
  
  var nombresMeses = {
    1: 'enero', 2: 'febrero', 3: 'marzo', 4: 'abril', 5: 'mayo', 6: 'junio',
    7: 'julio', 8: 'agosto', 9: 'septiembre', 10: 'octubre', 11: 'noviembre', 12: 'diciembre'
  };

  
  stdout.write("Ingrese una fecha en formato dd/mm/aaaa: ");
  var fecha = stdin.readLineSync()!;

  
  var partes = fecha.split('/');
  var dia = int.parse(partes[0]);
  var mes = int.parse(partes[1]);
  var anio = int.parse(partes[2]);

  
  print("La fecha es: $dia de ${nombresMeses[mes]} de $anio");
}
