void main() {
  // Crear una lista de números desordenada
  List<int> numeros = [50, 10, 30, 20, 40];

  // Ordenar la lista de menor a mayor
  numeros.sort((a, b) => b.compareTo(a));

  // Mostrar la lista ordenada
  print('Lista ordenada de menor a mayor: $numeros');
}
