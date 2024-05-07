import 'dart:async';
import 'dart:io';

void main(){
  final musica = new multimedia('be happy', '347aidan', 'mp4', Duration(minutes: 3));
  final musica2 = new multimedia('b happy', '347aidan', 'wav', Duration(minutes: 3));
  
  print(musica==musica2);
  print(musica);
}

class multimedia{
String titulo;
String autor;
String formato;
Duration duracion;



multimedia(this.titulo, this.autor, this.formato,this.duracion){
  this.titulo = titulo;
  this.autor = autor;
  this.formato = formato;
  this.duracion = duracion;
}

String getTitulo() {
  return titulo;
}
String getAutor(){
  return autor;
}
String getFormato() {
  return formato;
}
Duration getDuration() {
  return duracion;
}


String toString(){
  return 'El titulo es: $titulo, el autor es: $autor, el formato es: $formato, la duracion es $duracion';
}

bool operator ==(Object other){
  if(identical(this,other))return true;
  return other is multimedia &&
  this.titulo == other.titulo &&
  this.autor == other.autor;
  
}





  



}