/**
 * Sincrona:
 * -Operações sincronas Bloqueia a execução até que seja concluída!
 * -Funções sincronas: Executa somente operações sincronas.
 
 * Assincrona:
 * - Operações assincronas: Permite executar outras operações enquanto são processadas.
 * - Funções assincrona: Executam ao menos uma operção assincrona e opreções sincronas.
 
 * Await:
 * - Indica a espera uma operação assincrona, conclusão de uma future!
 */

///
///*FUNÇÃO ASSINCRONA
///
Future<String> tarefa({int tempo = 1}) async {
  var msg = await status(tempo);
  return 'Status: $msg';
}

Future<String>? status(int tempo) {
  try {
    // Future.error('Tempo insufuciente para o Load programado');
    if (tempo < 4) throw Exception('Tempo insufuciente para o Load programado');
    return Future.delayed(
        Duration(seconds: tempo), () => 'Primeira Tarefa finalizada\n');
  } catch (e) {
    print('catch: $e');
    return null;
  }
}

///
///* FUNÇÂO SINCRONA
///
void contagem({int segundos = 3}) {
  print('Carrengando..\n');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('\nConcluído!');
    });
  }
}

void main() async {
  print('18.2.0) Async Await\n');
  contagem(segundos: 3); // função sincrona
  print(await tarefa(tempo: 3)); // função assincrona
}
