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

//1) controlador
  var controlador = StreamController<dynamic>();

  //2)stream
  var stream = controlador.stream;

  //3) inscrição de ouvintes na stream
  stream.listen((onData) {
    print('evento: $onData');
    lista.add(onData);
  }, onDone: () {
    print("Stream Finalizada");
    print(lista);
  });

  //4 adicionar um evento a stream
  controlador.sink.add('Dandy');
  controlador.sink.add(42);
  controlador.sink.add(1.83);
  controlador.sink.add(false);
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
  final _controlador = StreamController();

  get sink => _controlador.sink
      as dynamic; // não expor o controlador, exponha as interfaces
  get stream => _controlador.stream as dynamic;
  Contador({this.termino, this.erro}) {
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
  var minhaStream = Contador(termino: 5, erro: 3).stream;

//increção de ouvintes na stream
  final inscrito = minhaStream.listen(
      (onData) {
        print('Inscrito: $onData');
      },
      onError: (erro) {
        print('inscrito1: $erro');
      },
      cancelOnError: false,
      onDone: () {
        print('Inscrito1: Completo!');
      });
}

void main() {
  // conceito();
  model();
}
