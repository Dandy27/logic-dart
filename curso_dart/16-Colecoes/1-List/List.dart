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

void main() {
  print('16.1) Coleções');
  listForEach();
}
