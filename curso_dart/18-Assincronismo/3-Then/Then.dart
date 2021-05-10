/**
   * Conceito
   - "Then" registra callbacks que serão chamadas quando o  Future for concluído.
     - onValue: Valor passado ao término do Future 
     - catchError: Se omitindo é lançado como um exception
       - test: Se qualquer lógica retornar true é lançada a exception!
     - whenComlete: Chama uma função anonima ao termino do Future
 */

///
/// * FUNÇÕES ASSINCRONAS
///

Future<String>? tarefa({int? tempo = 1}) {
  return status(tempo).then((msg) {
    return '\nStatus: $msg';
  }).catchError((onError) {
    print('CatError: $onError');
  },
      test: (onError) =>
          onError is! Future && onError.runtimeType != Future).whenComplete( // rever código 
      () => print('Future Completa'));
}

Future<String> status([int? tempo]) {
  return Future.delayed(Duration(seconds: tempo as dynamic),
      () => Future.error('Erro itencional'));
  // return Future.delayed(Duration(seconds: tempo as dynamic),
  // () => 'Primeira tarefa finalizada!\n');
}

///
/// * FUNÇÃO SINCRONA
///

void contagem({int segundos = 3}) {
  print('Carregando..\n');
  for (var i = 0; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('\nConcluído');
    });
  }
}

void main() {
  print('18.3.0) Then\n');
  contagem(segundos: 3);
  tarefa(tempo: 4)?.then((onValue) => print(onValue));
}
