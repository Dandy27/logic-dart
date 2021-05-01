class Usuario {
  bool alteracao = false;
  String nome;
  late String _senha;

  Usuario(this.nome, String senha) {
    this._senha = senha;
  }

  //getter padrão
  String get senha => _senha;

  set senha(String senha) {
    if (alteracao) {
      _senha = senha;
      print('Sucesso: Senha altera');
    } else {
      print('Erro: Acesso negado ');
    }
  }
}
