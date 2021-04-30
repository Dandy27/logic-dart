main() {
  print('03.0) Condicionais (if else)');

  // ignore: dead_code
  if (!true) {
    print('Verdadeiro');
  } else {
    print('falso');
  }

  int idade = 17; // if sem chaves só aceita uma linha
  if (idade >= 18)
    print('maior');
  else
    print('menor');

  idade = 18;
  if (idade < 14) {
    print('criança');
  } else if (idade < 18) {
    print('adolecente');
  } else {
    print('adulto');
  }

  String textoInt = '10';
  String textDouble = '10.12345';
  int numeroInt = int.parse((textoInt));
  var numeroDouble = double.parse(textDouble).toStringAsFixed(2);

  print('ParseInt: $numeroInt\n ParseDouble $numeroDouble');
  print('ParseStrig: ${numeroDouble.toString() is String} ');

  double peso = 100;
  double altura = 1.85;
  var tmp = peso / (altura * altura);
  double imc = double.parse(tmp.toStringAsFixed(2));
  print(imc);
  if (imc < 18.5) {
    print('IMC $imc Abaixo do peso');
  } else if (imc >= 18.5 && imc < 25) {
    print('IMC $imc  Peso mormal');
  } else if (imc >= 25 && imc < 30) {
    print('IMC $imc Sobrepeso');
  } else if (imc >= 30 && imc < 35) {
    print('IMC $imc Obesidade grau 1 ');
  } else if (imc >= 35 && imc > 40) {
    print('IMC $imc Obesidade grau 2');
  } else {
    print('IMC $imc Obesidade grau 3');
  }
  
} 
