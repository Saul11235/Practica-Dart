/* en este ejemplo veremos que son las varibales booleanas y como 
   utilizarlas
*/
void main() {

  bool varibale1=true;  // VERDADERO
  bool variable2=false; // FALSO

  /* podemos obtener variables por comparaciones*/
  var comparacion1=  3 == 4; //falso, son diferentes
  print("comparacion 1");
  print(comparacion1);

  /*------------------------------*/

  /*operador AND similar a JS*/
  print("true AND true");
  print(true && true);
 
  /*operador OR similar a JS*/
  print("true OR true");
  print(true || false);

  /*------------------------------*/

  /*comparacion de igual*/
  print("1 IGUAL a 2");
  print(1 == 2);

  /*comparacion de desigual*/
  print("1 DESIGUAL a 2");
  print(1 != 2);

  /*comparacion de mayor */
  print("1 mayor a 2");
  print(1 < 2);

  /*comparacion de menor*/
  print("1 menor a 2");
  print(1 > 2);

  /*comparacion de mayor */
  print("1 mayor o igual a 2");
  print(1 <= 2);

  /*comparacion de menor*/
  print("1 menor o igual a 2");
  print(1 >= 2);

  /*------------------------------*/

}
