/*
   Map o mapa, es una estructura que puede 
   agrupar diferentes tipos de datos

*/


void main() {

  /*Para este caso estamos definiendo 2 mapas que agrupan informacion*/
  /*son similares a los Diccionarios de python*/

  Map fruta = {
    "nombre": "manzana",
    "precio": 3.80,
    "dulce": true
  };

  // ----------------------

  Map verdura = {
    "nombre": "lechuga",
    "precio": 4.40,
    "dulce": false
  };

  // ----------------------
  print(fruta["nombre"]);
  print(verdura["nombre"]);

  /*para poder acotar las llaves y los datos
    al igual que los contenidos y listas
    tomando en cuenta otros valores
  */

  Map<int, dynamic> mapa = {
    1 : "hola",
    22: true
  };


  print("modificando los archivos dentro de un mapa");
  print(mapa);

  mapa.addAll( /*ingresa mas valores para el mapa */
    { 333: "nuevo valor"}
    );
  print(mapa);

}
