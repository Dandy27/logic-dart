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

///
///* Map
///- Map transforma/seleciona os elementos de uma coleção criando uma nova do mesmo tamanho!
///

mapMap() {
  print('\n16.4.1) Map map\n');

  List<Map<String, dynamic>> carrinho = [
    {'nome': 'Borracha', 'preco': 3.45},
    {'nome': 'Caderno', 'preco': 13.9},
    {'nome': 'KitLapis', 'preco': 41.22},
    {'nome': 'Caneta', 'preco': 7.5}
  ];

  Function porcentagem(desconto) =>
      (valor) => desconto * valor['preco']; // closure
  final moeda =
      (e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';
  List<String> precos1 =
      carrinho.map(porcentagem(.9) as dynamic).map(moeda).toList();
  List<String> precos2 =
      carrinho.map((e) => e.update('preco', (e) => e * .9)).map(moeda).toList();
  String precoMedio = (carrinho.map((e) => e['preco']).reduce((p, c) => p + c) /
          carrinho.length)
      .toStringAsFixed(2);
  ;
  print(
      'Lista de precos1: $precos1\nLista de precos2: $precos2\nPreço Médio: $precoMedio');

  List<Map<dynamic, Object>> escola = [
    {
      'nome': 'Turma T1',
      'alunos': [
        {'nome': 'Dandy', 'nota': 8.1},
        {'nome': 'Nayla', 'nota': 9.3}
      ]
    },
    {
      'nome': 'Turma T2',
      'alunos': [
        {'nome': 'Doug', 'nota': 8.9},
        {'nome': 'Lela', 'nota': 10.0}
      ]
    }
  ];

  // List<dynamic> alunosEscola = escola
  //     .map((e) => e['alunos'])
  //     .expand((a) => a as Iterable)
  //     .map((e) => e['nota'])
  //     .toList();
  List<dynamic> alunosEscola =
      escola.map((e) => e['alunos']).expand((a) => a as Iterable).toList();

  print('Lista Ordenada: $alunosEscola');
  alunosEscola.sort((b, a) => a['nota'].compareTo(b['nota']));
  print('Lista Ordenada: $alunosEscola');
  double mediaNotas =
      alunosEscola.map((e) => e['nota']).reduce((p, c) => p + c) /
          alunosEscola.length;
  print('Média Alunos: ${(mediaNotas).toStringAsFixed(2)}');
  alunosEscola.forEach((e) => print('${e['nome']} ${e['nota']}'));
}

void main() {
  linkedHashMap();
  mapMap();
}
