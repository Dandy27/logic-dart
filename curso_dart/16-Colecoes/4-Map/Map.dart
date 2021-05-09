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

  Map<String?, dynamic> frutas = Map();
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

///
///*Conceito:
///-Every faz o teste em todos os elementos com o operador lógico (true ou false)
///

everyMap() {
  print('\n16.4.2) Map Every\n');
  List<Map<String, dynamic?>> pessoas = [
    {'nome': 'Renato', 'idade': 30},
    {'nome': 'Luís', 'idade': 90},
    {'nome': 'Miguel', 'idade': 100}
  ];
  print(pessoas.every((e) => e.containsKey('nome')));
  print(pessoas.every((element) => element['idade'] < 17));
  bool maiores = pessoas.every((element) => element['nome'].startsWith('L'));
  print(maiores);
}

///
///* Conceito
/// - Where filtra os elementos da coleção criando uma nova do mesmo tamanho ou menor
///

whereMap() {
  print('16.4.3) Map Where');

  List<Map<dynamic, dynamic>> produtos = [
    {'nome': 'Notebook', 'preco': 5000, 'fragil': true},
    {'nome': 'iPad', 'preco': 4999, 'fragil': true},
    {'nome': 'iPhone', 'preco': 8999, 'fragil': true},
    {'nome': 'Mouse', 'preco': 234, 'fragil': true},
  ];
  final fragil = (e) => e['fragil'] == true;
  final nome = (e) => e['nome'];
  List<dynamic> resultado = produtos.where(fragil).map(nome).toList();
  print('Produtos Frageis: $resultado\n');
  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Dandy', 'idade': 42},
    {'nome': 'Doug', 'idade': 43},
    {'nome': 'Lela', 'idade': 39}
  ];
  // List<Map<String, dynamic>> maiores =
  //     pessoas.where((e) => e['idade'] >= 40).toList();
  // Map<String, dynamic> comecaComL = pessoas.firstWhere(
  //     (e) => e['nome'].startsWith('L')); // resolver / porque não aceita null'
  // Map<String, dynamic> menores = pessoas.singleWhere((e ) => e['idade'] < 18 );
  // final Function idades = (e) => e['idades'] ;
  // final Function soma = (p, c) => p + c;
  // var media = (pessoas.map(idades ).reduce(soma )) / pessoas.length;
  // ;
  // print(media);

  // print('Maiores: $maiores \nMedia Idades: $idades\nNomes com L: $comecaComL');
}

///
///*Conceito:
///- Reduce compara os elementos da coleção retornando 1 único elemento resultante!
///- Ao interagir com os elemntos o indice 0 se torna o anterior, indice 1 torna-se o atual
///

reduceMap() {
  print('\n16.4.4) Map Reduce\n');

  List<Map<String, dynamic>> alunos = [
    {'nome': 'Dandy', 'nota': 7.3, 'bolsistas': false},
    {'nome': 'Doug', 'nota': 9.3, 'bolsistas': true},
    {'nome': 'Nayla', 'nota': 9.3, 'bolsistas': true},
    {'nome': 'Lela', 'nota': 8.3, 'bolsistas': false},
  ];
  final Function bolsistas = (e) => e['bolsistas'] as bool;
  final Function nomes = (e) => e['nome'];
  final Function notas = (e) => e['nota'];
  final Function soma = (p, c) => p + c;

  List<dynamic> bolsistasNomes =
      alunos.where(bolsistas as dynamic).map(nomes as dynamic).toList();
  List<Map<String, dynamic>> medias =
      alunos.where(bolsistas as dynamic).toList();
  var bolsistasMedia =
      medias.map(notas as dynamic).reduce(soma as dynamic) / medias.length;
  bool todosBolsistas =
      alunos.map(bolsistas as dynamic).reduce((p, c) => p && c);
  bool todosBolsista =
      alunos.map(bolsistas as dynamic).reduce((p, c) => p || c);
  print('Todos são Bolsistas? ${todosBolsistas ? 'sim' : 'nao'}');
  print('Algum Bolsista ? ${todosBolsista ? 'sim' : 'nao'}');

  print(
      'Alunos bolsistas: $bolsistasNomes\nMedia notas: ${(bolsistasMedia).toStringAsFixed(2)}');

  List<dynamic> funcionarios = [
    {'nome': 'Dandy', 'genero': 'M', 'pais': 'Brasil', 'salario': 1200.00},
    {'nome': 'Lela', 'genero': 'F', 'pais': 'Brasil', 'salario': 1000.00},
    {'nome': 'Nayla', 'genero': 'F', 'pais': 'Brasil', 'salario': 1900.00},
  ];
  final Function brasileiros = (e) => e['pais'] == 'Brasil';
  final Function mulheres = (e) => e['genero'] == 'F';
  final Function menorSalario = (p, c) => p['salario'] < c['salario']
      ? p['salario']
      : c['salario']; // filtro para salario
  final Function funcMenorSalario =
      (p, c) => p['salario'] < c['salario'] ? p : c; // filtro para funcionários
  List<dynamic> selecionados = funcionarios
      .where(brasileiros as dynamic)
      .where(mulheres as dynamic)
      .toList();
  print(selecionados.reduce(menorSalario as dynamic));
  // print(selecionados);

  Map<String, dynamic> funcionario = selecionados.reduce(funcMenorSalario as dynamic);
  print('Funcionario: ${funcionario['nome']} salario: ${funcionario['salario']}');
}

void main() {
  linkedHashMap();
  mapMap();
  everyMap();
  whereMap();
  reduceMap();
}
