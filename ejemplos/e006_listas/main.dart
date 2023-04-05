/* Este tipo de variables 
*/


void main() {

  /*hemos declarado una varibale*/
  /*ESTA ES UNA LISTA DINAMICA*/
  List lista_datos=["hola",1,"varibale",234.44,true];

  /*Colocaremos una nueva variable */
  print(lista_datos);
  lista_datos.add("otro valor");
  print(lista_datos);

  /*hay veces en las que tenemos que restringir 
    el tipo de dato que conforman los datos
  */

  /*LISTA RESTRINGIDA A STRING*/
  /*esta lista solo adminte int o marcara una excepcion*/
  List<int> lista_numeros=[1,2,3];
  print(lista_numeros);

  /*LISTA CON DIMENSION FIJA*/
  /*para marcar una dimension fija de una lista
    podemos indicar, en este caso indicaremos una dim de 8
  */
  //List<int> miLista = List<int>(3);
  //Nota esto no se soporta en algunas versiones de Dart

}

