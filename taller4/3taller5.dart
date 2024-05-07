import 'dart:io';
void main() {
  int x = 5; 
  int y = 15; 

  print("Los números impares entre $x y $y son:");

  for (int i = x; i <= y; i++) {
    if (i % 2 != 0) { 
      print(i);
    }
  }
}
