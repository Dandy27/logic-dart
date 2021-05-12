import 'dart:async';

/**
 * Conceito:
 * - Streams é uma forma de monitorar eventos. Ao adicionar eventos na stream os ouvintes ser[ao notificados
 *  - As streams fornecem uma sequencia assincrôna de dados. Para processar uma streams use await() ou listen().
 *  - Existem dois tipos de stream: assiniatura unic(subscription) ou transmissão(broadcast). 
 *  - Stream é uma sequencia com vários Futures! Ao invés de obter um evento solicitado(Future), a stream informa que há um evento quando está pronto
 * 
 * stream
 * - Fluxo que a clasee StreamControler() está gerenciando.
 * 
 * add()
 * -Adiciona eventos na stream notificando os ouvintes que estão monitorando!
 * 
 * listen()
 * -Inscreve um ouvinte na stream para aguardar notificações de eventos
 * onData: Notifica o assinante com eventos de dados da stream, se for nulo, nada acontece.
 * onError: Tratamento de eventos com erro e possivel rastreamento Stck Trace.Se omitido erros serão considerados excptions:
 * onDone: Evento chamado quando a stream é fechado
 * cancelOnError: A assinatura é cancelada automaticamente ao receber um evento erro
 */

///
///*CONCEITO
//
conceito() {
  print('18.4.1) Stream Conceito');

  var lista = [];

//1) conrolador
  var controlador = StreamController<dynamic>();

//2)stream
  var stream = controlador.stream;

//3)incrição de ouvintes na stream
  stream.listen((onData) {
    print('evento: $onData');
    lista.add(onData);
  }, onDone: () {
    print('Stream finalizada');
    print(lista);
  });

//4 adicionar um evento a stream
  controlador.sink.add('Dandy');
  controlador.sink.add(36);
  controlador.sink.add(1.67);
  controlador.sink.add(36);
  controlador.sink.add(true);
  controlador.close();

  print('Monitorando..');
}

///
///* MODEL
///

class Contador {
  var _contagem = 1;
  var termino;
  var erro;
  final _controlador = StreamController<int>();

  Sink<int> get sink =>
      _controlador.sink; // não expor o controlador, exponha as interfaces
  Stream<int> get stream => _controlador.stream;

  Contador({this.termino = 5, this.erro = 3}) {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _contagem < termino ? sink.add(_contagem) : sink.close();
      _contagem++;
      if (_contagem == erro) _controlador.addError('Erro intencional');
      if (_contagem > termino) timer.cancel();
    });
  }
}

model() {
  print('18.4.2) Stream Model');

// stream
  var minhaStream = Contador(termino: 5, erro: 3).stream.asBroadcastStream();

// inscreição de ouvintes

  final inscrito1 = minhaStream.listen(
    (onData) {
      print('Inscrito1: $onData');
    },
    onError: (erro) {
      print('Inscrito1: $erro');
    },
    cancelOnError: false,
    onDone: () {
      print('Inscrito1: Completo!');
    },
  );
  var pares = (e) => e % 2 == 0;
  var mapear = (e) => '$e é par';

  //modificar eventos

  final inscrito2 = minhaStream.where(pares).map(mapear).listen(
        (onData) {
          print('Inscrito2: $onData');
        },
        onError: (erro) {
          print('Inscrito2: $erro');
        },
        cancelOnError: false,
        onDone: () {
          print('Inscrito2: Completo!');
        },
      );

  // gerenciar inscritos
  for (var i = 1; i <= 3; i++) {
    Future.delayed(Duration(seconds: i), () {
      if (i == 1) inscrito1.pause();
      if (i == 2) inscrito1.resume();
      if (i == 3) inscrito1.cancel();
    });
  }
}

///
///metodos
///
metodos() async {
  print('18.4.3) Stream Metodos e Ouvintes\n');

  var  stream = Stream<dynamic>.periodic(Duration(seconds: 1), (e) => e + 1)
      .take(5)
      .asBroadcastStream();

  stream = stream
      .takeWhile((e) => e <= 5)
      .skipWhile((e) => e > 3)
      .take(3)
      .map((e) => e.toString()
      .padLeft(2, '0'));

  //ouvintes
  stream.listen((onData) {
    print('listen: $onData');
  }, onDone: () {
    print('Contagem finalizada');
  });

  // stream.forEach((e) => print('ForEach: $e'));
  // await for (dynamic evento in stream) {
  //   print('forIn $evento');
  // }

  // List<dynamic> eventos = await stream.toList();
  // print(eventos);

  Future<List<dynamic>> eventosFuturos = stream.toList();
  print(await eventosFuturos);
}

void main() {
  // conceito();
  // model();
  metodos();
}
