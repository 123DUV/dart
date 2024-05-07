void main() {
  for (int i = 1; i <= 10; i++) {
    print("El cuadrado de $i es: ${calcularCuadrado(i)}");
  }
}


int calcularCuadrado(int numero) {
  return numero * numero;
}
