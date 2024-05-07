int calcularCubo(int numero) {
  return numero * numero * numero;
}

void main() {
  int n = 2;
  int m = 5;

  print("Los cubos de los números entre $n y $m son:");
  for (int i = n; i <= m; i++) {
    print("$i al cubo es: ${calcularCubo(i)}");
  }
}
