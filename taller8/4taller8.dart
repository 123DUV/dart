import 'dart:io';

void main() {
  
  stdout.write("Ingrese el nombre de la niñera: ");
  String nombre = stdin.readLineSync()!;
  stdout.write("Ingrese las horas de servicio: ");
  int horasServicio = int.parse(stdin.readLineSync()!);

 
  const int tarifaBasica = 20000;
  const int tarifaBasicaExtra = 25000;
  const int tarifaPremium = 30000;
  const int tarifaPremiumExtra = 40000;
  const int tarifaGold = 50000;
  const int tarifaGoldExtra = 60000;

  
  int montoAPagar = 0;
  if (horasServicio <= 10) {
    montoAPagar = horasServicio * tarifaBasica;
  } else if (horasServicio <= 15) {
    montoAPagar = 10 * tarifaBasica + (horasServicio - 10) * tarifaBasicaExtra;
  } else {
    montoAPagar = 10 * tarifaBasica + 5 * tarifaBasicaExtra +
        (horasServicio - 15) * tarifaGoldExtra;
  }

 
  print("Nombre de la niñera: $nombre");
  print("Monto a pagar: \$$montoAPagar");
}
