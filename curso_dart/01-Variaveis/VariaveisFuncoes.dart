/*
 Tipos de variaveis
 Num(int, double), String, bool, dynamic
 */

void main() {
  print('01.1) Variaveis Funções');

  num pi = 3.14;
  print(pi.floor()); //3
  print(pi.round()); //3
  print(pi.ceil()); //4
  print(pi.clamp(3, 3.1)); //3.1
  print(pi.compareTo(3)); // -1 se for inferior // 0 iguais // 1 se for superior
  print(pi.remainder(3)); // 0.14000000000000012
  print(pi.toInt()); //3
  print(2.toDouble()); //2.0
  print(pi.toString()); //'3.14'
  print(pi.toStringAsFixed(2)); //3.14
  print(pi.truncate()); //3
  print(pi.isNegative); //false
  print(pi.isInfinite); //false
  print(pi.isFinite); //true
  print((pi / 0).isInfinite); //true
  print(12.gcd(16)); //4
  print('1'.padLeft(2, '0')); // 01
  print('1'.padRight(2, '0')); //10

  print('');

  String nome = 'Daniels';
  String nomeCompleto = '\t Daniel Barbosa';
  print(nome.toLowerCase()); //daniel
  print(nome.toUpperCase()); // DANIEL
  print(nomeCompleto.trim()); //Daniel Barbosa
  print(nomeCompleto.split(' ')); //[	, Daniel, Barbosa]
  print(nome.split('')); //[D, a, n, i, e, l]
  print(nome.substring(2, 7)); //niels
  print(nome.startsWith('niels, 3')); //false
  print(nome.startsWith('W')); //false
  print(nome.replaceAll('a', 'i')); //Diniels
  print(nome.replaceFirst('Dani', '')); //els
  print(nome.replaceFirst('s', 'a', 6)); //Daniela
  print(nome.replaceRange(3, 5, '')); //Danls
  print(nomeCompleto.trim().split(' ')); //[Daniel, Barbosa]
  print(nome.contains('z')); //false
  print(nome.contains('D')); //true
  print(nome.contains('a', 1)); //true
  print(nome.indexOf('ls')); // 5
  print(nome.compareTo('Dan')); // 1 possui
  print(nome.compareTo('amor')); // -1 não possui
  print(' '.isEmpty); // false , porque tem um espaço
  print(''.isEmpty); // true, porque não tem espaço
  print(double.parse('12.55')); // retorna uma string
  print(int.parse('27') is int); //true
  print(nome.lastIndexOf('a')); //1
  String sopa = 'sopa de   letrinhas';
  int index = sopa.indexOf(' de ');
  print('A sopa é ${sopa.substring(index).trim()}'); // A sopa é de letrinhas

  print('');

  num numero = 3.14;
  print(numero is double); //true
  print(numero is! double);// false
}
