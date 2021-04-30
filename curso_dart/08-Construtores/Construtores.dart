
import 'Animal.dart';
import 'Pessoa.dart';
import 'Usuario.dart';

///
///Os construtores devem ter os mesmos nomes da classe
///Eles são iniciados quando instaciamos as classes, podendo fazer configurações iniciais.
///

void main() {
  print('08.0) Construtores');

  Objeto objeto = Objeto();
  objeto.nome = 'mesa';
  print('nome: ${objeto.nome}');

  Animal animal = Animal(
    'Simba',
  );
  print('nome: ${animal.nome} raca: ${animal.raca} idade: ${animal.idade}\n');

  Pessoa pessoa = Pessoa('Daniels', 32, altura: 1.9);
  print(
      'nome: ${pessoa.nome} idade: ${pessoa.idade} cor: ${pessoa.cor} altura: ${pessoa.altura}/n');
//dados fornecidos pelo usuario
  Usuario usuario = Usuario('dandy@gmail', 'abc123', nome: 'Daniel Barbosa');
  print(
      'usuario: ${usuario.user} senha: ${usuario.senha}, nome: ${usuario.nome} cargo: ${usuario.cargo}\n');
  usuario.autenticar();
  //dados ineridos pelo administrador 
  Usuario admin = Usuario('dandy@gmail', 'abc123', nome: 'Daniel');
  print(
      'admin: ${admin.user} senha: ${admin.senha}, nome: ${admin.nome} cargo: ${admin.cargo}\n');
}






class Objeto {
  late String nome;
  Objeto() {
    print('Contrutor sem Parametros! ${this.toString()}\n');
  }
}
