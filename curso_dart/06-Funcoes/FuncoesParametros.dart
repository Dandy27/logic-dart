///
/// Funções com parametros posicionados devem obedecer a ordem declarada
/// Funções com parametros nomeados devem ser declarado!
/// Os parametros posicionados ou nomeados devem começar pelo ultimo parametro da função
///
///

funcaoParametros() {
  print('06.3.1) Funcoes com parametros posicionais e default\n');

  void exibirDados1(String nome, [int? peso, double? altura]) {
    print('Nome: $nome, peso: $peso\kg, altura: ${altura}');
  }

  exibirDados1('Dandy', 70);

  print('\n06.2) Funções com parametros nomeados e default\n');

  exibirDados2(String nome, {int peso = 0, double? altura}) {
    print('Nome: $nome peso: $peso altura: ${altura ?? 'Não informada'} ');
  }

  exibirDados2('Daniel', altura: 1.70);

  print('\n06.3) Funções como parametros para outras funções\n');

  void falar() {
    print(
        'Essa é uma função passada como parametro nomeado usando required null-safaty');
  }

  void comer() {
    print('Está comendo');
  }

  ///
  /// null-safaty usando o required
  ///
  void saudacao(String nome, {required Function funcaoFalar}) {
    print('Olá, eu sou $nome');
    funcaoFalar();
  }

  saudacao('Dandy', funcaoFalar: falar);
  saudacao('Dandy', funcaoFalar: () => print('Essa é uma função anonima como parametro nomeado'));
  saudacao('Doug', funcaoFalar: comer);
}

void main() {
  funcaoParametros();
}
