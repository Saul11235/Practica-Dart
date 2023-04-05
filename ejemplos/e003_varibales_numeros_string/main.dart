/* En este programa concatenaremos la varibale */

//podemos declarar variables afuera de main
var TuNombre = "Saul";

void main() {
  print("hola $TuNombre");


  /* Datos NUMERICOS */
  int    contador = 1;   /*tipo INTEGER */
  double fraccion = 1.2; /* tipo double*/
  print(" NUMEROS - INTEGER: $contador DOUBLE: $fraccion");

  /* Datos tipo STRING */
  String texto   = "Hola"; 

  /*Nota, tambien se pueden interpretar como listas*/
  print("Trabajando con string");
  print(texto);
  print("Primer caracter");
  print(texto[0]); //ojo empieza en cero

  // tambien podemos utilizat las propiedades de las
  // diferentes variables para operar,
  // por ejemplo lo la longitud del texto
  print("La longitud del texto es:");
  print(texto.length);
  print("imprimir ultimo caracter");
  print(texto[texto.length-1]); //ojo empieza en cero

}
