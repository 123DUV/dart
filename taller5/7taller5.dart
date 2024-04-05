import 'dart:io';

void main(){
    int sum = 0;
    int numero1 = 1;
    int numero2 = 1;    
    while(numero1 !=0 || numero2!=0){
    stdout.write('Digite dos numeros');
    int numero1 =
    int.parse(stdin.readLineSync()!);
    stdout.write('Digite el segundo numero');
    int numero2 =
    int.parse(stdin.readLineSync()!);

    sum=numero1+numero2;
    print('la suma es: $sum');
    }
    print('la suma es: $sum');
    
}