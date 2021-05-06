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

void main() {
  print('14.0) Interface\n');

  var ciro =
      Candidato('Ciro Gomes', ideologia: 'Centro Esquerda', partido: 'PDT');
  ciro
    ..objetivo = 'Ganhar eleição'
    ..objetivoPessoais
    ..postagem = 'Vou acabar com a corrupção no Brasil'
    ..escreverPostagem()
    ..ideologiaPolitica()
    ..depositar = 400000..prestacaoContas();
}

// CLASSE CONCRETA
class Candidato extends Cidadao
    with Elegivel, Conta
    implements Postagem, Presidenciavel {
  late String objetivo;

  Candidato(String nome, {required this.ideologia, required this.partido})
      : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivoPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

// interfaces
  @override
  late String postagem;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no Facebook: $postagem');
  }

  @override
  late String ideologia;

  @override
  late String partido;

  @override
  void ideologiaPolitica() {
    print(
        '$nome é candidato com ideologia de $ideologia pelo partido $partido');
  }

  @override
  void prestacaoContas() {
    elegivel = super.declaracaoRenda();
    if (elegivel) {
      print(
          'Candidato $nome passou na prestação de contas\nAutorizado a concorrer nas eleições de 2022');
    } else {
      print(
          'Candidato $nome foi barrado na prestação de contas!\nSaldo $saldo excede a renda declarada para Presidente ');
    }
  }
}

//CLASSE ABSTRATA
abstract class Cidadao {
  String nome;

  Cidadao(this.nome);
  void objetivoPessoais();

  void direitosDeveres() {
    print('Todo cidadão tem direitos e deveres');
  }
}

//INTERFACES
class Postagem {
  late String postagem;

  void escreverPostagem() {
    print('');
  }
}

abstract class Presidenciavel {
  late String partido;
  late String ideologia;

  void ideologiaPolitica();
}

//MIXIN

mixin Elegivel on Cidadao {
  bool elegivel = false;
  void prestacaoContas();
}

abstract class Conta {
  late double _saldo;
  double salario = 33000;
  get saldo => _saldo;
  set depositar(double valor) => this._saldo = valor;

  bool declaracaoRenda() => _saldo / 12 < salario;
}
