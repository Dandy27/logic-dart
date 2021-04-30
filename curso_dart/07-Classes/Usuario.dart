class Usuario {
  late String usuario;
  late String senha;

  void autenticar() {
    //dados recuperados do banco de dados
    var usuario = 'dandy@gmail.com';
    var senha = '123456';

    if (this.usuario == usuario && this.senha == senha) {
      print('Usuario autenticado');
    } else {
      print('Usuario não autenticado');
    }
  }
}