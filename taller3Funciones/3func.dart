void main() {
  
  int a = 5;
  int b = 10;
  print("Antes del intercambio: a = $a, b = $b");
  
  intercambiarValores(a, b);
  
  print("Después del intercambio: a = $a, b = $b");
}


void intercambiarValores(dynamic a, dynamic b) {
  dynamic temp = a;
  a = b;
  b = temp;
}
