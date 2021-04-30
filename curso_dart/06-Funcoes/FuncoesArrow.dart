///
/// Funçoes Arrow(Flecha) tem o retorno implicito!
///

funcaoArrow() {
  print('06.2) Funcões Arrow\n');

  String conceito() => 'Função Arrow com retorno implicito';

  String somarValores(int valorA, int valorB) =>
      'Soma: $valorA + $valorB = ${valorA + valorB}';

  String verificarMaioridade(String nome, int idade) =>
      (idade >= 18) ? '$nome é maior de idade' : '$nome não é maior de idade';

  String calcularAreaCirculo(double raio) =>
      'Area do Circulo: ${(3.14 * raio * raio).toStringAsFixed(2)}';

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;

  void calcularSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print('Empregado: $nome salario: $total');
  }

  print(conceito());
  print(somarValores(7, 2));
  print(verificarMaioridade('Dandy', 7));
  print(calcularAreaCirculo(3));
  calcularSalario('Dandy', 900, 100, 4);
}

void main() {
  funcaoArrow();
}
