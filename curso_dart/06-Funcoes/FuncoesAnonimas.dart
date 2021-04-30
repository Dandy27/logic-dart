///
/// Funções anonims não possem nomes!
///

funcoesAnonimas() {
  print('06.4.0) Funçoes Anonimas Conceitos\n');

  print(''' SINTXE
  (){
    print('Função Anonima!');
  }
  () => print('Função Anonima usando sintaxe Arrow!');
    
  ''');

  print('06.4.1) Funções Anonimas com Variáves\n');

  var variavelAnonima = () => print('Variável Anonima');
  variavelAnonima();

  var variavelAnonimaParametro = (String msg) => print('Variável Anonima $msg');
  variavelAnonimaParametro('com parametro');

  print('06.4.2) Funções Anonimas como Parametros\n');

  void executarFunction(Function funcao) => funcao();
  executarFunction(() => print('Função Anonima passada como parametro'));

}

void main() {
  funcoesAnonimas();
}
