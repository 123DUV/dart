void main() {
  double poblacionCiudadA = 3.5;
  double crecimientoAnualA = 0.15;
  
  double poblacionCiudadB = 5.0; 
  double crecimientoAnualB = 0.07; 
  int ano = 1980; 
  
  while (poblacionCiudadA <= poblacionCiudadB) {
    
    poblacionCiudadA *= (1 + crecimientoAnualA);
    poblacionCiudadB *= (1 + crecimientoAnualB);
    
    ano++; 
  }
  
  print("En el año $ano la población de la Ciudad A ($poblacionCiudadA millones) será mayor que la población de la Ciudad B ($poblacionCiudadB millones).");
}
