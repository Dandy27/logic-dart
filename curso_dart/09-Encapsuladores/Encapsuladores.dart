import 'Conta.dart';
import 'Usuario.dart';

///
///Encapsiladores são usados para proteger os atributod e variáveis
///Get é usado para acessar e o Set é usado para alterar
///Atributos ou variáveis com underline sçao privados Ex.: _saldo
///

void main() {
  print('09.0) Encapsuladores\n');

  var usuario = Usuario('Dandy', 'abc123');
  usuario
    ..senha = '123456'
    ..alteracao = true
    ..senha = '123456';
  print('Nome:  ${usuario.nome} senha: ${usuario.senha}');

  var conta = Conta('Daniel Barbosa');
  conta
    ..deposito = 900
    ..deposito = 100
    ..saque = 500
    ..saque = 500;

  print('');

  conta
    ..limite = 700
    ..alterarLimite = true
    ..limite = 1000
    ..deposito = 1000
    ..saque = 1000
    ..alterarLimite = false
    ..deposito = 1000
    ..saque = 700
    ..saque = 300
    ..saque = 200;
  print('${conta.infomacao}\n');
  print('Conta vip');
  Conta contaVip = Conta.vip('Lela Barbosa');
  contaVip
    ..deposito = 1000
    ..deposito = 12000
    ..saque = 13000
    ..limite = 15000
    ..saque = 15000
    ..deposito = 2000
    ..saque = 15000;
  print(contaVip.infomacao);
}
