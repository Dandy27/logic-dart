void main() {


  /*
  'backspace' : '\b',
  'formfeed' : '\f',
  'newLine' : '\n',
  'return' : '\r',
  'tab ' : '\t',  
  */ 



  print('hello World');
  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;
  var resultado;
  resultado = valorA + valorB + valorC;
  print(resultado);
  var salario = 1000, descontos = 250;
  var conta = salario - descontos;
  print(conta);
  var numero = 3 + ((2 * 4) + (10 / 5));
  print(numero);
  print('concatenar '
      'Strings '
      'é facil assim');

  var texto1 = '\nDandy';
  var texto2 = 'Barbosa';
  var texto3 = '''\n e 
  Lela Barbosa''';
  var nome = texto1 + texto2 + texto3;
  print(nome);
  var verdadeiro = true;
  var falso = false;
  // $ variaveis // ${} operações
  print('verdadeiro = ${verdadeiro}'); // interpolação
  print('falso = $falso'); // concatenação
  print(''.runtimeType); // descobre o tipo de variavel em tempo de execução

  const pi = 3.14; // variável constante é atribuida em tempo de execução
  nome = 'Daniel'; // escrita de forma errada
  String sobrenome = 'Barbosa'; // correta
  int idade = 33;
  double altura = 1.9;
  bool adulto = true;

  print('\nnome: ' +
      "$nome  \nQtd letras: ${nome.length}" +
      """\nSobrenome : $sobrenome \nQtd letras ${sobrenome.length}\n""");

  print(''' idade : $idade 
      altura: $altura
      adulto: $adulto
      \npi: $pi\n
        ''');

  dynamic variavel = 2.0;
  variavel = 2;
  variavel = 'dois';
  variavel = true;
  print(variavel);
}
