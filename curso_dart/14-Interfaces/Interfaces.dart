/* Conceito
-Interfaces são modelos para implementar metodos a atribuidos em nossas classes

*Regras 
-Ao implementar uma interface devemos utilizar todos os metodos e atributos
-No dart não tem sintaxa para interfaces, pode ser uma classe concreta ou abstrata!
-Pode implementar mais de uma interface e deve sobrescrever todos metodos e atrivbutos
 */

abstract class Cidadao {
  String nome;
  Cidadao(this.nome);

  void objtivosPessoais();

  void direitosDeveres() {
    print('Todo cidadão tem direitos e deveres');
  }
}

abstract class Presidenciaveis {
  late String partido;
  late String ideologia;

  void ideologiaPolitica();
}

class Postagem {
  late String postagem;

  void escreverPostagem() {
    print('');
  }
}

class Candidato extends Cidadao implements Postagem {
  Candidato(String nome) : super(nome);
  late String objetivo;

  @override
  void objtivosPessoais() {
    print('$nome tem o o objetivo de $objetivo');
  }

// INTERFACES
  @override
  late String postagem;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no facebook: $postagem');
  }
}

void main() {
  print('15.0) Interfaces\n');

  var ciro = Candidato('Ciro');
  ciro.objetivo = 'Ganhar as Eleição';
  ciro.objtivosPessoais();
  ciro.postagem = 'Vou acabar com a corrupção no Brasil';
  ciro.escreverPostagem();
}
