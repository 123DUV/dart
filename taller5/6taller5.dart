import 'dart:io';

void main(){
    String contrasena="1234";
    String numero ="";
    
    while(numero!=contrasena){
    print('Digite una contrasena');
    numero = (stdin.readLineSync()!);

    }
    print('Bienvenido');
}