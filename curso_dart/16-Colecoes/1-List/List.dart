import 'dart:math';

///
///* Conceito;
/// - List é uma coleção dinamica e ordenada de elementos entre colchetes []
/// - forEach: Aplica a função anonima a cada elemento da nossa coleção
/// - Toda array é um List<?>

listForEach() {
  print('16.1.0) List ForEach\n');

  var array = [0, 2.5, 5, 7.25, 10];
  array.forEach((element) {
    print('foreach $element');
  });

  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  List<bool> boleanas = [true, false, !true, !false];
  List<String> frutas = ['Morango', 'Banana', 'Tomates'];
  print('\nimplementação: ${frutas.runtimeType}');

  print(
      '\nboleanas[3]: ${(boleanas[inteiros.length]) ? 'verdadeiro' : 'falso'}\n');
  frutas.insert(0, 'abacaxi');
  frutas.add('Laranja');
  frutas.forEach((e) => print('foreach: $e'));
  print(frutas);
  frutas.removeLast();
  frutas.removeWhere((e) => e == 'Laranja'); // camelcase
  print(frutas);
  print(frutas.elementAt(2));
  print(frutas.contains('Banana'));

  List<num> numeros = List.from(inteiros) //adiciona lista de outra lista
    ..addAll(doubles) // adicionas todos da lista doubles
    ..shuffle() // desordena a lista
    ..sort(); // organiza a lista
  print('\n$numeros');

  List<dynamic> lista = [2];
  lista = numeros.take(2).skip(1).toList();
  print('lista: $lista');

  //geradores de lista
  List<String> listaPreenchida = List.filled(2, "elemento");
  List<String> listaGerada = List.generate(2, (i) => 'Nome ${i}');
  List<double> listaPreco = List.generate(
      5,
      (i) =>
          double.parse(((i + 1) * Random().nextDouble()).toStringAsFixed(2)));

  print(
      'listaPreenchida: $listaPreenchida \nlistaGerada: $listaGerada \nlistaPrecos: $listaPreco');
  listaPreco.forEach((e) => print('foreach: $e'));
}

///
///* Expand;
/// - Cria uma nova lista expandindo ou concatenando os elementos

listExpand() {
  print('\n16.1.1) List Expand\n');

  var lista = [
    [1, 2],
    [3, 4]
  ];

  List<dynamic> listaFlat = lista.expand((element) => element).toList();
  List<dynamic> listaDuplicada = listaFlat.expand((e) => [e, e]).toList();
  print('listaFlat: $listaFlat \nlistaDuplicada: $listaDuplicada');

  List<num> numeros = [1, 2.5, 5, 7.5, 10];
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  List<dynamic> ListaDinamica = [1];
  print('$ListaDinamica');
  print(ListaDinamica = [1, 5, 10] + [2, 7]);
  print(ListaDinamica = []..addAll(inteiros)..addAll(doubles));

  print(ListaDinamica = [0, ...inteiros, 15]); // operador spread(espalhar)
  print(ListaDinamica = [
    ...[],
    ...inteiros,
    if (doubles is List<double>) ...doubles
  ]);
  print(ListaDinamica = [...[], for (var numero in numeros) numero]);
}

///
///* Map:
///- Transforma/seleciona os elementos de uma coleção criando uma nova do mesmo tamanho!
///
listMap() {
  print('\n16.1.2) List Map\n');

  List<String> frutas = ['Morango', 'Banana', 'Tomate'];
  List<String> frutasMapeadas = frutas.map((e) => '$e é uma fruta').toList();
  print(frutasMapeadas);

  List<int> inteiros = [1, 5, 10];
  var incrementar = (int e) => ++e;
  final dobro = (int e) => e * 2;
  // List<int> com operações os elementos deve ser setados "definidos" como int
  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobro).toList();
  print(inteirosMapeados);

  List<double> doubles = [2.75, 5.5, 7.25];
  final triplo = (e) => e * 3;
  final Function moeda =
      (e) => 'R\$${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';
  Function porcentagem(desconto) => (valor) => desconto * valor; // closure
  List<dynamic> doubleMapeados = doubles
      .map(triplo)
      .map(porcentagem(0.9) as dynamic)
      .map(moeda as dynamic)
      .toList();
  print(doubleMapeados);
}

///
/// * Every;
///  - Faz o teste em todos elemntos com o operador lógico '&&' retornado (true ou false);
///
listEvery() {
  print('\n16.1.3 List Every');

  List<int> interios = [0, 1, 2, 3, 4, 5];
  bool resultado = interios.every((e) => e >= 0);
  print(resultado);
  List<String> textos = List.from(['Dandy', 'Lela', 'Doug']);
  resultado = textos.every((e) => e.contains('e'));
  print(resultado);
}

///
/// * Where
///  - Filtra os elementos da coleção criando uma nova do mesmo tamano ou menor
///

listWhere() {
  print('\n16.1.4) List Where\n');

  List<int> idade = [36, 12, 18, 31, 17, 23];
  print(idade.where((e) => e is int)); // retorno em Iterable
  print(idade.whereType<int>());
  List<int> adultos = idade.where((int e) => e > 17).toList();
  var crianca = idade.singleWhere((int e) => e <= 12); // orElse
  int menor = idade.lastWhere((e) => e.toString().startsWith('1'));
  print('adultos: $adultos adultos: $adultos criança: $crianca');
}

///
///* Reduce:
///- Compara os elementos da coleção retornando 1 unico elemento resultante;
/// - Ao integrar com os elementos o indice 0 se torna o anterior, indice 1 se torna o atual
///
listReduce() {
  print('\n16.1.5 List Reduce\n');

  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);
  int resultado = numerosPares.reduce((anterior, atual) {
    print('$anterior + $atual');

    return anterior + atual;
  });
  print(resultado);

  List<bool> boleanas = [true, false, !true, !false];
  bool and = boleanas.reduce((anterior, atual) => anterior && atual);
  bool or = boleanas.reduce((anterior, atual) => anterior || atual);
  print('and $and or: $or');

  List<int> idades = [23, 34, 67, 45, 89, 17];
  int maisNovo =
      idades.reduce((anterior, atual) => (anterior > atual) ? atual : anterior);
  print(maisNovo);
  int maisVelho =
      idades.reduce((anterior, atual) => (anterior < atual) ? atual : anterior);
  int media = idades.reduce((anterior, atual) => anterior + atual);
  print(
      'mais novo: $maisNovo mais velho: $maisVelho média: ${(media / idades.length).toStringAsFixed(2)}');
}

///
///*Fold
/// - Compara os elementos da coleção retornando 1 único elemento resultante!
/// - O valor inicial se torna o anterior e o indice 0 se torna o atual
///

listFold() {
  print('\n16.1.6) List Fold\n');

  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);
  int valorInicial = 10;
  int resultado = numerosPares.fold(valorInicial, (anterior, atual) {
    print('$anterior + $atual');
    return anterior + atual;
  });
  print('$resultado\n');
  valorInicial = 30;
  resultado = numerosPares.fold(valorInicial, (anterior, atual) {
    print('$anterior - $atual');
    return anterior - atual;
  });
  print(resultado);
}

void main() {
  print('16.1) Coleções');
  listForEach();
  listExpand();
  listMap();
  listEvery();
  listWhere();
  listReduce();
  listFold();
}
