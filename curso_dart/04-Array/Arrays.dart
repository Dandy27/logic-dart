///
/// Array é uma lista dinamica e ordenada entre chaves
///

void main() {
  print('04.0) Arrays\n');

  var textos = ['Daniel', 'Doug'];
  var numeros = [1, 2.5, 5, 31, 36];
  var condicoes = [!false, true, false, null];
  print('${textos[0]} e ${textos[1]} são irmãos');
  print('${textos[0]} tem ${numeros[4]} anos de idade');
  print('${textos[1]} ${numeros[3] > 17 ? 'é maior' : 'é menor'} de idade');
  print(
      'condiões[3] == null: ${condicoes[3] ?? (condicoes[0] as bool ? condicoes[1] : condicoes[2])}');

  bool verdadeiro = !false;
  var arrayDinamico = ['texto', [], 3, 1.5, verdadeiro];
  print(arrayDinamico);
  arrayDinamico[0] = textos[0];
  print(arrayDinamico);
  arrayDinamico[1] = ['Douglas', 'Barbosa', 'Santos'];
  print(arrayDinamico);
  arrayDinamico[2] = numeros[2];
  print(arrayDinamico);
  arrayDinamico[3] = numeros[1];
  arrayDinamico[4] = !verdadeiro;
  print(arrayDinamico);

  print('04.1) Arrays Funções\n');

  arrayDinamico.add(condicoes[3] ?? '0'); //add
  print(arrayDinamico);

  arrayDinamico.insert(1, 'Leka');
  print(arrayDinamico);
  arrayDinamico.insert(2, 'Maria');
  print(arrayDinamico);
  arrayDinamico.removeAt(1);
  print(arrayDinamico);
  arrayDinamico.removeRange(1, 4);
  arrayDinamico.remove(2.5);
  print(arrayDinamico);
  print(arrayDinamico.length);

  arrayDinamico.clear();
  // arrayDinamico?.length = 1; // pesquisar
  print('$arrayDinamico == null: ${arrayDinamico}');
  print('$arrayDinamico == empty: ${arrayDinamico.isEmpty}\n');

  arrayDinamico.add(1);

  print('$arrayDinamico ?? ${arrayDinamico.contains(null)}');
  print(arrayDinamico.length);

  numeros = [10, 5, 1, 2.25, 7.5];
  numeros.sort((b, a) => a.compareTo(b));
  print(numeros);
  textos = ['Dandy', 'Doug', 'Lela'];
  textos.sort((a, b) => a.compareTo(
      b)); // basta inverter ordem a b para obter uma lista crescente!
  print(textos);

  numeros = [1, 2, 3];
  numeros.sort((b, a) => a.compareTo(b));
  print(numeros);


}
