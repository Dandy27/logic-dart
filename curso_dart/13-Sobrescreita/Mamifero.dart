
import 'Animal.dart';

abstract class Mamiferos extends Animal {
  String sexo;
  late String desenvolvimento;

  Mamiferos.placentarios(this.sexo, idade, {docil})
      : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentarios';
  }
  Mamiferos.marsupiais(this.sexo, idade, {docil})
      : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentarios + Bolsa externa';
  }
  Mamiferos.monotramados(this.sexo, idade, {docil})
      : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print('Se alimenta');
    print('como um');
  }

  // metodos sem escopo e, classes abstratas devem ser sobrescritas em classes herdeiras
  void reproduzir();
}