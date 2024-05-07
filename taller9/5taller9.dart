import 'dart:io';

void main() {
  stdout.write("Ingrese el término n para generar la serie de Fibonacci: ");
  int n = int.parse(stdin.readLineSync()!);

  int a = 0, b = 1;

  print("Serie de Fibonacci hasta el término $n:");
  if (n >= 1) {
    print(a);
  }
  if (n >= 2) {
    print(b);
  }

 
  for (int i = 3; i <= n; i++) {
    int c = a + b;
    print(c);
    a = b;
    b = c;
  }
}
