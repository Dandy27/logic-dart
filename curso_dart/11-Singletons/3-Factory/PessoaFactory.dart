import 'dart:math';

class PessoaFactory {
  static final PessoaFactory instancia =
      PessoaFactory._construtorNomeado('indefinido');
  String nome;

  factory PessoaFactory() => instancia;

  PessoaFactory._construtorNomeado(this.nome) {
    //configurações iniciais
  }
}

class PessoaInstancia {
  static PessoaInstancia? _instancia; //retirar o underline para usar o singleton
  late String nome;
  final int _identidade;

  factory PessoaInstancia(
      {required String nome, required int identidade}) {
    identidade =
        (identidade == null) ? Random().nextInt(999999999 + 1) : identidade;
    return _instancia ??= PessoaInstancia._construtorNomeado(nome, identidade);
  }

  PessoaInstancia._construtorNomeado(this.nome, this._identidade){
    //cofigurações iniciais
  }
  get identidade => _identidade;
}
