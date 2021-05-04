import 'Artropodes.dart';

class Abelha extends Artropodes {
  String tamanho;
  String cor;

  Abelha.brasileira(this.tamanho, this.cor,
      {String idade = 'indefinida', bool docil = true})
      : super.insetos(tamanho, idade, docil: docil);

  @override
  void reproduzir() {
    print('Reproduz zunido');
  }
}
