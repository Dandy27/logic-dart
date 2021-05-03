/*
  * Singleton
  - È um padrão de projeto para que exista apenas uma instancia da classe.
  - O construtor nomeado privado sem o construtor default impede de instancia a classe.
  * Factory
  - Construtor Factory é usado para retornar/manter a instancia original.
  - Construtor Factory é capaz de retornar valores
 */

import 'PessoaFactory.dart';

void main() {
  singletonFactory();
  sigletonInstacia();
}

singletonFactory() {
  print('11.3) Singletons Factory\n');

  var p1 = PessoaFactory();
  print(p1.nome);
  p1.nome = 'Dandy';
  print(PessoaFactory.instancia.nome);
  PessoaFactory.instancia.nome = 'Lela';
  print(p1.nome);
  var p2 = PessoaFactory();
  p2.nome = 'Doug';
  print(PessoaFactory.instancia.nome);
  print(identical(p1, PessoaFactory.instancia));
  print(p2 == PessoaFactory.instancia);
}

sigletonInstacia() {
  print('11.4) Singleton Instancia\n');

  var p1 = PessoaInstancia(nome: 'DAndy', identidade: 33468495);
  print('nome: ${p1.nome} id: ${p1.identidade}');
  var p2 = PessoaInstancia(nome: 'Leila', identidade: 12345678);
  print('nome: ${p2.nome} id: ${p2.identidade}');
  p2.nome = 'Daniels Barbosa';
  print('nome: ${p1.nome} id: ${p1.identidade}');
  print(identical(p1, p2));

}
