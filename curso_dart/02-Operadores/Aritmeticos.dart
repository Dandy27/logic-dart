void main() {
  print(
      '02.2) Operadores aritméticos (+ - * / ~/ %), incremento (+= ++), e assignação (= ?? )\n');

  var peso = 10;
  peso = peso + 5;
  peso += 5;
  peso++; // incrementa 1
  print(peso);
  peso--;
  print(peso);

  var a, b, c, d, e, f;
  a = 3;
  b = ++a; // incrementa a antes q b receba o valor
  print('a: $a, b: $b');

  c = ++a / --b;
  print('a: $a b: $b');
  print(c);

  d = a ~/ b; // divisão retorna um numero interio
  print('c: $c d: $d');
  print(d);

  var valorA = 8, valorB = 2;
  print('ex.: 9 ~/ 2 = ${valorA ~/ valorB}');

  e = 1;
  f = e;
  f = null; //nula
  f ??= ++e; // f recebe o incremento se for nulo
  print('e: $e f: $f');

  var x, y, z;
  z = 1;

  x = y ?? z; // x recebe y , se y for nulo x recebe z
  print(x);

  var nome = null;
  print(
      'nome: ${nome ?? 'Daniels'}\n'); // se a variavel for nula recebe o valor stringvat

  var numero = 12;
  var par = numero % 2 == 0;
  var impar = numero % 2 != 0;
  var positivo = numero >= 0;
  var negativo = numero < 0;

  print(
      'numero: $numero\n Par: $par\n Impar: $impar\n Positivo: $positivo\n Negativo: $negativo');

  var multiplo = 3;
  print('numero: $numero é multiplo de $multiplo ? ${numero % multiplo == 0}');

  int dividendo = 19;
  int divisor = 4;
  double quociente = dividendo / divisor;
  int resto = dividendo % divisor; // mostra o resto da divisão
  bool exata = resto == 0;
  print('Quociente: $quociente\n Exata: $exata\n Resto: $resto');
}
