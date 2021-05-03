/*
  *Singleton
  - È um padrão de projeto para que exista apenas uma instância da classe
  - O construtor nomeado privado sem o construtor default impede de instanciar a classe
  *Static 
  - A instância pode ser acessada diretamente.  
 */

import 'PessoaStatic.dart';

void main() {
  print('11.1) Singletons Static\n');

  print(PessoaStatic.instancia.nome);
  PessoaStatic.instancia.nome = 'Dandy';
  print(PessoaStatic.instancia.nome);
  var p1 = PessoaStatic.instancia;
  var p2 = PessoaStatic.instancia;
  p1.nome = 'Dalas';
  print(PessoaStatic.instancia.nome);
  p2.nome = 'Lark';
  print(PessoaStatic.instancia.nome);
  print(identical(p1, p2,));
  print(p2 == PessoaStatic.instancia);


  
}
