abstract class Animal {
  String idade;
  bool docil;
  late bool coluna;
  Animal.vertebrados(this.idade, {required this.docil}) {
    this.coluna = true;
  }
  Animal.invertebrados(this.idade, {required this.docil}) {
    this.coluna = false;
  }
  void dormir() {
    print('Dorme como um animal');
  }
}