/*
  * Singleton
  - è um padrão de projetos para que exista apenas uma instância a classe
  - O construtor nomeado privado se o construtor default impede de instanciar a classe
  * Getter
  - A instÂncia privada é acessada através do get
 */

import 'PessoaGetter.dart';

void main() {
  print('11.2) Singleton Getter/n');

  print(PessoaGetter.instancia.nome);
  PessoaGetter.instancia.nome = 'Dandy';
  print(PessoaGetter.instancia.nome);
  var p1 = PessoaGetter.instancia;
  var p2 = PessoaGetter.instancia;
  p1.nome = 'Dandy';
  print(PessoaGetter.instancia.nome);
  p2.nome = 'Doug';
  print(PessoaGetter.instancia.nome);
  print(identical(p1, p2));
  print(p2 == PessoaGetter.instancia);
}
