/*
*Const 
  - Inicializada em tempo de compilação, deve ser declarada com valor constante
  -Ao nivel de classes deve ser estática para ficar disponivel na classe
  - Em coloções "const " todo o conteúdo deve ser constante
  *Objto imutável
  - O construtor deve ser constante
  - As variaáveis devem ser "final" ou "static const"


 */

import 'Brasil.dart';

void main() {
  print('10.2) Modificadores Const\n');

  const pi = 3.14;
  double raio = 2;
  var resultado = pi * raio;
  print(resultado);

  final numeros = [raio, 2.5];
  numeros.add(resultado);
  print(numeros);

  final dynamic listaFinal = const [0, 1];
  // listaFinal.add(pi);
  print(listaFinal);

  const listaConst = [1, 2, pi];
  // listaConst.add(pi);
  print('${listaConst}\n');

  for (var i = 0; i < 3; i++) {
    final indiceFinal = i;
    const constante = 1;
    print('contagem: ${constante + indiceFinal}');
  }

  var pais = Brasil(-15.54545, -47.766555);
  print(
      '\nobjeto: $pais capital: ${Brasil.capital} latitude: ${pais.lat} longitude: ${pais.long}');
  print('Estados: ${Brasil.estados}');
}
