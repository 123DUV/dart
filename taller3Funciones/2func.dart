void main() {
  int n = 10; 
  print("La suma de los $n primeros números enteros impares es: ${sumaNPrimerosImpares(n)}");
}


int sumaNPrimerosImpares(int n) {
  int suma = 0;
  int contadorImpares = 0;
  int numero = 1;

  while (contadorImpares < n) {
    suma += numero;
    numero += 2; 
    contadorImpares++;
  }

  return suma;
}
