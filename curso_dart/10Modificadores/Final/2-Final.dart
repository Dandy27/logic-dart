/*
-Final 
Inicializada apenas quando acessada em tempo de execução, dee ser declarada!
Em coleções final nem todo o conteúdo será final 

*/

void main() {
  print('10.1) Modificadores Final\n');

  //? Objeto em queda livre leve 5s para chegar ao solo! Qual a velocidade maxima do objeto?

  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo; // v = g * t
  print('Velocidade máxima: $velocidade m/s\n');

  for (int i = 1; i <= 3; i++) {
    final indice = i;
    print('contagem: $indice');
  }
}
