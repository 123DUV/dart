import 'dart:io';

void main() {
  
  List<int> numeros = [];
  for (int i = 1; i <= 10; i++) {
    numeros.add(i);
  }

  
  print(numeros.reversed.join(", "));
}
