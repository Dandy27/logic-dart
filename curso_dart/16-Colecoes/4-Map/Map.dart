///
///*Conceito
///- Map é uma coleção dinamica e costumizável de chaves e valores ente {}. As chaves são única, e os valore não se repetem!
///
linkedHashMap() {
  print('16.4.0) LinkesHashMap');

  List<String> nomes = ['Dandy', 'Nayla'];
  Map<int, dynamic> nomesMap = nomes.asMap(); // converte uma lista em Map
  print('\n$nomesMap\n');
  nomesMap.forEach((key, value) => print('$key: $value'));

  Map<String?, dynamic?> frutas = Map();
  frutas['banana'] = 'amarela';
  frutas['banana'] = 'verde';
  frutas['goiaba'] = 'amarela';
  frutas['maça'] = 'vermelha';

  print('\n$frutas');
  print(frutas.containsKey('banana'));
  print(frutas.containsValue('azul'));
  print(frutas['banana']);
  frutas.clear();
  frutas[null] = null; // aceita chave e valor null
  print(frutas);

  Map<String, dynamic> usuario =
      Map.from({'nome': 'Dandy', 'idade': 36, 'peso': 70.0});
  usuario.update('nome', (value) => '$value Barbosa');
  usuario.update('idade', (value) => ++value); //incrementar antes atualizar
  usuario.update('peso', (value) => 70, ifAbsent: () => 'Indefinido');
  print(usuario);
  usuario.removeWhere((key, value) => key == 'peso' && value == 70);
  usuario.update('peso', (value) => 70, ifAbsent: () => 'indefinido');
  usuario.putIfAbsent('altura', () => 1.83);
  usuario.addAll({'sexo': 'masculino', 'casado': false});
  print(usuario);
  print('chave: ${usuario.keys} \n ${usuario.values}\n');

  Map<int, dynamic> numeros = {0: 'zero', 1: 'um', 2: 'dois'};
  print(numeros);
  print(numeros.map((key, value) =>
      MapEntry(key, '${value.toUpperCase()}'))); // mapeando os valores
  for (var item in numeros.keys) {
    print('forIn: $item');
  }
  for (var item in numeros.values) {
    print('forIn: $item');
  }
  for (var key in numeros.keys) {
    final valor = numeros[key];
    print('foIn: chave $key valor ${valor.toUpperCase()}');
  }
}

void main() {
  linkedHashMap();
}
