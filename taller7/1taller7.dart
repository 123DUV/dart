void main() {
  
  int edad = 35;
  double salario = 3000000; 
  double salarioMinimo = 908526; 

 
  double dosSalariosMinimos = salarioMinimo * 2;


  if (edad > 30 && salario > dosSalariosMinimos) {
    
    double renta = salario * 0.20;
    print("La persona debe pagar renta del 20% de su salario, lo cual equivale a: $renta");
  } else if (edad > 50 && salario > salarioMinimo) {
    
    double renta = salario * 0.10;
    print("La persona debe pagar renta del 10% de su salario, lo cual equivale a: $renta");
  } else {
    print("La persona no está sujeta a pagar renta.");
  }
}
