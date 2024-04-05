void main() {
 
  List<String> abecedario = [
    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
    'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
  ];

  
  List<String> abecedarioFiltrado = [];
  for (int i = 0; i < abecedario.length; i++) {
    if ((i + 1) % 3 != 0) { 
      abecedarioFiltrado.add(abecedario[i]);
    }
  }

  
  print(abecedarioFiltrado);
}
