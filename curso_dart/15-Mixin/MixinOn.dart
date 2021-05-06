/*
 
 * Conceitos
 - Mixin permite implementar metodos e atributos de outras classes
 
 * Regras
 - Devem ser implementados antes dasinterfaces
 - Podem ser implementados a partir de uma classe concreta ou abstrata
 - Não pode implementar uma classe que estenda e extender de uma classe mixin
 -Pode implementar mains de um mixin, e não é obrigatório usar todos metodos e atributos
 - As classes que possuaem metodos iguais serão sobrescritas em ordem até a classe herdeira

 * ON
 - É obrigado declarar sua classe como mixin
 - Restringi o uso do mixin as classes que estendem ou implementam a classe declarada
 */

// CLASSE ABSTRATA
abstract class Artista {
  void acao() {
    print('Performista...');
  }
}

//MIXIN
mixin Cantor on Artista {
  void acao() {
    print('Canta');
  }
}

class Dancarino {
  void acao() {
    print('Dança');
  }
}

//INTERFACE

abstract class Acao {
  void executar();
}

//CLASSES CONCRETAS

class Musico extends Artista with Dancarino, Cantor implements Acao {
  void acao() => print('Compõe');
  @override
  void executar() {
    super.acao();
    acao();
  }
}

// A classe Mc não pode cantar porque não extends de Artista
class Mc with Dancarino implements Acao {
  void acao() => print('Mixa');

  @override
  void executar() {
    super.acao();
    acao();
  }
}

void main() {
  print('15.1) MIxin On\n');
  Musico musico = Musico();
  musico.executar();
  print('');

  Mc mc = Mc();
  mc.executar();
}
