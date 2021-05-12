/**
 * Conceito
 * - Generators são funções geradoras que prosuzem sequencias de valores usando:
 *   - Funções sincronas que retornam Iterable
 *   - Funções assncronas que reotrnam Stream
 */

///
///*yield
/// - Utilazados em funções geradoras sincronas e assincronas
/// - Adiciona um valor ao fluxo de saída da função assincrona sem encerrar a função
funcoesGeradoras() {
  print('18.5.1) Funções geradoras');
  Iterable<int> funcaoSincrona(int repeticaoMaxima) sync* {
    int i = 0;
    while (i < repeticaoMaxima) yield ++i;
  }

  print(funcaoSincrona(5));

  Stream<int> funcaoAssincrona(int repeticaoMaxima) async* {
    int i = 0;
    while (i < repeticaoMaxima) yield ++i;
  }

  funcaoAssincrona(3).forEach((e) => print(e));
}

///
///*yield
/// - Utilizado em funções geradoras sincronas e assincronas recursivas
/// - Você poderá melhorar seu desempenho usando yield* usando gerador for recursivo
///

funcoesGeradorasRecursivas() {
  print('18.5.2) Funções Geradoras Recursivas\n');

  Iterable<int> funcaoSincrona(int repeticaoMaxima) sync* {
    for (var i = 1; i <= repeticaoMaxima; i++) {
      yield i;
      yield* funcaoSincrona(i - repeticaoMaxima);
    }
  }

  print(funcaoSincrona(3));
}

main() {
  // funcoesGeradoras();
  funcoesGeradorasRecursivas();
}
