
class Animal {
  late String nome;
  late String? raca;
  late int? idade;

  Animal(String nome, [String? raca = 'cat', int? idade = 0]) {
    this.nome = nome;
    this.raca = raca;
    this.idade = idade;
    print('Contrutor com parametros default! ${this.toString()}\n');
  }
}