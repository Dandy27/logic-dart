import 'Animal.dart';

abstract class Artropodes extends Animal {
  String tamanho;
  late String desenvolvimento;

  Artropodes.insetos(this.tamanho, idade, {docil})
      : super.invertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  Artropodes.aracnidios(this.tamanho, idade, {docil})
      : super.invertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  Artropodes.crustaceos(this.tamanho, idade, {docil})
      : super.invertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print('Se alimenta');
    print('como um');
  }

  void reproduzir();
}
