import 'dart:io';

void main(){

    stdout.write('Digite un numero positivo: ');
    double numero =
    double.parse(stdin.readLineSync()!);
    int sum = 0;
    int i=0;
    while(i<=numero){
        sum=sum+i;
        i++;
    }
    stdout.write('la suma es: $sum');
}