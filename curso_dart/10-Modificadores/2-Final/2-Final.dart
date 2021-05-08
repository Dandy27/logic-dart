/*
-Final 
Inicializada apenas quando acessada em tempo de execução, deve ser declarada!
Em coleções final nem todo o conteúdo será final 

*/


import 'Pessoa.dart';

void main() {
  print('10.1) Modificadores Final\n');

  //? Objeto em queda livre leve 5s para chegar ao solo! Qual a velocidade maxima do objeto?

  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo; // v = g * t
  print('Velocidade máxima: $velocidade m/s\n');

  for (int i = 1; i <= 3; i++) {
    final indice = i;
    print('contagem: $indice');
  }

  var pessoa = Pessoa('Dandy', ['Lela', 'Doug']);
  pessoa.nome = 'Maria';
  // pessoa.familiares = [];// não pode ser mudado pois está definido como final
  print('nome: ${pessoa.nome} familiares: ${pessoa.familiares}');
}

