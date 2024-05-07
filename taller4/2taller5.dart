import 'dart:io';
void main() {
  int horaEntrada = 9; 
  int horaSalida = 12; 

  
  int horasEstadia = horaSalida - horaEntrada;

  
  if (horasEstadia <= 0) {
    horasEstadia = 1;
  }

  
  int montoPagar = 1000 + (horasEstadia - 1) * 600;

  print("El monto a pagar por el servicio de estacionamiento es: ${montoPagar.toString()}");
}
