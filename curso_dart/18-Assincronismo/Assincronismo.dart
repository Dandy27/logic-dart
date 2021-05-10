///
///* Future:
///- É o objeto que retorna o valor ou erro, resultado de execução assincrona/futura.
///

//função retorna string
String tarefa({int tempo = 1}) {
  var msg = status(tempo);
  return 'Status: $msg';
}

Future<String> status(int tempo) {
  return Future.delayed(
      Duration(seconds: tempo), () => 'Primeira Tarefa finalizada\n');
}

void novaTarefa({int tempo = 1}) {
  Future.delayed(Duration(seconds: tempo),
      () => print('\nStatus: Segunda Tarefa finalizada!\n'));
}

exececao({int tempo = 1}) => Future.delayed(
    Duration(seconds: tempo), () => throw Exception('Erro intencional'));

void contagem({int segundos = 3}) {
  print('Carrengando..\n');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('\nConcluído!');
    });
  }
}

void main() {
  print('18.0.0) Futures\n');
  print(tarefa(tempo: 4)); // o print é executado antes do termino do future
  novaTarefa(tempo: 4); // o print é executado no future!
  exececao(tempo: 6);
  contagem(segundos: 3);
}
