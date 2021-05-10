/**
 * * TRATAMENTO DE EXCEÇÃO!
 *  -try: Usado para testar uma lógica.
 *  - catch: Captura erros na lógica try.
 *  - on: Captura aspecificos/conhecidos na lógica try.
 *  - thorw Exception: Exceção criada elo usuário e tratada no catch
 *  - finally: Executado ao final try/catch, com exceção ou não ! Utilizando liberar recursos na lógica try
 */

import 'dart:math';

///
///CASO1: Quando você desconhece a exceção
///
caso1() {
  print('17.0.1) Try Catch\n');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } catch (e) {
    print('Exceção: $e');
  }
}

///
///CASO2: Quando você conhece a exceção, use a claúsuala ON
///

caso2() {
  print('\n17.0.2) Try On\n');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } on IntegerDivisionByZeroException {
    print('Exceção: Não é possivel dividir por zero ');
  } catch (e) {
    print('Exceção: $e');
  }
}

///
///CASO3: Para descobrir eventos antes da exceção, us Stack
///

caso3() {
  print('\n17.0.3) Stack Trace\n');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $e');
  } catch (e, s) {
    print('Exceção: $e');
    print('Stack Trace $s');
  }
}

///
///CASO4: Use finally para tratamentos apos execução do try catch
///usada para liberar recursos ultulizados na lógica try catch
///

caso4() {
  print('\n17.0.4) Finally\n');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $e');
  } catch (e) {
    print('Exceção: $e');
  } finally {
    print('finally: Com ou sem exceção "finally" será executado');
  }
}

caso5() {
  print('\n17.0.5) Thorw Exception\n');
  try {
    int valorA = 1;
    int valorB = 0;
    double resultado = valorA / valorB;
    if (resultado.isInfinite) throw Exception('A variável valor deve ser != 0');
  } catch (e) {
    print('Exceção: $e');
  } finally {
    print('finally: Com ou sem exceção "finally" será executado');
  }
}

void main() {
  print('17.0.0) Tratamento de Exceções');

  caso1();
  caso2();
  caso3();
  caso4();
  caso5();
}
