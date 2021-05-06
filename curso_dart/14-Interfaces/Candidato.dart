import 'Cidadao.dart';
import 'Postagem.dart';
import 'Presidenciavel.dart';

class Candidato extends Cidadao implements Postagem, Presidenciavel {
  late String objetivo;

  Candidato(String nome, {required this.ideologia, required this.partido})
      : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivoPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

// INTERFACES
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
}
