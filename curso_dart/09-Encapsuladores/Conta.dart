import 'dart:math';



class Conta {
  bool alterarLimite = false;
  late int _numeroConta;
  late String _nome;
  double _saldo = 0;
  double _limite = 500;

  Conta(String nome) {
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print(
        'Conta numero: "${_numeroConta}" Titular: ${_nome} Criada com sucesso!');
  }

  Conta.vip(String nome, {double limite = 10000}) {
    this.alterarLimite = true;
    this._limite = limite;
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print('Conta numero: ${_numeroConta} Titular: ${_nome}');
  }

  //getter padrão
  int get numeroConta => this.numeroConta;

  double get saldo => this._saldo;

  //setter padrão
  set limite(double limite) {
    if (alterarLimite) {
      this._limite = limite;
      print('Limmite alterado para o valor: ${(_limite).toStringAsFixed(2)}');
    } else {
      print('Permissão negada! Ateração: Limite do titular');
    }
  }

  //getter e setter costumizaveis
  String get infomacao =>
      'Titular: ${_nome} Nº Conta: ${_numeroConta} Saldo atualizado:${(_saldo).toStringAsFixed(2)} ';

  set deposito(double deposito) {
    if (deposito > 0) {
      this._saldo += deposito;
      print(
          'Deposito valor: ${(deposito).toStringAsFixed(2)} Saldo atualizado: ${(_saldo).toStringAsFixed(2)}');
    }
  }

  set saque(double saque) {
    if (saque > 0 && saque <= _limite) {
      if (saque <= _saldo) {
        this._saldo -= saque;
        print(
            'Saque valor: ${(saque).toStringAsFixed(2)} Saldo atualizado: ${(_saldo).toStringAsFixed(2)} ');
      } else {
        print(
            'Saldo valor: ${(_saldo).toStringAsFixed(2)} insuficiente para saque de ${(saque).toStringAsFixed(2)} ');
      }
    } else {
      print('Limite para saque: ${(_limite).toStringAsFixed(2)}');
    }
  }
}
