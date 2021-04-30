class Pessoa {
  String nome;
  int idade;
  late String cor;
  double altura;
  Pessoa(this.nome, this.idade, {String? cor, this.altura = 0}) {
    this.cor = (cor == null) ? 'indefinida' : cor;
    print('Construtor resumido de parametros nomeados ${this.toString()}\n');
  }
}