



import 'models/Carro.dart';
import 'models/Pessoa.dart';

void main() {
  print('16.4.5) Map Objetos\n');
  Carro c1 = Carro('Honda', 'Civic');
  Carro c2 = Carro('Fiat', 'Palio');
  Carro c3 = Carro('Toyota', null);
  Map<String, Carro> carros = {'0': c1, '1': c2};
  carros['2'] = c3;

  for (var i = 0; i < carros.length; i++) {
    print(carros['${i}']?.modelo);
  }

  for (String chave in carros.keys) {
    final carro = carros[chave];
    print('forIn: $chave ${carro?.modelo}');
  }

  carros.forEach((chave, valor) => print('forEach $chave ${valor.modelo}'));

  print('16.4.5) Map Singletons\n');

  Pessoa p1 = Pessoa('Dandy', idade: 42, peso: 70);
  Pessoa p2 = Pessoa('Nayla', idade: 30, peso: 60);
  Pessoa('Lela', idade: null, peso: null);
  Pessoa('Paloma', idade: null, peso: null);
  Pessoa.mostrarPessoas();
  p1.peso = 70;
  Pessoa.mostrarDetalhes('Dandy');
  p2.peso = 61.1;
  Pessoa.alterarDetalhes('Nayla', idade: 31, peso: 55);
  Pessoa.mostrarPessoas();
}
