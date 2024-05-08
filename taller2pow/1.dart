class Precio {
  double valor;

  Precio(this.valor);

  void imprimirPrecio() {
    print('Valor: \$${valor.toStringAsFixed(2)}');
  }
}

class Factura extends Precio {
  String emisor;
  String cliente;

  Factura(double valor, this.emisor, this.cliente) : super(valor);

  void imprimirFactura() {
    imprimirPrecio();
    print('Emisor: $emisor');
    print('Cliente: $cliente');
  }
}

void main() {
  Factura factura = Factura(100.50, 'Mi Empresa', 'Cliente A');
  factura.imprimirFactura();
}
