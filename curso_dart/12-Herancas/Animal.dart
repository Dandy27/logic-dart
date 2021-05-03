class Animal {
  String idade;
  bool docil;
  Animal(this.idade, {required this.docil});

  void dormir() {
    print('Dorme como um animal');
  }
}