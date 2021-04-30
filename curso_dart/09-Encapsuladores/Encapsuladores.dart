import 'Conta.dart';
import 'Usuario.dart';

///
///Encapsuladores são usados para proteger os atributos e variáveis
///Get é usado para acessar e o Set é usado para alterar
///Atributos ou variáveis com underline são privados Ex.: _saldo
///
void main() {
  print('09.0) Encapsuladores\n');

  var usuario = Usuario('Daniels', 'abc123');
  usuario
    ..senha = '1233456'
    ..alteracao = true
    ..senha = '123456';
  print('nome: ${usuario.nome} senha: ${usuario.senha}\n');

  var conta = Conta('Dandinho');
  conta.deposito = 900;
  conta.deposito = 400;
  conta.saque = 100;

  print('');

  conta.limite = 700;
  conta.alterarLimite = true;
  conta.limite = 1000;
  conta.alterarLimite = false;

  print('');

  conta.saque = 950;
  conta.saque = 250;
}
