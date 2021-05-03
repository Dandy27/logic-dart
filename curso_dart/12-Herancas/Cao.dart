import 'Mamifero.dart';

class Cao extends Mamifero {
  String nome;
  String raca;
  Cao(this.nome, this.raca, String sexo, {required String? idade, required bool? docil})
      : super(sexo, idade, docil);

  void acao() {
    print('Latte com um cão');
  }
}