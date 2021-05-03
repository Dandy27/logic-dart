/*
  - Static
  A variável estática fica disponivel na própria classe em vez de suas instâncias/objetos
  Em métodos estáticos devem se usar variáveis estáticas da classe
  Variáveis estaticas podem ser acessadas sem precisar instanciar classes/objetos
 */

import 'Calculos.dart';

void main() {
  print('10.0) Modificadores\n');

  double raio = 5;
  var calculos1 = Calculos();
  print(calculos1.pi);
  print(calculos1.areaCirculo(raio));

  print('');

  Calculos calculos2 = Calculos();
  print(calculos2.pi);
  print(calculos2.areaCirculo(raio));

  print('\nInstancias consomem ${identical(calculos1, calculos2) ? 'MENOS' : 'MAIS'} memorial!\n');

  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (raio * raio));
  print(
      'Retornos iguais = ${Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'SIM' : 'NAO'} Metodos diferentes');
}
