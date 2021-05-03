import 'Animal.dart';

class Mamifero extends Animal {
  String sexo;
  Mamifero(this.sexo, idade, docil) : super(idade, docil: docil);

  void alimentar() {
    print('Se alimenta com um mamífero');
  }
}