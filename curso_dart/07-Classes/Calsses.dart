import 'Conta.dart';
import 'Pessoa.dart';
import 'Usuario.dart';

void main() {
  print('07.0) Classes/Objetos');

  Pessoa pessoa1 = Pessoa();
  pessoa1.nome = 'Dandy';
  pessoa1.idade = 23;
  print('nome: ${pessoa1.nome} idade: ${pessoa1.idade}');

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Doug';
  pessoa2.idade = 21;
  print('nome: ${pessoa2.nome} idade: ${pessoa2.idade}');

  //permite emitir varias chamadas por meio de um objeto;
  var pessoa3 = Pessoa();
  pessoa3
    ..nome = 'Lela'
    ..idade = 43
    ..info();

  Usuario usuario = Usuario();
  //dados fornecidos pelo usuario
  usuario.usuario = 'dandy@gmail.com';
  usuario.senha = '123456';
  usuario.autenticar();

  Conta conta = Conta();
  print(
      'Nome: ${conta.nome} NºConta: ${conta.numeroConta} Saldo: ${conta.consultarSaldo()}');
  conta.calcularSalario(950, 100, 2);
  conta.depositar(500.00);
  conta..sacar(100);
}
