void semRetorno() {
  print('06.0) Funcoes sem retorno\n');

  void conceito() {
    print('Funcão void sem retorno');
  }

  void somaValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    print('Soma: $valorA + $valorB = $resultado');
  }

  void verificarMAiorIdade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'Não é maior';
    }
    print('$nome $resposta de idade');
  }

  void contagemRegressiva(int numero) {
    for (var i = numero; i >= 0; i--) {
      print('Contagem: ${(i == 0) ? 'vai' : i}');
    }
  }

  converterKparaMilhas(dynamic array) {
    dynamic milha = 0.621271;
    for (dynamic item in array) {
      print('$item\t km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    print('Array convertido e arredondado');
  }

  conceito();
  somaValores(27, 3);
  verificarMAiorIdade('DAndy', 42);
  contagemRegressiva(5);
  converterKparaMilhas(
      [1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]);
}

comRetorno() {
  print('06.1) Função com retorno\n');

  String conceito() {
    return 'Funcao com retorno String';
  }

  String somaValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    return 'Soma: $valorA + $valorB = $resultado';
  }

  String verificarMAiorIdade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'Não é maior';
    }
    return '$nome $resposta de idade';
  }

  String contagemRegressiva(int numero) {
    var resultado;
    for (var i = numero; i >= 0; i--) {
      (i != 0) ? print('Contagem $i') : resultado = 'Contagem Vai!!!';
    }
    return resultado;
  }

  String converterKparaMilhas(dynamic array) {
    dynamic milha = 0.621271;
    for (dynamic item in array) {
      print('$item\t km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    return 'Array convertido e arredondado';
  }

  print(conceito());
  print(somaValores(7, 2));
  print(verificarMAiorIdade('Dandy', 42));
  print(contagemRegressiva(3));
  print(converterKparaMilhas([1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]));
}

void main() {
  semRetorno();
  comRetorno();
}
