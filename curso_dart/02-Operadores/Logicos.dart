void main() {
  print('02.0) Operadores Lógicos (&& || !)');

  /// operador && (e) somente se ambas afimações forem true o retorno será true
  /// operador || (ou) precisa somente de uma afirmação verdadeira pata retoŕnar true
  /// operador !  inverte o valor boleano

  var verdadeiro = !false; // true
  print(verdadeiro);
  bool falso = !true; //false
  print(falso);
  print('Verdadeiro = $verdadeiro Falso = $falso');
  print('Operador (!) !true = ${!true} !false = ${!false}');

  bool teste1 = verdadeiro || verdadeiro; // true
  bool teste2 = verdadeiro || falso; // ttrue
  bool teste3 = falso || falso; // false

  print(teste1);
  print(teste2);
  print(teste3);

  bool teste4 = verdadeiro && verdadeiro; // true
  bool teste5 = verdadeiro && falso; // ttrue
  // ignore: dead_code
  bool teste6 = falso && falso; // false

  print(teste4);
  print(teste5);
  print(teste6);

  print('Operador (||) ${teste1} - ${teste2} - ${teste3}');
  // ignore: dead_code
  print('Operador (&&) ${true && true} - ${true && false} - ${falso && falso}');
  bool operacao = (1 <= 2) && (3 > 2);
  print(operacao);
  operacao = !(1 > 2) && ((3 < 2) || falso);
  print(operacao);
}
