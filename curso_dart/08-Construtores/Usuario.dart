class Usuario {
  String user;
  String senha;
  String? nome;
  String? cargo;
  int? idade;

  Usuario(this.user, this.senha, {this.nome, this.cargo}) {
    this.nome = (nome == null) ? 'Sem nome' : nome;
    this.cargo = (cargo == null) ? 'Usuario' : cargo;
    print(
        'Construtor resumido com parametros nomeados default! ${this.toString()}\n');
  }
  Usuario.admin(this.user, this.senha, {this.nome, this.cargo}) {
    this.nome = (nome == null) ? 'Sem nome' : nome;
    this.cargo = 'Administrador';
    print(
        'Construtor resumido com parametros nomeados default! ${this.toString()}\n');
  }
  void autenticar() {
    //dados recuperados do banco de dados
    var user = 'dandy@gmail';
    var senha = 'abc123';
    (this.user == user && this.senha == senha)
        ? print('usuario autenticado')
        : print('usuario não autenticado');
  }
}