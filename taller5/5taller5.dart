import 'dart:io';

void main(){
    stdout.write('Digite dos numeros');
    int numero1 =
    int.parse(stdin.readLineSync()!);
    stdout.write('Digite el segundo numero');
    int numero2 =
    int.parse(stdin.readLineSync()!);

    
    int mayor=0;
    int menor=0;
    
    if(numero1 >numero2){
        mayor=numero1;
        menor=numero2;
    }else if(numero2>numero1){
        mayor=numero2;
        menor=numero1;
    }
    int sum=0;
    int i;
    i=menor;
    while(i<=mayor){
        sum+=i;
        i++;
    }
    stdout.write('la suma es: $sum');
}