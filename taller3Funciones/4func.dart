int obtenerDigitoEnPosicion(int numero, int posicion) {
  String numeroString = numero.toString();
  
  if (posicion >= 1 && posicion <= numeroString.length) {
    return int.parse(numeroString[posicion - 1]);
  } else {
    return -1; 
  }
}

void main() {
  int numero = 987;
  int posicion = 2;
  
  int digito = obtenerDigitoEnPosicion(numero, posicion);
  
  if (digito != -1) {
    print("El dígito en la posición $posicion del número $numero es: $digito");
  } else {
    print("fuera de rango");
  }
}
