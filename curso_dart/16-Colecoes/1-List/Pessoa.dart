import 'dart:math';

class Pessoa {
  String nome;
  String sobrenome;
  late int _identidade;
  Pessoa(this.nome, this.sobrenome, {required int? identidade}) {
    this._identidade =
        (identidade == null) ? Random().nextInt(99999999) : identidade;
  }
  int get identidade => _identidade;
}