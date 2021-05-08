main() {
  print('03.1) Ternario\n');

  if (!true)
    // ignore: dead_code
    print('verdadeiro');
  else
    print('falso');

  // ignore: dead_code
  print('${true ? 'Verdadeiro' : 'falso'}');

  int idade = 25;

  print((idade < 14)
      ? 'Criança'
      : (idade < 18)
          ? 'Adolecente'
          : 'Adulto');

  int nota = 80;
  String resultado = (nota < 40)
      ? 'reprovado'
      : (nota < 70)
          ? 'Recuperação'
          : "Aprovado";

  print(resultado);

  int numero = 12;
  print(
      'Número: $numero é ${(numero % 2 == 0) ? 'par' : 'impar'} e ${(numero >= 0) ? 'positivo' : 'negativo'}');

  int multiplo = 5;

  print(
      'Número: $numero ${(numero % multiplo == 0) ? 'é' : 'não é'} multiplo de $multiplo');

  int ano = 2021;
  print(
      'Ano: $ano ${(ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0) ? 'é bissexto' : 'não é bissexto'}');
}
